package com.qiang.framework.dangbeiad;

import android.app.Activity;
import android.util.Log;

import com.db.android.api.listener.AdListener;
import com.db.android.api.type.ScreenAd;

//屏保广告
public class ScreenAdPlugin {

	private static ScreenAd screenAd;

	public static void show(Activity activity, AdListener adListener) {

		if(screenAd != null)
			screenAd.onClear();

		screenAd = new ScreenAd(activity);
		screenAd.setmListener(adListener);

		screenAd.open();
	}

	public static void close()
	{
		if(screenAd != null)
		{
			screenAd.onClear();
			screenAd = null;
		}
	}
}
