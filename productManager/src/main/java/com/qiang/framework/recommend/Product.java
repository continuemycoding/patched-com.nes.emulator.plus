package com.qiang.framework.recommend;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 * Created by Lin on 2016/7/2.
 */
public class Product
{
    private static Gson gson = new GsonBuilder().setPrettyPrinting().create();

    public String name;
    public String appname;//当贝
    public String packageName;
    public String app_packagename;//当贝
    public int dangbei_appId;
    public String versionName;
    public String app_version;//当贝
    public int versionCode;
    public int app_code;//当贝
    public String url;
    public String download_url;//当贝
    public String releaseNote;
    public String app_updateinfo;//当贝
    public String[] screenshotUrls;
    public String app_scanimg;//当贝

    public boolean multiplayer;
    public String app_type;
    public int recommend;

    @Override
    public String toString()
    {
        return gson.toJson(this);
    }
}
