package com.qiang.framework.recommend;

import android.app.Activity;

import com.qiang.framework.helper.SystemHelper;

public class RecommendManager
{
	public static void showDialog(final Activity activity)
	{
		if(!SystemHelper.isWifiConnected(activity))
		{
			SystemHelper.showQuitDialog(activity);
			return;
		}

		for (Product product : ProductManager.getProducts())
		{
			if(!product.recommend || SystemHelper.isAppInstalled(activity, product.packageName))
				continue;

			SystemHelper.showCustomQuitDialog(activity, product);

			return;
		}

		SystemHelper.showQuitDialog(activity);
	}

	public void showMoreGames(final Activity activity)
	{
		if(!SystemHelper.isWifiConnected(activity))
			SystemHelper.showText(activity, "您当前在非wifi状态下，请谨慎操作");


	}
}
