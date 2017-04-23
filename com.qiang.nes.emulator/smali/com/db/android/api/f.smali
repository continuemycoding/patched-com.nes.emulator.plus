.class final Lcom/db/android/api/f;
.super Lcom/db/android/api/callback/b;


# instance fields
.field private synthetic A:Lcom/db/android/api/entity/InfoEntity;

.field private synthetic B:Landroid/content/Context;

.field private synthetic C:Lcom/db/android/api/callback/b;

.field private synthetic z:Lcom/db/android/api/b;


# direct methods
.method constructor <init>(Lcom/db/android/api/b;Lcom/db/android/api/entity/InfoEntity;Landroid/content/Context;Lcom/db/android/api/callback/b;)V
    .locals 0

    iput-object p2, p0, Lcom/db/android/api/f;->A:Lcom/db/android/api/entity/InfoEntity;

    iput-object p3, p0, Lcom/db/android/api/f;->B:Landroid/content/Context;

    iput-object p4, p0, Lcom/db/android/api/f;->C:Lcom/db/android/api/callback/b;

    invoke-direct {p0}, Lcom/db/android/api/callback/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadSuccess(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/f;->A:Lcom/db/android/api/entity/InfoEntity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download video or gif onSuccess: id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/db/android/api/f;->A:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/db/android/api/f;->A:Lcom/db/android/api/entity/InfoEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/db/android/api/entity/InfoEntity;->setIsSave(I)V

    iget-object v0, p0, Lcom/db/android/api/f;->A:Lcom/db/android/api/entity/InfoEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/db/android/api/entity/InfoEntity;->setIsDownloading(I)V

    iget-object v0, p0, Lcom/db/android/api/f;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/f;->A:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->a(Lcom/db/android/api/entity/InfoEntity;)V

    iget-object v0, p0, Lcom/db/android/api/f;->C:Lcom/db/android/api/callback/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/f;->C:Lcom/db/android/api/callback/b;

    invoke-virtual {v0, p1, p2}, Lcom/db/android/api/callback/b;->onDownloadSuccess(Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public final onFail(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    return-void
.end method
