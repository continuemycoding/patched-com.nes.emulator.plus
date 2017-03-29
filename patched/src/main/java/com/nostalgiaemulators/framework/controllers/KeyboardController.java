package com.nostalgiaemulators.framework.controllers;

import android.content.Context;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;

import com.nostalgiaemulators.framework.Emulator;
import com.nostalgiaemulators.framework.EmulatorController;
import com.nostalgiaemulators.framework.ui.gamegallery.GameDescription;
import com.qiang.framework.helper.MetaDataHelper;

import lanchon.dexpatcher.annotation.*;

/**
 * Created by Administrator on 2017/3/30.
 */

@DexEdit(defaultAction = DexAction.IGNORE)
public class KeyboardController implements EmulatorController {

    private Emulator emulator;

    private Context context;

    @DexAdd
    public int mapKey(int keyCode)
    {
        if(keyCode < 0 || keyCode >= 128)
            return 0;

        int[] keys = new int[128];

        keys[KeyEvent.KEYCODE_DPAD_UP] = 16;//EmulatorController.KEY_UP;
        keys[KeyEvent.KEYCODE_DPAD_DOWN] = 32;//EmulatorController.KEY_DOWN;
        keys[KeyEvent.KEYCODE_DPAD_LEFT] = 64;//EmulatorController.KEY_LEFT;
        keys[KeyEvent.KEYCODE_DPAD_RIGHT] = 128;//EmulatorController.KEY_RIGHT;
        keys[KeyEvent.KEYCODE_BUTTON_SELECT] = 4;//EmulatorController.KEY_SELECT;
        keys[KeyEvent.KEYCODE_BUTTON_START] = 8;//EmulatorController.KEY_START;
        keys[KeyEvent.KEYCODE_BUTTON_A] = 1;//EmulatorController.KEY_A;
        keys[KeyEvent.KEYCODE_BUTTON_B] = 2;//EmulatorController.KEY_B;
        keys[KeyEvent.KEYCODE_BUTTON_X] = 1001;//EmulatorController.KEY_A_TURBO;
        keys[KeyEvent.KEYCODE_BUTTON_Y] = 1002;//EmulatorController.KEY_B_TURBO;

        return keys[keyCode];
    }

    @DexAdd
    public void setKeyPressed(boolean isPlayer2, int keyCode, boolean isKeyDown)
    {
        emulator.setKeyPressed(isPlayer2 ? 1 : 0, mapKey(keyCode), isKeyDown);
    }

    class KeyboardView extends View {

        private int[] players = new int[2];

        public KeyboardView(Context context){
            super(context);
        }

        private boolean isPlayer2(InputEvent event)
        {
            if(!MetaDataHelper.getBoolean("multiplayer"))
                return false;

            if ((event.getSource() & InputDevice.SOURCE_JOYSTICK) == 0 && (event.getSource() & (InputDevice.SOURCE_GAMEPAD)) == 0)
                return false;

            int playerIndex = -1;

            for(int i=0;i<players.length;i++)
            {
                if(players[i] == 0)
                    players[i] = event.getDeviceId();

                if(players[i] == event.getDeviceId())
                {
                    playerIndex = i;
                    break;
                }
            }

            return playerIndex == 1;
        }

        @Override
        public boolean onGenericMotionEvent(MotionEvent event)
        {
            float xAxisValue = event.getAxisValue(MotionEvent.AXIS_X);
            float yAxisValue = event.getAxisValue(MotionEvent.AXIS_Y);

            boolean isPlayer2 = isPlayer2(event);

            boolean processed = false;

            if(xAxisValue < -0.5f)
            {
                setKeyPressed(isPlayer2, KeyEvent.KEYCODE_DPAD_LEFT, true);
                processed = true;
            }
            else if(xAxisValue > 0.5f)
            {
                setKeyPressed(isPlayer2, KeyEvent.KEYCODE_DPAD_RIGHT, true);
                processed = true;
            }
            else if(Math.abs(xAxisValue) < 0.2f)
            {
                setKeyPressed(isPlayer2, KeyEvent.KEYCODE_DPAD_LEFT, false);
                setKeyPressed(isPlayer2, KeyEvent.KEYCODE_DPAD_RIGHT, false);
                processed = true;
            }

            if(yAxisValue < -0.5f)
            {
                setKeyPressed(isPlayer2, KeyEvent.KEYCODE_DPAD_UP, true);
                processed = true;
            }
            else if(yAxisValue > 0.5f)
            {
                setKeyPressed(isPlayer2, KeyEvent.KEYCODE_DPAD_DOWN, true);
                processed = true;
            }
            else if(Math.abs(yAxisValue) < 0.2f)
            {
                setKeyPressed(isPlayer2, KeyEvent.KEYCODE_DPAD_UP, false);
                setKeyPressed(isPlayer2, KeyEvent.KEYCODE_DPAD_DOWN, false);
                processed = true;
            }

            if(processed)
                return true;

            return super.onGenericMotionEvent(event);
        }

        @Override
        public boolean onKeyDown(int keyCode, KeyEvent event)
        {
            if(mapKey(keyCode) == 0)
                return false;

            setKeyPressed(isPlayer2(event), keyCode, true);

            return true;
        }

        @Override
        public boolean onKeyUp(int keyCode, KeyEvent event)
        {
            if(mapKey(keyCode) == 0)
                return false;

            setKeyPressed(isPlayer2(event), keyCode, false);

            return true;
        }
    }

    @Override
    public void connectToEmulator(int i, Emulator emulator) {

    }

    @DexReplace
    @Override
    public View getView() {
        return new KeyboardView(context);
    }

    @Override
    public void onDestroy() {

    }

    @Override
    public void onGamePaused(GameDescription gameDescription) {

    }

    @Override
    public void onGameStarted(GameDescription gameDescription) {

    }

    @Override
    public void onPause() {

    }

    @Override
    public void onResume() {

    }

    @Override
    public void onWindowFocusChanged(boolean b) {

    }
}
