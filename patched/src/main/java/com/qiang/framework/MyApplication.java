package com.qiang.framework;

import android.app.Activity;
import android.app.Application;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.os.Bundle;
import android.telephony.TelephonyManager;

import com.umeng.analytics.game.UMGameAgent;

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

        registerActivityLifecycleCallbacks(this);
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        currentActivity = activity;
        UMGameAgent.init(activity);
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
