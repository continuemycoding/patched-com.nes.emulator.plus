package com.nostalgiaemulators.nes1;

import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;

import com.db.android.api.listener.AdListener;
import com.nostalgiaemulators.framework.Emulator;
import com.nostalgiaemulators.framework.base.EmulatorActivity;
import com.nostalgiaemulators.framework.base.GameMenu;
import com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity;
import com.nostalgiaemulators.framework.ui.gamegallery.GameDescription;
import com.qiang.framework.BuildConfig;
import com.qiang.framework.dangbeiad.SplashAdPlugin;
import com.qiang.framework.helper.FileHelper;
import com.qiang.framework.helper.MetaDataHelper;

import net.youmi.android.AdManager;

import java.io.File;
import java.util.Set;

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;

/**
 * Created by Administrator on 2017/3/16.
 */

@DexEdit //(staticConstructorAction = DexAction.IGNORE)
public class NesGalleryActivity extends GalleryActivity{

    @DexAdd
    boolean isAdOpening;

    @DexIgnore
    public NesGalleryActivity(){}

    @DexAdd
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);

        AdManager.getInstance(this).init(MetaDataHelper.getString("YOUMI_APPID"), MetaDataHelper.getString("YOUMI_APPKEY"), MetaDataHelper.getString("UMENG_CHANNEL").equals("youmi"), BuildConfig.DEBUG);

        if(!getPackageName().equals("com.qiang.nes.emulator"))
        {
            SplashAdPlugin.show(this, new SplashAdListener());
        }
    }

    @DexAdd
    @Override
    public void onBackPressed()
    {
        if(!isAdOpening)
            super.onBackPressed();
    }

    class SplashAdListener extends AdListener
    {
        @Override
        public void onAdOpened(boolean isSuccess) {
            if (isSuccess) {
                isAdOpening = true;
            }else{
                startNesEmulatorActivity();
            }
        }

        @Override
        public void onAdCloseed() {
            isAdOpening = false;
            startNesEmulatorActivity();
        }
    }

    @DexAdd
    void startNesEmulatorActivity()
    {
        String path = Environment.getDataDirectory() + "/data/" + getPackageName() + "/game.zip";
        FileHelper.copyResource(this, com.qiang.nes.R.raw.game, path);

        Intent intent = new Intent(this, NesEmulatorActivity.class);
        intent.putExtra("game", new GameDescription(new File(path)));
        intent.putExtra("slot", 0);
        intent.putExtra("fromGallery", true);
        startActivityForResult(intent, 0);
    }

    @DexAdd
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(!getPackageName().equals("com.qiang.nes.emulator"))
        {
            finish();
            System.exit(0);
        }
    }

    @DexAdd
    @Override
    public void onGameMenuPrepare(GameMenu gameMenu)
    {
        gameMenu.add(R.string.gallery_menu_download, R.drawable.ic_file_download);
        //gameMenu.add(R.string.gallery_menu_language, R.drawable.ic_language);
        //if (Utils.getDeviceType(this) == Utils.ServerType.mobile) {
        //    gameMenu.add(R.string.gallery_menu_remote_control, R.drawable.ic_gamepad);
        //}
        gameMenu.add(R.string.gallery_menu_reload, R.drawable.ic_reset);
        //gameMenu.add(R.string.gallery_menu_load_from_dir, R.drawable.ic_folder);
        gameMenu.add(R.string.gallery_menu_pref, R.drawable.ic_game_settings);
        //gameMenu.add(R.string.gallery_menu_recommend, R.drawable.ic_recommend);
        //gameMenu.add(R.string.gallery_menu_rate_us, R.drawable.ic_star);
        //gameMenu.add(R.string.gallery_menu_help, R.drawable.ic_help_mnu);
    }

    @DexIgnore
    public Class<? extends EmulatorActivity> getEmulatorActivityClass(){
        return null;
    }

    @DexIgnore
    public Emulator getEmulatorInstance() {
        return null;
    }

    @DexIgnore
    protected Set<String> getRomExtensions(){
        return null;
    }
}
