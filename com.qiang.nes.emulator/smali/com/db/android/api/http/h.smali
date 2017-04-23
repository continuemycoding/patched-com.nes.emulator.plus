.class final Lcom/db/android/api/http/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic dK:Lcom/db/android/api/http/f;


# direct methods
.method constructor <init>(Lcom/db/android/api/http/f;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/http/h;->dK:Lcom/db/android/api/http/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/db/android/api/http/h;->dK:Lcom/db/android/api/http/f;

    iget-object v0, v0, Lcom/db/android/api/http/f;->I:Lcom/db/android/api/callback/b;

    const/16 v1, 0x2711

    const-string v2, "response code not 200"

    invoke-virtual {v0, v1, v2}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    return-void
.end method
