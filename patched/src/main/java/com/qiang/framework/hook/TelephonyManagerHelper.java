package com.qiang.framework.hook;

import android.telephony.CellInfo;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;

import java.util.List;

/**
 * Created by Administrator on 2017/2/25.
 */

public class TelephonyManagerHelper {

    public static String getDeviceSoftwareVersion(TelephonyManager telephonyManager) {
        return telephonyManager.getDeviceSoftwareVersion();
    }

    public static String getDeviceId(TelephonyManager telephonyManager) {
        return telephonyManager.getDeviceId();
    }

    public static CellLocation getCellLocation(TelephonyManager telephonyManager) {
        return telephonyManager.getCellLocation();
    }

    public static List<NeighboringCellInfo> getNeighboringCellInfo(TelephonyManager telephonyManager) {
        return telephonyManager.getNeighboringCellInfo();
    }

    public static int getPhoneType(TelephonyManager telephonyManager) {
        return telephonyManager.getPhoneType();
    }

    public static String getNetworkOperatorName(TelephonyManager telephonyManager)
    {
        return telephonyManager.getNetworkOperatorName();
    }

    public static String getNetworkOperator(TelephonyManager telephonyManager) {
        return telephonyManager.getNetworkOperator();
    }

    public static boolean isNetworkRoaming(TelephonyManager telephonyManager) {
        return telephonyManager.isNetworkRoaming();
    }

    public static String getNetworkCountryIso(TelephonyManager telephonyManager) {
        return telephonyManager.getNetworkCountryIso();
    }

    public static int getNetworkType(TelephonyManager telephonyManager) {
        return telephonyManager.getNetworkType();
    }

    public static boolean hasIccCard(TelephonyManager telephonyManager) {
        return telephonyManager.hasIccCard();
    }

    public static int getSimState(TelephonyManager telephonyManager){
        return telephonyManager.getSimState();
    }

    public static String getSimOperator(TelephonyManager telephonyManager) {
        return telephonyManager.getSimOperator();
    }

    public static String getSimOperatorName(TelephonyManager telephonyManager) {
        return telephonyManager.getSimOperatorName();
    }

    public static String getSimCountryIso(TelephonyManager telephonyManager) {
        return telephonyManager.getSimCountryIso();
    }

    public static String getSimSerialNumber(TelephonyManager telephonyManager) {
        return telephonyManager.getSimSerialNumber();
    }

    public static String getSubscriberId(TelephonyManager telephonyManager) {
        return telephonyManager.getSubscriberId();
    }

    public static String getGroupIdLevel1(TelephonyManager telephonyManager) {
        return telephonyManager.getGroupIdLevel1();
    }

    public static String getLine1Number(TelephonyManager telephonyManager) {
        return telephonyManager.getLine1Number();
    }

    public static String getVoiceMailNumber(TelephonyManager telephonyManager) {
        return telephonyManager.getVoiceMailNumber();
    }

    public static String getVoiceMailAlphaTag(TelephonyManager telephonyManager) {
        return telephonyManager.getVoiceMailAlphaTag();
    }

    public static int getCallState(TelephonyManager telephonyManager) {
        return telephonyManager.getCallState();
    }

    public static int getDataActivity(TelephonyManager telephonyManager) {
        return telephonyManager.getDataActivity();
    }

    public static int getDataState(TelephonyManager telephonyManager) {
        return telephonyManager.getDataState();
    }

    public static void listen(TelephonyManager telephonyManager, PhoneStateListener listener, int events) {
        telephonyManager.listen(listener, events);
    }

    public static List<CellInfo> getAllCellInfo(TelephonyManager telephonyManager) {
        return telephonyManager.getAllCellInfo();
    }

    public static String getMmsUserAgent(TelephonyManager telephonyManager) {
        return telephonyManager.getMmsUserAgent();
    }

    public static String getMmsUAProfUrl(TelephonyManager telephonyManager) {
        return telephonyManager.getMmsUAProfUrl();
    }
}
