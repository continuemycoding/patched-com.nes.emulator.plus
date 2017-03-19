package com.qiang.framework.helper;

/**
 * Created by Administrator on 2017/2/25.
 */

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.Application;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.qiang.framework.MyApplication;
import com.qiang.framework.download.ApkDownloader;
import com.umeng.analytics.MobclickAgent;
import com.qiang.framework.download.DownloadFileFromURL;
import com.qiang.framework.download.DownloadItem;
import com.qiang.framework.listener.UpdateManagerListener;
import com.qiang.framework.recommend.Product;

import org.apache.commons.lang3.RandomUtils;

import java.lang.reflect.Method;
import java.util.List;
import java.util.Random;

/**
 * Created by Lin on 2016/7/2.
 */
public class SystemHelper
{
    private static Application application;

    static
    {
//        final Class<?> activityThreadClass;
//        try
//        {
//            activityThreadClass = Class.forName("android.app.ActivityThread");
//            final Method method = activityThreadClass.getMethod("currentApplication");
//            application = (Application) method.invoke(null, (Object[]) null);
//        }
//        catch (Exception e)
//        {
//            e.printStackTrace();
//        }

        application = MyApplication.getInstance();
    }

    /**
     * 程序是否在前台运行
     *
     * @return
     */
    public static boolean isAppOnForeground(Context context)
    {
        ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService(Context.ACTIVITY_SERVICE);
        String packageName = context.getApplicationContext().getPackageName();

        List<ActivityManager.RunningAppProcessInfo> appProcesses = activityManager.getRunningAppProcesses();
        if (appProcesses == null)
            return false;

        for (ActivityManager.RunningAppProcessInfo appProcess : appProcesses)
        {
            if (appProcess.processName.equals(packageName) && appProcess.importance == ActivityManager.RunningAppProcessInfo.IMPORTANCE_FOREGROUND)
            {
                return true;
            }
        }

        return false;
    }

    public static int getResourceIdentifier(Context context, String name, String defType)
    {
        return context.getResources().getIdentifier(name, defType, context.getPackageName());
    }

    public static boolean isWifiConnected(Context context)
    {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo networkInfo = connectivityManager.getActiveNetworkInfo();
        if(networkInfo == null)
            return false;

        return networkInfo.getType() == ConnectivityManager.TYPE_WIFI || networkInfo.getType() == ConnectivityManager.TYPE_ETHERNET;
    }

    public static boolean isAppInstalled(Context context, String packageName)
    {
        try
        {
            context.getPackageManager().getApplicationInfo(packageName, 0);
            return true;
        }
        catch (PackageManager.NameNotFoundException e)
        {
            return false;
        }
    }

    public static void installApp(Context context, String path)
    {
        installApp(context, Uri.parse("file://" + path));
    }

    public static void installApp(Context context, Uri uri)
    {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setDataAndType(uri, "application/vnd.android.package-archive");
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        context.startActivity(intent);
    }

    public static void launchApp(Context context,String packageName)
    {
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.setPackage(packageName);

        List<ResolveInfo> resolveInfos = context.getPackageManager().queryIntentActivities(intent, 0);
        if(!resolveInfos.iterator().hasNext())
            return;

        ResolveInfo resolveInfo = resolveInfos.iterator().next();
        if (resolveInfo == null)
            return;

        //String packageName = ri.activityInfo.packageName;
        String className = resolveInfo.activityInfo.name;

        Intent launcherIntent = new Intent(Intent.ACTION_MAIN);
        launcherIntent.addCategory(Intent.CATEGORY_LAUNCHER);

        ComponentName cn = new ComponentName(packageName, className);
        launcherIntent.setComponent(cn);

        launcherIntent.putExtra("launchFlag", true);
        context.startActivity(launcherIntent);
    }

    public static void launchApp(Context context)
    {
        launchApp(context, context.getPackageName());
    }

    public static String getPackageName(Context context)
    {
        return context.getPackageName();
    }

    public static String getVersionName(Context context)
    {
        return getVersionName(context, context.getPackageName());
    }

    public static String getVersionName(Context context, String packageName)
    {
        try
        {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            return packageInfo.versionName;
        }
        catch (PackageManager.NameNotFoundException e)
        {
            e.printStackTrace();
        }

        return "";
    }

    public static int getVersionCode(Context context)
    {
        return getVersionCode(context, context.getPackageName());
    }

    public static int getVersionCode(Context context, String packageName)
    {
        try
        {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            return packageInfo.versionCode;
        }
        catch (PackageManager.NameNotFoundException e)
        {
            e.printStackTrace();
        }

        return 0;
    }

