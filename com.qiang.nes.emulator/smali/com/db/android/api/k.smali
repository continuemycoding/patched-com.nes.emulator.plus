.class final Lcom/db/android/api/k;
.super Lcom/db/android/api/callback/b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/db/android/api/callback/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadSuccess(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/db/android/api/callback/b;->onDownloadSuccess(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public final onFail(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    return-void
.end method
