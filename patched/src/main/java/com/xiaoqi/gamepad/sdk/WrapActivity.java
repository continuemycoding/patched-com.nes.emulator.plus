package com.xiaoqi.gamepad.sdk;

import android.content.Context;
import android.os.Bundle;

import com.xiaoqi.gamepad.sdk.input.GamepadDeviceManager;
import com.xiaoqi.gamepad.sdk.input.InputObjectFactory;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/26.
 */

@DexEdit(defaultAction = DexAction.IGNORE)
class WrapActivity {

    boolean isXperiaPlay;
    private Context mContext;
    GamepadDeviceManager mDeviceManager;

    @DexReplace
    WrapActivity(Context paramContext)
    {
        mContext = paramContext;
        mDeviceManager = InputObjectFactory.getInstance(paramContext);
        isXperiaPlay = false;
    }

    protected void onCreate() {

    }
}
