package com.nostalgiaemulators.nes1;

import android.os.Bundle;
import android.support.annotation.Keep;

import com.nostalgiaemulators.framework.*;
import com.nostalgiaemulators.framework.base.*;
import com.qiang.framework.helpers.*;
import com.qiang.framework.listener.*;
import com.qiang.framework.recommend.*;
import com.qiang.framework.dangbeiupdate.*;
import com.qiang.nes.BuildConfig;

import java.util.Date;

import lanchon.dexpatcher.annotation.*;

/**
 * Created by Administrator on 2017/3/15.
 */

@Keep
@DexEdit
public class NesEmulatorActivity extends EmulatorActivity {

    @DexIgnore
    public NesEmulatorActivity(){}

    @DexAdd
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        UpdatePlugin.start(this, new MyUpdateManagerListener());
    }

    class MyUpdateManagerListener implements UpdateManagerListener
    {
        @Override
        public void onNoUpdateAvailable() {

        }

        @Override
        public void onUpdateAvailable(Product product) {
            UpdateManager.start(NesEmulatorActivity.this);
        }
    }

    @DexAdd
    @Override
    public void onBackPressed()
    {
        if(getPackageName().equals("com.qiang.nes.emulator"))
            super.onBackPressed();

        if(MetaDataHelper.getBoolean("DEBUG") || MetaDataHelper.getString("UMENG_CHANNEL").equals("dangbei") || new Date().getTime() - SystemHelper.getLastUpdateTime() > 8 * 60 * 60 * 1000)
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
