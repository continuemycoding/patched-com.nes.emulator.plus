.class final Lcom/qiang/framework/helpers/SystemHelper$2;
.super Ljava/lang/Object;
.source "SystemHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiang/framework/helpers/SystemHelper;->showCustomQuitDialog(Landroid/app/Activity;Lcom/qiang/framework/recommend/Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$product:Lcom/qiang/framework/recommend/Product;


# direct methods
.method constructor <init>(Lcom/qiang/framework/recommend/Product;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/qiang/framework/helpers/SystemHelper$2;->val$product:Lcom/qiang/framework/recommend/Product;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/qiang/framework/helpers/SystemHelper$2;->val$product:Lcom/qiang/framework/recommend/Product;

    iget v1, v0, Lcom/qiang/framework/recommend/Product;->dislike:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/qiang/framework/recommend/Product;->dislike:I

    .line 290
    return-void
.end method
