package com.nostalgiaemulators.framework.ui.preferences;

import android.preference.PreferenceActivity;

import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/16.
 */

@DexEdit
public class GeneralPreferenceActivity extends PreferenceActivity {
    @DexIgnore
    public GeneralPreferenceActivity(){}

    @DexReplace
    @Override
    protected void onPause()
    {
        super.onPause();
    }

    @DexReplace
    @Override
    protected void onResume()
    {
        super.onResume();
    }
}
