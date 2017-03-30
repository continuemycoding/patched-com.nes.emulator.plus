package com.qiang.framework.hook;

import android.bluetooth.BluetoothAdapter;

/**
 * Created by Administrator on 2017/2/25.
 */

public class BluetoothAdapterHelper {
    public static String getAddress(BluetoothAdapter bluetoothAdapter) {
        return bluetoothAdapter.getAddress();
    }
}
