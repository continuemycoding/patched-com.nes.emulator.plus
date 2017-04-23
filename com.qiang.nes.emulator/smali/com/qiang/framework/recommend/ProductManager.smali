.class public Lcom/qiang/framework/recommend/ProductManager;
.super Ljava/lang/Object;
.source "ProductManager.java"


# static fields
.field private static gson:Lcom/google/gson/Gson;

.field private static products:[Lcom/qiang/framework/recommend/Product;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 20
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    sput-object v4, Lcom/qiang/framework/recommend/ProductManager;->gson:Lcom/google/gson/Gson;

    .line 24
    const-string v4, "product.json"

    invoke-static {v4}, Lcom/qiang/framework/helpers/PlayerPrefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "json":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "lastUpdateTime"

    invoke-static {v4}, Lcom/qiang/framework/helpers/PlayerPrefs;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Lcom/qiang/framework/helpers/SystemHelper;->getLastUpdateTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 27
    const-string v4, "\u8bfb\u53d6\u6301\u4e45\u5316\u4ea7\u54c1\u6570\u636e"

    invoke-static {v4}, Lcom/qiang/framework/helpers/LogHelper;->info(Ljava/lang/Object;)V

    .line 31
    :try_start_0
    sget-object v4, Lcom/qiang/framework/recommend/ProductManager;->gson:Lcom/google/gson/Gson;

    const-class v5, [Lcom/qiang/framework/recommend/Product;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/qiang/framework/recommend/Product;

    sput-object v4, Lcom/qiang/framework/recommend/ProductManager;->products:[Lcom/qiang/framework/recommend/Product;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    sget-object v4, Lcom/qiang/framework/recommend/ProductManager;->products:[Lcom/qiang/framework/recommend/Product;

    if-nez v4, :cond_1

    .line 41
    const-string v4, "\u8bfb\u53d6\u5185\u7f6e\u4ea7\u54c1\u6570\u636e"

    invoke-static {v4}, Lcom/qiang/framework/helpers/LogHelper;->info(Ljava/lang/Object;)V

    .line 43
    const-string v4, "lastUpdateTime"

    invoke-static {}, Lcom/qiang/framework/helpers/SystemHelper;->getLastUpdateTime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/qiang/framework/helpers/PlayerPrefs;->setLong(Ljava/lang/String;J)V

    .line 45
    const-string v4, "product.json"

    invoke-static {v4}, Lcom/qiang/framework/helpers/FileHelper;->readAssetFileToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    sget-object v4, Lcom/qiang/framework/recommend/ProductManager;->gson:Lcom/google/gson/Gson;

    const-class v5, [Lcom/qiang/framework/recommend/Product;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/qiang/framework/recommend/Product;

    sput-object v4, Lcom/qiang/framework/recommend/ProductManager;->products:[Lcom/qiang/framework/recommend/Product;

    .line 49
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Lcom/qiang/framework/recommend/ProductManager;->products:[Lcom/qiang/framework/recommend/Product;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 51
    sget-object v4, Lcom/qiang/framework/recommend/ProductManager;->products:[Lcom/qiang/framework/recommend/Product;

    aget-object v3, v4, v1

    .line 52
    .local v3, "product":Lcom/qiang/framework/recommend/Product;
    iget-object v4, v3, Lcom/qiang/framework/recommend/Product;->app_scanimg:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/qiang/framework/recommend/Product;->app_scanimg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 53
    iget-object v4, v3, Lcom/qiang/framework/recommend/Product;->app_scanimg:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/qiang/framework/recommend/Product;->screenshotUrls:[Ljava/lang/String;

    .line 49
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 33
    .end local v1    # "i":I
    .end local v3    # "product":Lcom/qiang/framework/recommend/Product;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProduct(Ljava/lang/String;)Lcom/qiang/framework/recommend/Product;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v2, Lcom/qiang/framework/recommend/ProductManager;->products:[Lcom/qiang/framework/recommend/Product;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 100
    .local v0, "product":Lcom/qiang/framework/recommend/Product;
    iget-object v4, v0, Lcom/qiang/framework/recommend/Product;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    .end local v0    # "product":Lcom/qiang/framework/recommend/Product;
    :goto_1
    return-object v0

    .line 98
    .restart local v0    # "product":Lcom/qiang/framework/recommend/Product;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "product":Lcom/qiang/framework/recommend/Product;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getProducts()[Lcom/qiang/framework/recommend/Product;
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/qiang/framework/helpers/SystemHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiang/framework/recommend/ProductManager;->getProduct(Ljava/lang/String;)Lcom/qiang/framework/recommend/Product;

    move-result-object v0

    .line 61
    .local v0, "product":Lcom/qiang/framework/recommend/Product;
    sget-object v1, Lcom/qiang/framework/recommend/ProductManager;->products:[Lcom/qiang/framework/recommend/Product;

    new-instance v2, Lcom/qiang/framework/recommend/ProductManager$1;

    invoke-direct {v2, v0}, Lcom/qiang/framework/recommend/ProductManager$1;-><init>(Lcom/qiang/framework/recommend/Product;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 93
    sget-object v1, Lcom/qiang/framework/recommend/ProductManager;->products:[Lcom/qiang/framework/recommend/Product;

    return-object v1
.end method

.method public static save()V
    .locals 3

    .prologue
    .line 109
    sget-object v1, Lcom/qiang/framework/recommend/ProductManager;->gson:Lcom/google/gson/Gson;

    sget-object v2, Lcom/qiang/framework/recommend/ProductManager;->products:[Lcom/qiang/framework/recommend/Product;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "json":Ljava/lang/String;
    const-string v1, "product.json"

    invoke-static {v1, v0}, Lcom/qiang/framework/helpers/PlayerPrefs;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
