package com.qiang.framework.helper;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Environment;
import android.widget.Toast;

import com.qiang.framework.download.ApkDownloader;
import com.qiang.framework.download.DownloadFileFromURL;
import com.qiang.framework.download.DownloadItem;
import com.qiang.framework.hook.LogHelper;
import com.qiang.framework.listener.UpdateManagerListener;
import com.qiang.framework.recommend.Product;
import com.qiang.framework.recommend.ProductManager;
import com.umeng.analytics.MobclickAgent;

public class UpdateManager
{
	public static void start(final Activity activity)
	{
		if(!SystemHelper.isWifiConnected(activity))
			return;

//		DownloadItem downloadItem = new DownloadItem()
//		{
//			@Override
//			public void onDownloadCompleted(String path)
//			{
//				String json = FileHelper.readFileToString(path);
//
//				PlayerPrefs.setString("product.json", json);
//				PlayerPrefs.save();
//			}
//		};
//
//		downloadItem.url = "http://yqlang.com:8080/aplan/product.json";
//		downloadItem.cached = false;
//
//		new DownloadFileFromURL().execute(new DownloadItem[]{downloadItem});


		//String appId = SystemHelper.getStringFromMetaData(activity, "DANGBEI_APPID");

		Product product = ProductManager.getProduct(activity.getPackageName());
		if (product == null)
			return;

		start(activity, product, SystemHelper.getVersionCode(activity));
	}

	public static void start(final Activity activity, final Product product, final int versionCode)
	{
		start(activity, product, versionCode, null);
	}

	public static void start(final Activity activity, final Product product, final int versionCode, final UpdateManagerListener updateManagerListener)
	{
		boolean selfUpdate = false;//appId.equals(SystemHelper.getStringFromMetaData(activity, "DANGBEI_APPID"));

		if(product.versionCode > versionCode)
		{
			if(updateManagerListener != null)
			{
				updateManagerListener.onUpdateAvailable(product);
				return;
			}

			//String fileName = packageName + "-" + product.versionCode + ".apk";
			String fileName = product.packageName + ".apk";
			final String path = Environment.getExternalStorageDirectory() + "/Download/" + fileName;
			if(FileHelper.isFileExists(path))
			{
				if(selfUpdate)
				{
					new AlertDialog.Builder(activity).setTitle("新版本已准备就绪，是否安装？").setNegativeButton("取消", new DialogInterface.OnClickListener()
					{
						@Override
						public void onClick(DialogInterface dialog, int which)
						{
							MobclickAgent.onEvent(activity, "installAppAlertDialog", "取消");
						}
					}).setPositiveButton("安装", new DialogInterface.OnClickListener()
					{
						@Override
						public void onClick(DialogInterface dialog, int which)
						{
							MobclickAgent.onEvent(activity, "installAppAlertDialog", "安装");
							SystemHelper.installApp(activity, path);
						}
					}).show();

					return;
				}

				SystemHelper.installApp(activity, path);
				return;
			}

			AlertDialog.Builder builder = new AlertDialog.Builder(activity);
			if(selfUpdate)
			{
				builder.setTitle("升级版本 " + SystemHelper.getVersionName(activity) + " -> " + product.versionName);
				builder.setMessage(product.releaseNote);
			}
			else
			{
				builder.setTitle("确认下载？");
			}

			builder.setNegativeButton("取消", new DialogInterface.OnClickListener()
			{
				@Override
				public void onClick(DialogInterface dialog, int which)
				{
					MobclickAgent.onEvent(activity, "downloadAppAlertDialog", "取消");
				}
			}).setPositiveButton("下载", new DialogInterface.OnClickListener()
			{
				@Override
				public void onClick(DialogInterface dialog, int which)
				{
					MobclickAgent.onEvent(activity, "downloadAppAlertDialog", "下载");
					ApkDownloader.start(activity, product);
				}
			}).show();
		}
		else
		{
			if(updateManagerListener != null)
			{
				updateManagerListener.onNoUpdateAvailable();
				return;
			}

			if(selfUpdate)
				LogHelper.info("已经是最新版本");
			else
				Toast.makeText(activity, "产品版本号不对", Toast.LENGTH_SHORT).show();
		}
	}
}
