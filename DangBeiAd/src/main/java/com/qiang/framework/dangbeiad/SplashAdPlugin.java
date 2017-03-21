package com.qiang.framework.dangbeiad;

import android.app.Activity;

import com.db.android.api.listener.AdListener;
import com.db.android.api.type.SplashAd;

//开屏广告
public class SplashAdPlugin {

	private static SplashAd splashAd;

	public static void show(Activity activity, AdListener adListener) {

		if(splashAd != null)
			splashAd.onClear();

		splashAd = new SplashAd(activity);
		splashAd.setmListener(adListener);

		splashAd.open();
	}

	public static void close()
	{
		if(splashAd != null)
		{
			splashAd.onClear();
			splashAd = null;
		}
	}
}