    public static void downloadDangbeiMarket(final Activity activity)
    {
        Product market = new Product();
        market.name = "当贝市场";
        market.packageName = "com.dangbeimarket";
        market.url = "https://dl.dangcdn.com/apk/dangbeimarket_3.9.8_0207_znds.apk";
        market.versionName = "3.9.8";
        market.versionCode = 112;

        UpdateManager.start(activity, market, 0);
    }

    public static void showQuitDialog(final Activity activity)
    {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setMessage("退出游戏?")
                //.setCancelable(false)
                .setPositiveButton("确定", new DialogInterface.OnClickListener()
                {
                    public void onClick(DialogInterface dialog, int id)
                    {
                        activity.finish();
                    }
                })
                .setNegativeButton("取消", null);
        AlertDialog alert = builder.create();
        alert.show();
    }

    public static void showCustomQuitDialog(final Activity activity, final Product product)
    {
        final Dialog dialog = new AlertDialog.Builder(activity).create();
        dialog.show();

        String layoutName = "recommend_dialog";

        LinearLayout dialogLayout = (LinearLayout) LayoutInflater.from(activity).inflate(SystemHelper.getResourceIdentifier(activity, layoutName, "layout"), null);
        dialog.setContentView(dialogLayout);
        dialog.setOnCancelListener(new DialogInterface.OnCancelListener()
        {
            @Override
            public void onCancel(DialogInterface dialog)
            {

            }
        });

        TextView titleTextView = (TextView) dialog.findViewById(SystemHelper.getResourceIdentifier(activity, "recommend_dialog_title", "id"));
        titleTextView.setText("试试我们推荐的 " + product.name + " ？");

        final Button imageButton = (Button) dialog.findViewById(SystemHelper.getResourceIdentifier(activity, "recommend_dialog_image", "id"));

        imageButton.setWidth(SystemHelper.dip2px(activity, 320.0F));
        imageButton.setHeight(SystemHelper.dip2px(activity, 90.0F));

        DownloadItem downloadItem = new DownloadItem()
        {
            @Override
            public void onDownloadCompleted(String path)
            {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN)
                    imageButton.setBackground(Drawable.createFromPath(path));
                else
                    imageButton.setBackgroundDrawable(Drawable.createFromPath(path));
            }
        };
        downloadItem.url = product.screenshotUrls[RandomUtils.nextInt(0, product.screenshotUrls.length)];

        new DownloadFileFromURL().execute(new DownloadItem[]{downloadItem});

        Button confirmButton = (Button) dialog.findViewById(SystemHelper.getResourceIdentifier(activity, "recommend_dialog_confirm", "id"));
        confirmButton.setText("退出");

        Button cancelButton = (Button) dialog.findViewById(SystemHelper.getResourceIdentifier(activity, "recommend_dialog_cancel", "id"));
        cancelButton.setText("再玩玩");

        imageButton.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                dialog.dismiss();

                //UpdateManager.start(activity, product, 0);

