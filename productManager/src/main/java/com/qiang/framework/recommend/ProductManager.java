package com.qiang.framework.recommend;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.qiang.framework.helper.FileHelper;
import com.qiang.framework.helper.Utils;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.util.Arrays;
import java.util.Comparator;

/**
 * Created by Lin on 2016/7/11.
 */
public class ProductManager
{
    private static final String jsonPath = "patched/src/main/assets/product.json";

    private static Product[] products;

    static
    {
        String json = FileHelper.readFileToString(jsonPath);
        products = new Gson().fromJson(json, Product[].class);


        for(int i=0;i<products.length;i++)
        {
            Product product = products[i];
            if(product.app_scanimg != null && !product.app_scanimg.isEmpty())
                product.screenshotUrls = product.app_scanimg.split(",");
        }

        //Utils.shuffleArray(products);
        Arrays.sort(products, new Comparator<Product>() {
            @Override
            public int compare(Product product1, Product product2) {
                return product1.dangbei_appId - product2.dangbei_appId;
            }
        });
    }

    public static void main(String args[])
    {
        updateProducts();
    }

    public static Product[] getProducts()
    {
        return products;
    }

    public static Product getProduct(String packageName)
    {
        for (Product product : products)
        {
            if(product.packageName.equals(packageName))
                return product;
        }

        return null;
    }

    public static void updateProducts()
    {
        System.out.println("总共" + products.length + "款已上线产品");

        for (int i=0;i < products.length;i++)
        {
            Product product = products[i];

            String path = "productManager/build/view_" + product.dangbei_appId;

            download("http://api.dangbei.net/dbapinew/view_app.php?id=" + product.dangbei_appId, path);

            String json = FileHelper.readFileToString(path);
            Product viewProduct = new Gson().fromJson(json, Product.class);

            if(!product.name.equals(viewProduct.appname))
            {
                System.err.println(product.name + " != " + viewProduct.appname);
                continue;
            }

            if(!product.packageName.equals(viewProduct.app_packagename))
            {
                System.err.println(product.packageName + " != " + viewProduct.app_packagename);
                continue;
            }

            product.versionName = viewProduct.app_version;
            product.versionCode = viewProduct.app_code;
            product.url = viewProduct.download_url;
            product.releaseNote = viewProduct.app_updateinfo;
            product.app_scanimg = viewProduct.app_scanimg;
            product.screenshotUrls = null;

            FileHelper.deleteFile(path);
        }

        String data = new GsonBuilder().setPrettyPrinting().create().toJson(products, Product[].class);
        FileHelper.writeStringToFile(jsonPath, data);

        System.out.println("产品更新完成");
    }

    public static void download(String url, String path)
    {
        try {
            URL website = new URL(url);
            ReadableByteChannel rbc = Channels.newChannel(website.openStream());
            FileOutputStream fos = new FileOutputStream(path);
            fos.getChannel().transferFrom(rbc, 0, Long.MAX_VALUE);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
