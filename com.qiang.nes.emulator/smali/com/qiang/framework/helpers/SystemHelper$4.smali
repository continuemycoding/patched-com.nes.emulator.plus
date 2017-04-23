.class final Lcom/qiang/framework/helpers/SystemHelper$4;
.super Ljava/lang/Object;
.source "SystemHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiang/framework/helpers/SystemHelper;->showCustomQuitDialog(Landroid/app/Activity;Lcom/qiang/framework/recommend/Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$product:Lcom/qiang/framework/recommend/Product;


# direct methods
.method constructor <init>(Lcom/qiang/framework/recommend/Product;Landroid/app/Dialog;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$product:Lcom/qiang/framework/recommend/Product;

    iput-object p2, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 327
    iget-object v3, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$product:Lcom/qiang/framework/recommend/Product;

    iget v4, v3, Lcom/qiang/framework/recommend/Product;->dislike:I

    add-int/lit8 v4, v4, -0x3

    iput v4, v3, Lcom/qiang/framework/recommend/Product;->dislike:I

    .line 329
    iget-object v3, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 331
    iget-object v3, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$activity:Landroid/app/Activity;

    const-string v4, "com.dangbeimarket"

    invoke-static {v3, v4}, Lcom/qiang/framework/helpers/SystemHelper;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 333
    const-string v3, "\u672a\u5b89\u88c5\u5f53\u8d1d\u7535\u89c6\u5e94\u7528\u5e02\u573a"

    invoke-static {v3}, Lcom/qiang/framework/helpers/LogHelper;->info(Ljava/lang/Object;)V

    .line 335
    iget-object v3, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$product:Lcom/qiang/framework/recommend/Product;

    invoke-static {v3, v4, v6}, Lcom/qiang/framework/helpers/UpdateManager;->start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;I)V

    .line 367
    :goto_0
    return-void

    .line 340
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "detail_url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://api.dangbei.net/dbapinew/view.php?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$product:Lcom/qiang/framework/recommend/Product;

    iget v5, v5, Lcom/qiang/framework/recommend/Product;->dangbei_appId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.dangbeimarket"

    const-string v4, "com.dangbeimarket.activity.NewDetailActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 344
    iget-object v3, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$activity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "detail_url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://api.dangbei.net/dbapinew/view.php?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$product:Lcom/qiang/framework/recommend/Product;

    iget v5, v5, Lcom/qiang/framework/recommend/Product;->dangbei_appId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.dangbeimarket"

    const-string v4, "com.dangbeimarket.widget.tvRecyclerview.mixSample.MixDetailActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .restart local v0    # "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 357
    iget-object v3, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$activity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 360
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 362
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    iget-object v3, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/qiang/framework/helpers/SystemHelper$4;->val$product:Lcom/qiang/framework/recommend/Product;

    invoke-static {v3, v4, v6}, Lcom/qiang/framework/helpers/UpdateManager;->start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;I)V

    goto :goto_0
.end method
