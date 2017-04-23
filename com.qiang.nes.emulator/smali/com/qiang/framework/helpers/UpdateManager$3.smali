.class final Lcom/qiang/framework/helpers/UpdateManager$3;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiang/framework/helpers/UpdateManager;->start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;ILcom/qiang/framework/listener/UpdateManagerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$product:Lcom/qiang/framework/recommend/Product;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/qiang/framework/helpers/UpdateManager$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/qiang/framework/helpers/UpdateManager$3;->val$product:Lcom/qiang/framework/recommend/Product;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/qiang/framework/helpers/UpdateManager$3;->val$context:Landroid/content/Context;

    const-string v1, "downloadAppAlertDialog"

    const-string v2, "\u4e0b\u8f7d"

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/qiang/framework/helpers/UpdateManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/qiang/framework/helpers/UpdateManager$3;->val$product:Lcom/qiang/framework/recommend/Product;

    invoke-static {v0, v1}, Lcom/qiang/framework/download/ApkDownloader;->start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;)J

    .line 121
    return-void
.end method
