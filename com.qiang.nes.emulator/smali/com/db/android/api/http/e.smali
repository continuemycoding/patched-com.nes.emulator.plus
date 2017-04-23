.class final Lcom/db/android/api/http/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic dI:Lcom/db/android/api/http/b;

.field private synthetic dJ:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/db/android/api/http/b;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/http/e;->dI:Lcom/db/android/api/http/b;

    iput-object p2, p0, Lcom/db/android/api/http/e;->dJ:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/db/android/api/http/e;->dJ:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/http/e;->dJ:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/http/e;->dI:Lcom/db/android/api/http/b;

    iget-object v0, v0, Lcom/db/android/api/http/b;->I:Lcom/db/android/api/callback/b;

    const/16 v1, 0x2711

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/db/android/api/http/e;->dJ:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
