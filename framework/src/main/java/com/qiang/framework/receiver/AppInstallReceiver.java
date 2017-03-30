package com.qiang.framework.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.widget.Toast;

import com.qiang.framework.hook.LogHelper;
import com.umeng.analytics.MobclickAgent;
import com.qiang.framework.helper.FileHelper;
import com.qiang.framework.recommend.Product;
import com.qiang.framework.recommend.ProductManager;

/**
 * Created by Lin on 2016/7/12.
 */
public class AppInstallReceiver extends BroadcastReceiver
{
    @Override
    public void onReceive(final Context context, Intent intent)
    {
        if (intent.getAction().equals(Intent.ACTION_PACKAGE_ADDED))
        {
            String packageName = intent.getData().getSchemeSpecificPart();

            LogHelper.info("PACKAGE_ADDED " + packageName);

//            if(!SystemHelper.isAppOnForeground(context))
//            {
//                new Handler().postDelayed(new Runnable() {
//
//                    @Override
//                    public void run()
//                    {
//                        Debug.log("Run App On Foreground");
//                        SystemHelper.launchApp(context);
//                    }
//                }, 3000);
//            }

            Product product = ProductManager.getProduct(packageName);
            if(product == null)
                return;

            Toast.makeText(context, product.name + " 安装成功", Toast.LENGTH_LONG).show();
            MobclickAgent.onEvent(context, "PACKAGE_ADDED", product.name);

            String fileName = packageName + ".apk";
            final String path = Environment.getExternalStorageDirectory() + "/Download/" + fileName;

            FileHelper.deleteFile(path);
        }
    }
}
