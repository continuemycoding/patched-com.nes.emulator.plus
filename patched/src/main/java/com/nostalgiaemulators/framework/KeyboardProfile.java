package com.nostalgiaemulators.framework;

import android.support.annotation.Keep;
import android.util.SparseIntArray;
import android.view.KeyEvent;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/19.
 */

@Keep
@DexEdit
public class KeyboardProfile {
    @DexIgnore
    public SparseIntArray keyMap = new SparseIntArray();
    @DexIgnore
    public String name;

    @DexIgnore
    public KeyboardProfile(){}

    @DexReplace
    public static KeyboardProfile createDefaultProfile()
    {
        KeyboardProfile localKeyboardProfile = new KeyboardProfile();
        localKeyboardProfile.name = "default";
        localKeyboardProfile.keyMap.put(KeyEvent.KEYCODE_DPAD_UP, EmulatorController.KEY_UP);
        localKeyboardProfile.keyMap.put(KeyEvent.KEYCODE_DPAD_DOWN, EmulatorController.KEY_DOWN);
        localKeyboardProfile.keyMap.put(KeyEvent.KEYCODE_DPAD_LEFT, EmulatorController.KEY_LEFT);
        localKeyboardProfile.keyMap.put(KeyEvent.KEYCODE_DPAD_RIGHT, EmulatorController.KEY_RIGHT);
        localKeyboardProfile.keyMap.put(KeyEvent.KEYCODE_BUTTON_SELECT, EmulatorController.KEY_SELECT);
        localKeyboardProfile.keyMap.put(KeyEvent.KEYCODE_BUTTON_START, EmulatorController.KEY_START);
        localKeyboardProfile.keyMap.put(KeyEvent.KEYCODE_BUTTON_A, EmulatorController.KEY_A);
        localKeyboardProfile.keyMap.put(KeyEvent.KEYCODE_BUTTON_B, EmulatorController.KEY_B);
        localKeyboardProfile.keyMap.put(KeyEvent.KEYCODE_BUTTON_X, EmulatorController.KEY_A_TURBO);
        localKeyboardProfile.keyMap.put(KeyEvent.KEYCODE_BUTTON_Y, EmulatorController.KEY_B_TURBO);
        localKeyboardProfile.keyMap.put(100000 + KeyEvent.KEYCODE_DPAD_UP, EmulatorController.KEY_UP);
        localKeyboardProfile.keyMap.put(100000 + KeyEvent.KEYCODE_DPAD_DOWN, EmulatorController.KEY_DOWN);
        localKeyboardProfile.keyMap.put(100000 + KeyEvent.KEYCODE_DPAD_LEFT, EmulatorController.KEY_LEFT);
        localKeyboardProfile.keyMap.put(100000 + KeyEvent.KEYCODE_DPAD_RIGHT, EmulatorController.KEY_RIGHT);
        localKeyboardProfile.keyMap.put(100000 + KeyEvent.KEYCODE_BUTTON_SELECT, EmulatorController.KEY_SELECT);
        localKeyboardProfile.keyMap.put(100000 + KeyEvent.KEYCODE_BUTTON_START, EmulatorController.KEY_START);
        localKeyboardProfile.keyMap.put(100000 + KeyEvent.KEYCODE_BUTTON_A, EmulatorController.KEY_A);
        localKeyboardProfile.keyMap.put(100000 + KeyEvent.KEYCODE_BUTTON_B, EmulatorController.KEY_B);
        localKeyboardProfile.keyMap.put(100000 + KeyEvent.KEYCODE_BUTTON_X, EmulatorController.KEY_A_TURBO);
        localKeyboardProfile.keyMap.put(100000 + KeyEvent.KEYCODE_BUTTON_Y, EmulatorController.KEY_B_TURBO);
        return localKeyboardProfile;
    }

//    @DexEdit(target = "getMapping")
//    public int source_getMapping(int paramInt1, int paramInt2)
//    {
//        return 0;
//    }
//
//    @DexAdd
//    public int getMapping(int paramInt1, int paramInt2)
//    {
//        return source_getMapping(paramInt1, paramInt2);
//    }
//
//    @DexEdit(target = "setMapping")
//    void source_setMapping(int paramInt1, int paramInt2, int paramInt3){}
//
//    @DexAdd
//    void setMapping(int paramInt1, int paramInt2, int paramInt3)
//    {
//        source_setMapping(paramInt1, paramInt2, paramInt3);
//    }
}
