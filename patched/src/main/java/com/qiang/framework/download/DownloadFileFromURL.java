package com.qiang.framework.download;

import android.os.AsyncTask;
import android.os.Environment;

import com.qiang.framework.MyApplication;
import com.qiang.framework.helper.FileHelper;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

/**
 * Created by Lin on 2016/7/2.
 */

public class DownloadFileFromURL extends AsyncTask<DownloadItem, Integer, DownloadItem[]> {

    String downloadDirectory = Environment.getDataDirectory() + "/data/" + MyApplication.getCurrentActivity().getPackageName() + "/cache/";

    String getCachePath(String url)
    {
        return downloadDirectory + String.valueOf(url.hashCode());
    }

    /**
     * Before starting background thread
     * */
    @Override
    protected void onPreExecute()
    {
        //boolean created = FileHelper.createDirectory(downloadDirectory);
    }

    /**
     * Downloading file in background thread
     * */
    @Override
    protected DownloadItem[] doInBackground(DownloadItem...downloadItems)
    {
        for(DownloadItem item : downloadItems)
        {
            try
            {
                if(item.cached && FileHelper.isFileExists(getCachePath(item.url)))
                    continue;

                URL url = new URL(item.url);

                InputStream inputStream = new BufferedInputStream(url.openStream(), 8192);

                OutputStream outputStream = new FileOutputStream(getCachePath(item.url));
                byte data[] = new byte[1024];

                int count;
                while ((count = inputStream.read(data)) != -1)
                {
                    outputStream.write(data, 0, count);
                }

                outputStream.flush();

                outputStream.close();
                inputStream.close();
            }
            catch (Exception e)
            {
                e.printStackTrace();
                return null;
            }
        }

        return downloadItems;
    }

    /**
     * After completing background task
     * **/
    @Override
    protected void onPostExecute(DownloadItem...downloadItems)
    {
        if(downloadItems == null)
            return;

        for(DownloadItem item : downloadItems)
        {
            if(item == null)
                continue;

            item.onDownloadCompleted(getCachePath(item.url));
        }
    }
}
