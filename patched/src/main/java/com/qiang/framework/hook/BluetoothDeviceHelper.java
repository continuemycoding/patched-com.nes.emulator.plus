package com.qiang.framework.hook;

import android.bluetooth.BluetoothDevice;

/**
 * Created by Administrator on 2017/2/25.
 */

public class BluetoothDeviceHelper {
    public static String getAddress(BluetoothDevice bluetoothDevice) {
        return bluetoothDevice.getAddress();
    }
}
