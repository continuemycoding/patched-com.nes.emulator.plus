package com.nostalgiaemulators.nes1;

import com.nostalgiaemulators.framework.Emulator;
import com.nostalgiaemulators.framework.base.EmulatorActivity;
import com.nostalgiaemulators.framework.base.GameMenu;

import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/15.
 */

@DexEdit
public class NesEmulatorActivity extends EmulatorActivity {

    @DexIgnore
    public NesEmulatorActivity(){}

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
        gameMenu.getItem(R.string.game_menu_settings).setEnable(false);
    }
}
