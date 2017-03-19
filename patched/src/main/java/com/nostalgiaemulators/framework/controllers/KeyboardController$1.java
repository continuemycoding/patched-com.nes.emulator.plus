package com.nostalgiaemulators.framework.controllers;

import android.view.KeyEvent;
import android.view.View;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;

/**
 * Created by Administrator on 2017/3/20.
 */

@DexEdit
public class KeyboardController$1 extends View {

    @DexIgnore
    public KeyboardController$1(){
        super(null);
    }

    @DexEdit(target = "onKeyDown")
    public boolean source_onKeyDown(int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
        return false;
    }

    @DexAdd
    public boolean onKeyDown(int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
        if(paramAnonymousInt == KeyEvent.KEYCODE_DPAD_CENTER)
            paramAnonymousInt = KeyEvent.KEYCODE_BUTTON_A;

        return source_onKeyDown(paramAnonymousInt, paramAnonymousKeyEvent);
    }
}
