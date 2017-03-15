package com.qiang.framework;

import android.os.Handler;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.View;

/**
 * Created by Administrator on 2017/2/22.
 */

public class DispatchKeyEvent implements Runnable {
    private View view;
    private int keyCode;

    private Handler handler;

    private boolean isUp;

    public DispatchKeyEvent(View v, int code)
    {
        this(v, code, 100);
    }

    public DispatchKeyEvent(View v, int code, long delayMillis)
    {
        view = v;
        keyCode = code;

        handler = new Handler();
        handler.postDelayed(this, delayMillis);
    }

    @Override
    public void run() {
        long downTime = SystemClock.uptimeMillis();

        KeyEvent keyEvent = new KeyEvent(downTime, downTime + 100, isUp ? KeyEvent.ACTION_UP : KeyEvent.ACTION_DOWN, keyCode, 0);
        view.dispatchKeyEvent(keyEvent);

        if(!isUp)
        {
            isUp = true;
            handler.postDelayed(this, 100);
        }
    }
}
