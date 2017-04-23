.class final Lcom/qiang/framework/helpers/SystemHelper$3;
.super Lcom/qiang/framework/download/DownloadItem;
.source "SystemHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiang/framework/helpers/SystemHelper;->showCustomQuitDialog(Landroid/app/Activity;Lcom/qiang/framework/recommend/Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imageButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/qiang/framework/helpers/SystemHelper$3;->val$imageButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/qiang/framework/download/DownloadItem;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/qiang/framework/helpers/SystemHelper$3;->val$imageButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/qiang/framework/helpers/SystemHelper$3;->val$imageButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
