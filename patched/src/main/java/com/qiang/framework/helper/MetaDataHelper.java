package com.qiang.framework.helper;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;

import com.qiang.framework.MyApplication;

/**
 * Created by Administrator on 2017/2/24.
 */

public class MetaDataHelper {
    private static Bundle metaData;

    static
    {
        try {
            Activity activity = MyApplication.getCurrentActivity();
            //ActivityInfo info = activity.getPackageManager().getActivityInfo(activity.getComponentName(), PackageManager.GET_META_DATA);
            ApplicationInfo info = activity.getPackageManager().getApplicationInfo(activity.getPackageName(), PackageManager.GET_META_DATA);
            metaData = info.metaData;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static boolean getBoolean(String key)
    {
        if(metaData == null)
            return false;

        return metaData.getBoolean(key);
    }

    public static String getString(String key)
    {
        if(metaData == null)
            return "";

        return metaData.getString(key);
    }
}
