package com.nostalgiaemulators.framework.ui.preferences;

import android.os.Bundle;
import android.preference.PreferenceFragment;
import android.support.annotation.Keep;

import com.qiang.nes.R;

import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/3/16.
 */

@Keep
@DexEdit
public class GeneralPreferenceFragment extends PreferenceFragment {
    @DexIgnore
    public GeneralPreferenceFragment(){}

    @DexReplace
    @Override
    public void onCreate(Bundle paramBundle)
    {
        super.onCreate(paramBundle);
        addPreferencesFromResource(R.xml.general_preferences);
    }
}
