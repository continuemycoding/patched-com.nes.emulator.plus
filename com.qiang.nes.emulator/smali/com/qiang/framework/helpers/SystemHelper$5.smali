.class final Lcom/qiang/framework/helpers/SystemHelper$5;
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
    .line 371
    iput-object p1, p0, Lcom/qiang/framework/helpers/SystemHelper$5;->val$product:Lcom/qiang/framework/recommend/Product;

    iput-object p2, p0, Lcom/qiang/framework/helpers/SystemHelper$5;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/qiang/framework/helpers/SystemHelper$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/qiang/framework/helpers/SystemHelper$5;->val$product:Lcom/qiang/framework/recommend/Product;

    iget v1, v0, Lcom/qiang/framework/recommend/Product;->dislike:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/qiang/framework/recommend/Product;->dislike:I

    .line 377
    iget-object v0, p0, Lcom/qiang/framework/helpers/SystemHelper$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 378
    iget-object v0, p0, Lcom/qiang/framework/helpers/SystemHelper$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 379
    return-void
.end method