                if(!isAppInstalled(activity, "com.dangbeimarket"))
                {
                    showText(activity, "请先安装当贝电视应用市场");

                    downloadDangbeiMarket(activity);
                }
                else
                {
                    try {
                        Intent intent = new Intent(Intent.ACTION_MAIN);
                        //intent.addCategory(Intent.CATEGORY_LAUNCHER);
                        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK);
                        intent.putExtra("detail_url", "http://api.dangbei.net/dbapinew/view.php?id=" + product.dangbei_appId);
                        ComponentName cn = new ComponentName("com.dangbeimarket", "com.dangbeimarket.activity.NewDetailActivity");
                        intent.setComponent(cn);
                        activity.startActivity(intent);
                    }
                    catch (Exception e)
                    {
                        e.printStackTrace();

                        UpdateManager.start(activity, product, 0);
                    }
                }
            }
        });

        confirmButton.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                dialog.dismiss();
                activity.finish();
            }
        });

        cancelButton.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                dialog.dismiss();
            }
        });
    }

    public static String getStringFromMetaData(Context context, String key)
    {
        try
        {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), PackageManager.GET_META_DATA);
            return applicationInfo.metaData.getString(key);
        }
        catch (PackageManager.NameNotFoundException e)
        {
            e.printStackTrace();
        }

        return "";
    }

    public static int dip2px(Context context, float dipValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (dipValue * scale + 0.5f);
    }

    public static int px2dip(Context context, float pxValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (pxValue / scale + 0.5f);
    }

    //获取随机经度
    public static double getRandomLongitude()
    {
        Random random = new Random();

        return random.nextDouble() * 360 - 180;
    }

    //获取随机纬度
    public static double getRandomLatitude()
    {
        Random random = new Random();

        return random.nextDouble() * 180 - 90;
    }

    public static String getNetworkOperatorName(Context context)
    {
        return ((TelephonyManager)context.getSystemService(Context.TELEPHONY_SERVICE)).getNetworkOperatorName();
    }

    public static String getRandomNetworkOperatorName()
    {
        Random random = new Random();

        int value = random.nextInt(3);
        switch (value)
        {
            case 0:
                return "中国移动";

            case 1:
                return "中国联通";

            case 2:
                return "中国电信";

            default:
                return "";
        }
    }

    public static String getDeviceId(Context context)
    {
        return ((TelephonyManager)context.getSystemService(Context.TELEPHONY_SERVICE)).getDeviceId();
    }

    private static String randomDeviceId;
    public static String getRandomDeviceId()
    {
        if(randomDeviceId != null)
            return randomDeviceId;

        String result = "";
        Random random = new Random();
        for(int i=0;i<15;i++)
        {
            result += String.valueOf(random.nextInt(10));
        }

        return randomDeviceId = result;
    }

    public static String getIpAddress(Context context)
    {
        int ip = ((WifiManager)context.getSystemService(Context.WIFI_SERVICE)).getConnectionInfo().getIpAddress();

        return String.format("%d.%d.%d.%d", (ip & 0xff), (ip >> 8 & 0xff), (ip >> 16 & 0xff), (ip >> 24 & 0xff));
    }

    public static String getMacAddress(Context context)
    {
        return ((WifiManager)context.getSystemService(Context.WIFI_SERVICE)).getConnectionInfo().getMacAddress();
    }

    private static String randomMacAddress;
    public static String getRandomMacAddress()
    {
        if(randomMacAddress != null)
            return randomMacAddress;

        String result = "";
        Random random = new Random();
        for(int i=0;i<6;i++)
        {
            if(i != 0)
                result += ":";

            String hexString = Integer.toHexString(random.nextInt(256));
            if(hexString.length() == 1)
                hexString = "0" + hexString;

            result += hexString;
        }

        return randomMacAddress = result;
    }

    public static String getBSSID(Context context)
    {
        return ((WifiManager)context.getSystemService(Context.WIFI_SERVICE)).getConnectionInfo().getBSSID();
    }

    public static Application getApplication()
    {
        return application;
    }

    public static Context getApplicationContext()
    {
        return application.getApplicationContext();
    }

    public static String getApplicationName(Activity context)
    {
        return context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
    }


    public static void share(Activity activity, String subject, String text)
    {
        Intent localIntent = new Intent("android.intent.action.SEND");
        localIntent.setType("text/plain");
        localIntent.putExtra("android.intent.extra.SUBJECT", subject);
        localIntent.putExtra("android.intent.extra.TEXT", text);
        localIntent.setFlags(268435456);
        activity.startActivity(Intent.createChooser(localIntent, "分享给好友"));
    }

    public static void share(final Activity activity)
    {
//        MobclickAgent.onEvent(activity, "shareGame");
//
//        String appId = SystemHelper.getStringFromMetaData(activity, "YQLANG_APPID");
//        UpdateManager.start(activity, appId, activity.getPackageName(), 1, new UpdateManagerListener() {
//            @Override
//            public void onNoUpdateAvailable() {
//                Toast.makeText(activity, "获取下载地址失败", Toast.LENGTH_SHORT).show();
//            }
//
//            @Override
//            public void onUpdateAvailable(Product product) {
//                share(activity, "跟我一起来挑战这款游戏", "分享一款给力的休闲游戏 “" + getApplicationName(activity) + "”，游戏下载地址：" + product.url);
//            }
//        });
    }

    public static void showText(Context context, String text)
    {
        showText(context, text, Toast.LENGTH_LONG);
    }

    private static Toast toast;

    public static void showText(Context context, String text, int duration)
    {
        if(toast == null)
            toast = Toast.makeText(context, text, duration);
        else
        {
            toast.setText(text);
            toast.setDuration(duration);
        }

        toast.show();
    }

    public static boolean isPortrait()
    {
        int orientation = getApplicationContext().getResources().getConfiguration().orientation;
        return orientation == Configuration.ORIENTATION_PORTRAIT;
    }
}

