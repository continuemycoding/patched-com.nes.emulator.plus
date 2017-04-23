.class final Lcom/qiang/framework/download/ApkDownloader$1;
.super Landroid/content/BroadcastReceiver;
.source "ApkDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiang/framework/download/ApkDownloader;->start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$product:Lcom/qiang/framework/recommend/Product;

.field final synthetic val$requestId:J


# direct methods
.method constructor <init>(JLcom/qiang/framework/recommend/Product;)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/qiang/framework/download/ApkDownloader$1;->val$requestId:J

    iput-object p3, p0, Lcom/qiang/framework/download/ApkDownloader$1;->val$product:Lcom/qiang/framework/recommend/Product;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiang/framework/helpers/LogHelper;->info(Ljava/lang/Object;)V

    .line 57
    iget-wide v2, p0, Lcom/qiang/framework/download/ApkDownloader$1;->val$requestId:J

    invoke-static {p1, v2, v3}, Lcom/qiang/framework/download/ApkDownloader;->queryDownloadStatus(Landroid/content/Context;J)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 60
    :sswitch_0
    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 61
    const-string v1, "ApkDownloaderFailed"

    iget-object v2, p0, Lcom/qiang/framework/download/ApkDownloader$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v2, v2, Lcom/qiang/framework/recommend/Product;->name:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :sswitch_1
    const-string v1, "\u4e0b\u8f7d\u6682\u505c"

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 66
    const-string v1, "ApkDownloaderPaused"

    iget-object v2, p0, Lcom/qiang/framework/download/ApkDownloader$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v2, v2, Lcom/qiang/framework/recommend/Product;->name:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :sswitch_2
    const-string v1, "\u4e0b\u8f7d\u5ef6\u8fdf"

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 71
    const-string v1, "ApkDownloaderPending"

    iget-object v2, p0, Lcom/qiang/framework/download/ApkDownloader$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v2, v2, Lcom/qiang/framework/recommend/Product;->name:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :sswitch_3
    const-string v1, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 76
    const-string v1, "ApkDownloaderRunning"

    iget-object v2, p0, Lcom/qiang/framework/download/ApkDownloader$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v2, v2, Lcom/qiang/framework/recommend/Product;->name:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :sswitch_4
    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 81
    const-string v1, "ApkDownloaderSuccessful"

    iget-object v2, p0, Lcom/qiang/framework/download/ApkDownloader$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v2, v2, Lcom/qiang/framework/recommend/Product;->name:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    # getter for: Lcom/qiang/framework/download/ApkDownloader;->map:Ljava/util/Map;
    invoke-static {}, Lcom/qiang/framework/download/ApkDownloader;->access$000()Ljava/util/Map;

    move-result-object v1

    iget-wide v2, p0, Lcom/qiang/framework/download/ApkDownloader$1;->val$requestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    .local v0, "path":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/qiang/framework/helpers/SystemHelper;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_1
        0x8 -> :sswitch_4
        0x10 -> :sswitch_0
    .end sparse-switch
.end method
