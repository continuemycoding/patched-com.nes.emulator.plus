package com.qiang.framework.hook;

import android.net.wifi.WifiInfo;

/**
 * Created by Administrator on 2017/2/25.
 */

public class WifiInfoHelper {
    public String getMacAddress(WifiInfo wifiInfo)
    {
        return wifiInfo.getMacAddress();
    }
}
