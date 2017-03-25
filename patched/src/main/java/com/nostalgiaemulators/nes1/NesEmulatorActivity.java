package com.nostalgiaemulators.nes1;

import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nostalgiaemulators.framework.Emulator;
import com.nostalgiaemulators.framework.base.EmulatorActivity;
import com.nostalgiaemulators.framework.base.GameMenu;
import com.qiang.framework.helper.MetaDataHelper;
import com.qiang.framework.helper.SystemHelper;
import com.qiang.framework.recommend.RecommendManager;
import com.xiaoqi.gamepad.sdk.Gamepad;
import com.xiaoqi.gamepad.sdk.GamepadListener;
import com.xiaoqi.gamepad.sdk.event.AxisEvent;
import com.xiaoqi.gamepad.sdk.event.ButtonEvent;
import com.xiaoqi.gamepad.sdk.event.StateEvent;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/15.
 */

@DexEdit(defaultAction = DexAction.IGNORE)
public class NesEmulatorActivity extends EmulatorActivity {

    @DexAdd
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);

        Gamepad.init(this);
        Gamepad.addListener(new GamepadEventListener());
    }

    class GamepadEventListener implements GamepadListener {

        private Gson gson = new GsonBuilder().create();

        private Toast toast = Toast.makeText(NesEmulatorActivity.this, "", Toast.LENGTH_LONG);

        @Override
        public void onAxisEvent(AxisEvent axisEvent) {
            Log.i("GamepadActivity", gson.toJson(axisEvent));
            toast.setText(gson.toJson(axisEvent));
            toast.show();
        }

        @Override
        public void onButtonEvent(ButtonEvent buttonEvent) {
            Log.i("GamepadActivity", gson.toJson(buttonEvent));
            toast.setText(gson.toJson(buttonEvent));
            toast.show();
        }

        @Override
        public void onStateEvent(StateEvent stateEvent) {
            Log.i("GamepadActivity", stateEvent.toString());
            toast.setText(stateEvent.toString());
            toast.show();
        }
    }


    @DexAdd
    @Override
    public void onBackPressed()
    {
        if(MetaDataHelper.getString("UMENG_CHANNEL").equals("dangbei"))
            RecommendManager.showDialog(this);
        else
            SystemHelper.showQuitDialog(this);
    }

    @DexIgnore
    @Override
    public Emulator getEmulatorInstance() {
        return null;
    }

    @DexReplace
    @Override
    public void onGameMenuPrepare(GameMenu gameMenu)
    {
        gameMenu.add(R.string.game_menu_reset, R.drawable.ic_reset);
        gameMenu.add(R.string.game_menu_save, R.drawable.ic_save);
        gameMenu.add(R.string.game_menu_load, R.drawable.ic_load);
        gameMenu.add(R.string.game_menu_settings, R.drawable.ic_game_settings);
        //gameMenu.getItem(R.string.game_menu_settings).setEnable(false);
    }
}
