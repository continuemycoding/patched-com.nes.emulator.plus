.class final Lcom/qiang/framework/recommend/ProductManager$1;
.super Ljava/lang/Object;
.source "ProductManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiang/framework/recommend/ProductManager;->getProducts()[Lcom/qiang/framework/recommend/Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/qiang/framework/recommend/Product;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$product:Lcom/qiang/framework/recommend/Product;


# direct methods
.method constructor <init>(Lcom/qiang/framework/recommend/Product;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/qiang/framework/recommend/ProductManager$1;->val$product:Lcom/qiang/framework/recommend/Product;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/qiang/framework/recommend/Product;Lcom/qiang/framework/recommend/Product;)I
    .locals 4
    .param p1, "product1"    # Lcom/qiang/framework/recommend/Product;
    .param p2, "product2"    # Lcom/qiang/framework/recommend/Product;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 64
    iget v2, p1, Lcom/qiang/framework/recommend/Product;->dislike:I

    iget v3, p2, Lcom/qiang/framework/recommend/Product;->dislike:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 65
    iget v0, p1, Lcom/qiang/framework/recommend/Product;->dislike:I

    iget v1, p2, Lcom/qiang/framework/recommend/Product;->dislike:I

    sub-int/2addr v0, v1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/qiang/framework/recommend/ProductManager$1;->val$product:Lcom/qiang/framework/recommend/Product;

    if-eqz v2, :cond_3

    .line 69
    iget-boolean v2, p1, Lcom/qiang/framework/recommend/Product;->multiplayer:Z

    iget-boolean v3, p2, Lcom/qiang/framework/recommend/Product;->multiplayer:Z

    if-eq v2, v3, :cond_2

    .line 71
    iget-boolean v2, p1, Lcom/qiang/framework/recommend/Product;->multiplayer:Z

    iget-object v3, p0, Lcom/qiang/framework/recommend/ProductManager$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-boolean v3, v3, Lcom/qiang/framework/recommend/Product;->multiplayer:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, p1, Lcom/qiang/framework/recommend/Product;->app_type:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/qiang/framework/recommend/Product;->app_type:Ljava/lang/String;

    iget-object v3, p2, Lcom/qiang/framework/recommend/Product;->app_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 79
    iget-object v2, p1, Lcom/qiang/framework/recommend/Product;->app_type:Ljava/lang/String;

    iget-object v3, p0, Lcom/qiang/framework/recommend/ProductManager$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v3, v3, Lcom/qiang/framework/recommend/Product;->app_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 82
    goto :goto_0

    .line 86
    :cond_3
    iget v0, p1, Lcom/qiang/framework/recommend/Product;->versionCode:I

    iget v1, p2, Lcom/qiang/framework/recommend/Product;->versionCode:I

    if-eq v0, v1, :cond_4

    .line 87
    iget v0, p2, Lcom/qiang/framework/recommend/Product;->versionCode:I

    iget v1, p1, Lcom/qiang/framework/recommend/Product;->versionCode:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 89
    :cond_4
    iget v0, p2, Lcom/qiang/framework/recommend/Product;->dangbei_appId:I

    iget v1, p1, Lcom/qiang/framework/recommend/Product;->dangbei_appId:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 61
    check-cast p1, Lcom/qiang/framework/recommend/Product;

    check-cast p2, Lcom/qiang/framework/recommend/Product;

    invoke-virtual {p0, p1, p2}, Lcom/qiang/framework/recommend/ProductManager$1;->compare(Lcom/qiang/framework/recommend/Product;Lcom/qiang/framework/recommend/Product;)I

    move-result v0

    return v0
.end method
