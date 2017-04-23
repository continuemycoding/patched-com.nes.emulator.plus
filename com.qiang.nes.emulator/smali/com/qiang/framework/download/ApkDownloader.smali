.class public Lcom/qiang/framework/download/ApkDownloader;
.super Ljava/lang/Object;
.source "ApkDownloader.java"


# static fields
.field private static hasRegisterReceiver:Z

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qiang/framework/download/ApkDownloader;->hasRegisterReceiver:Z

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qiang/framework/download/ApkDownloader;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/qiang/framework/download/ApkDownloader;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static queryDownloadStatus(Landroid/content/Context;J)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestId"    # J

    .prologue
    const/4 v3, 0x0

    .line 101
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 102
    .local v2, "query":Landroid/app/DownloadManager$Query;
    const/4 v4, 0x1

    new-array v4, v4, [J

    aput-wide p1, v4, v3

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 104
    const-string v4, "download"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 105
    .local v1, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    const-string v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 109
    :cond_0
    return v3
.end method

.method public static start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/qiang/framework/recommend/Product;

    .prologue
    const/4 v8, 0x0

    .line 32
    new-instance v1, Landroid/app/DownloadManager$Request;

    iget-object v4, p1, Lcom/qiang/framework/recommend/Product;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 34
    .local v1, "request":Landroid/app/DownloadManager$Request;
    const-string v4, "/download/"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/qiang/framework/recommend/Product;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 35
    iget-object v4, p1, Lcom/qiang/framework/recommend/Product;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 37
    const-string v4, "download"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 39
    .local v0, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 40
    .local v2, "requestId":J
    sget-object v4, Lcom/qiang/framework/download/ApkDownloader;->map:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/download/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/qiang/framework/recommend/Product;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p0, v2, v3}, Lcom/qiang/framework/download/ApkDownloader;->queryDownloadStatus(Landroid/content/Context;J)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 44
    const-string v4, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 96
    :goto_0
    return-wide v2

    .line 48
    :cond_0
    sget-boolean v4, Lcom/qiang/framework/download/ApkDownloader;->hasRegisterReceiver:Z

    if-nez v4, :cond_1

    .line 50
    new-instance v4, Lcom/qiang/framework/download/ApkDownloader$1;

    invoke-direct {v4, v2, v3, p1}, Lcom/qiang/framework/download/ApkDownloader$1;-><init>(JLcom/qiang/framework/recommend/Product;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const/4 v4, 0x1

    sput-boolean v4, Lcom/qiang/framework/download/ApkDownloader;->hasRegisterReceiver:Z

    .line 94
    :cond_1
    const-string v4, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
