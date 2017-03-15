package com.qiang.framework.download;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.widget.Toast;

import com.umeng.analytics.MobclickAgent;
import com.qiang.framework.hook.LogHelper;
import com.qiang.framework.helper.SystemHelper;
import com.qiang.framework.recommend.Product;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Lin on 2016/7/5.
 */
public class ApkDownloader
{
    private static boolean hasRegisterReceiver = false;

    private static Map<Long, String> map = new HashMap();

    public static long start(Context context, final Product product)
    {
        final DownloadManager.Request request = new DownloadManager.Request(Uri.parse(product.url));

        request.setDestinationInExternalPublicDir("/download/", product.packageName + ".apk");
        request.setTitle(product.name);

        final DownloadManager downloadManager = (DownloadManager) context.getSystemService(Context.DOWNLOAD_SERVICE);

        final long requestId = downloadManager.enqueue(request);
        map.put(requestId, Environment.getExternalStorageDirectory() + "/download/" + product.packageName + ".apk");

        if(queryDownloadStatus(context, requestId) == DownloadManager.STATUS_RUNNING)
        {
            Toast.makeText(context, "正在下载", Toast.LENGTH_SHORT).show();
            return requestId;
        }

        if(!hasRegisterReceiver)
        {
            context.registerReceiver(new BroadcastReceiver()
            {
                @Override
                public void onReceive(Context context, Intent intent)
                {
                    LogHelper.info(intent.toString());

                    switch (queryDownloadStatus(context, requestId))
                    {
                        case DownloadManager.STATUS_FAILED:
                            Toast.makeText(context, "下载失败", Toast.LENGTH_SHORT).show();
                            MobclickAgent.onEvent(context, "ApkDownloaderFailed", product.name);
                            break;

                        case DownloadManager.STATUS_PAUSED:
                            Toast.makeText(context, "下载暂停", Toast.LENGTH_SHORT).show();
                            MobclickAgent.onEvent(context, "ApkDownloaderPaused", product.name);
                            break;

                        case DownloadManager.STATUS_PENDING:
                            Toast.makeText(context, "下载延迟", Toast.LENGTH_SHORT).show();
                            MobclickAgent.onEvent(context, "ApkDownloaderPending", product.name);
                            break;

                        case DownloadManager.STATUS_RUNNING:
                            Toast.makeText(context, "正在下载", Toast.LENGTH_SHORT).show();
                            MobclickAgent.onEvent(context, "ApkDownloaderRunning", product.name);
                            break;

                        case DownloadManager.STATUS_SUCCESSFUL:
                            Toast.makeText(context, "下载完成", Toast.LENGTH_SHORT).show();
                            MobclickAgent.onEvent(context, "ApkDownloaderSuccessful", product.name);

                            //Uri uri = downloadManager.getUriForDownloadedFile(requestId);
                            String path = map.get(requestId);
                            SystemHelper.installApp(context, path);
                            break;
                    }
                }
            }, new IntentFilter(DownloadManager.ACTION_DOWNLOAD_COMPLETE));

            hasRegisterReceiver = true;
        }

        Toast.makeText(context, "开始下载", Toast.LENGTH_SHORT).show();

        return requestId;
    }

    public static int queryDownloadStatus(Context context, long requestId)
    {
        DownloadManager.Query query = new DownloadManager.Query();
        query.setFilterById(requestId);

        DownloadManager downloadManager = (DownloadManager) context.getSystemService(Context.DOWNLOAD_SERVICE);
        Cursor cursor = downloadManager.query(query);
        if (cursor.moveToFirst())
            return cursor.getInt(cursor.getColumnIndex(DownloadManager.COLUMN_STATUS));

        return 0;
    }
}
