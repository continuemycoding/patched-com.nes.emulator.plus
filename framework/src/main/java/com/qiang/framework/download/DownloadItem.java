package com.qiang.framework.download;

/**
 * Created by Lin on 2016/7/2.
 */
public abstract class DownloadItem
{
    public String url;
    public boolean cached = true;

    public abstract void onDownloadCompleted(String path);
}
