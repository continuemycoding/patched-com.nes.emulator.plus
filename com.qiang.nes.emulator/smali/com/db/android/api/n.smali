.class final Lcom/db/android/api/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic B:Landroid/content/Context;

.field private synthetic D:Ljava/lang/String;

.field private synthetic N:Lcom/db/android/api/l;

.field private synthetic val$entity:Lcom/db/android/api/entity/InfoEntity;


# direct methods
.method constructor <init>(Lcom/db/android/api/l;Ljava/lang/String;Lcom/db/android/api/entity/InfoEntity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/n;->N:Lcom/db/android/api/l;

    iput-object p2, p0, Lcom/db/android/api/n;->D:Ljava/lang/String;

    iput-object p3, p0, Lcom/db/android/api/n;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    iput-object p4, p0, Lcom/db/android/api/n;->B:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/db/android/api/n;->N:Lcom/db/android/api/l;

    iget-object v0, v0, Lcom/db/android/api/l;->K:Lcom/db/android/api/bitmap/core/r;

    iget-object v1, p0, Lcom/db/android/api/n;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/r;->v(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/n;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v1, v3}, Lcom/db/android/api/entity/InfoEntity;->setIsSave(I)V

    if-nez v0, :cond_1

    const-string v0, "download from net"

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    new-instance v0, Lcom/db/android/api/bitmap/download/b;

    invoke-direct {v0}, Lcom/db/android/api/bitmap/download/b;-><init>()V

    iget-object v1, p0, Lcom/db/android/api/n;->D:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/db/android/api/bitmap/download/b;->a(Ljava/lang/String;Lcom/db/android/api/bitmap/core/k;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    sget-object v1, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    iget-object v2, p0, Lcom/db/android/api/n;->D:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/db/android/api/bitmap/core/f;->a(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/db/android/api/n;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0, v3}, Lcom/db/android/api/entity/InfoEntity;->setIsSave(I)V

    iget-object v0, p0, Lcom/db/android/api/n;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/n;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->a(Lcom/db/android/api/entity/InfoEntity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/n;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/db/android/api/entity/InfoEntity;->setIsSave(I)V

    iget-object v0, p0, Lcom/db/android/api/n;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/n;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->a(Lcom/db/android/api/entity/InfoEntity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/n;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0, v3}, Lcom/db/android/api/entity/InfoEntity;->setIsSave(I)V

    iget-object v0, p0, Lcom/db/android/api/n;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/n;->val$entity:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->a(Lcom/db/android/api/entity/InfoEntity;)V

    goto :goto_0
.end method
