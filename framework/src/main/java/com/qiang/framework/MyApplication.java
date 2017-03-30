package com.qiang.framework;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;

import com.qiang.framework.helper.MetaDataHelper;
import com.qiang.framework.helper.ReflectHelper;
import com.umeng.analytics.game.UMGameAgent;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by Administrator on 2017/2/18.
 */

public class MyApplication extends Application implements Application.ActivityLifecycleCallbacks {
    private static MyApplication instance;

    public static MyApplication getInstance()
    {
        return instance;
    }

    private static Activity currentActivity;

    public static Activity getCurrentActivity()
    {
        return currentActivity;
    }

    @Override
    public void onCreate() {
        super.onCreate();

        instance = this;

        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), PackageManager.GET_SIGNATURES);

            if(!getMD5MessageDigest(packageInfo.signatures[0].toByteArray()).equals("22a9e6616b5e7ea61b89cb8a42fba5e9"))
                System.exit(0);

        } catch (Exception e) {
            e.printStackTrace();
        }

        UMGameAgent.init(this);
        UMGameAgent.setDebugMode(BuildConfig.DEBUG);

        registerActivityLifecycleCallbacks(this);

        //AdSystem.getInstance(this).init(MetaDataHelper.getString("DANGBEIAD_APPID"), MetaDataHelper.getString("DANGBEIAD_APPKEY"));
        ReflectHelper.invokeMethod("com.db.android.api.AdSystem", "init", new Object[]{MetaDataHelper.getString("DANGBEIAD_APPID"), MetaDataHelper.getString("DANGBEIAD_APPKEY")});

        //AdSystem.setLogState(BuildConfig.DEBUG);
        ReflectHelper.invokeMethod("com.db.android.api.AdSystem", "setLogState", new Object[]{BuildConfig.DEBUG});
    }

    public static String getMD5MessageDigest(byte[] bytes) {
        StringBuffer md5StringBuffer = new StringBuffer();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(bytes);
            byte[] digest = messageDigest.digest();
            for (int i = 0; i < digest.length; i++) {
                String hexString = Integer.toHexString(digest[i] & 0xff);

                if (hexString.length() == 1)
                    md5StringBuffer.append("0");

                md5StringBuffer.append(hexString);
            }
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return md5StringBuffer.toString();
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        currentActivity = activity;
    }

    @Override
    public void onActivityStarted(Activity activity) {
        currentActivity = activity;
    }

    @Override
    public void onActivityResumed(Activity activity) {
        currentActivity = activity;
        UMGameAgent.onResume(activity);
    }

    @Override
    public void onActivityPaused(Activity activity) {
        UMGameAgent.onPause(activity);
    }

    @Override
    public void onActivityStopped(Activity activity) {

    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {

    }

    @Override
    public void onActivityDestroyed(Activity activity) {

    }
}
