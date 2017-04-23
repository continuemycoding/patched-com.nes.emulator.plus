.class final Lcom/db/android/api/http/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic dO:Ljava/io/File;

.field private synthetic dP:Lcom/db/android/api/http/r;


# direct methods
.method constructor <init>(Lcom/db/android/api/http/r;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/http/s;->dP:Lcom/db/android/api/http/r;

    iput-object p2, p0, Lcom/db/android/api/http/s;->dO:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/db/android/api/http/s;->dP:Lcom/db/android/api/http/r;

    iget-object v0, v0, Lcom/db/android/api/http/r;->I:Lcom/db/android/api/callback/b;

    iget-object v1, p0, Lcom/db/android/api/http/s;->dP:Lcom/db/android/api/http/r;

    iget-object v1, v1, Lcom/db/android/api/http/r;->D:Ljava/lang/String;

    iget-object v2, p0, Lcom/db/android/api/http/s;->dO:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/db/android/api/callback/b;->onDownloadSuccess(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
