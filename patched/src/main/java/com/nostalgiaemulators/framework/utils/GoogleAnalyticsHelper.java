package com.nostalgiaemulators.framework.utils;

import android.app.Activity;

import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/17.
 */

@DexReplace
public class GoogleAnalyticsHelper {
    private static GoogleAnalyticsHelper instance;

    private GoogleAnalyticsHelper(Activity paramActivity){}

    public static GoogleAnalyticsHelper getInstance(Activity paramActivity)
    {
        if (instance == null)
            instance = new GoogleAnalyticsHelper(paramActivity);

        return instance;
    }

    public static void sEndSession(String paramString) {}

    public static void sSendEvent(String paramString1, String paramString2, String paramString3, long paramLong){}

    public static void sSendScreenView(String paramString){}

    public static void sSendUserTimings(long paramLong1, String paramString1, long paramLong2, String paramString2, String paramString3){}

    public static void sSignInWithUser(String paramString1, String paramString2, String paramString3, long paramLong){}

    public static void sStartSession(String paramString){}
}
