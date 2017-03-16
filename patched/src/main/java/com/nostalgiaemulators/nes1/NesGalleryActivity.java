package com.nostalgiaemulators.nes1;

import com.nostalgiaemulators.framework.Emulator;
import com.nostalgiaemulators.framework.base.EmulatorActivity;
import com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity;

import java.util.Set;

import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;

/**
 * Created by Administrator on 2017/3/16.
 */

@DexEdit
public class NesGalleryActivity extends GalleryActivity{

    @DexIgnore
    public NesGalleryActivity(){}

    @DexIgnore
    @Override
    public Class<? extends EmulatorActivity> getEmulatorActivityClass() {
        return null;
    }

    @DexIgnore
    @Override
    public Emulator getEmulatorInstance() {
        return null;
    }

    @DexIgnore
    @Override
    protected Set<String> getRomExtensions() {
        return null;
    }
}
