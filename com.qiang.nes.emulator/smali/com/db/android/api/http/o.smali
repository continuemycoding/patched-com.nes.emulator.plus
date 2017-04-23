.class final Lcom/db/android/api/http/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic dH:Ljava/lang/String;

.field private synthetic dM:Lcom/db/android/api/http/n;


# direct methods
.method constructor <init>(Lcom/db/android/api/http/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/http/o;->dM:Lcom/db/android/api/http/n;

    iput-object p2, p0, Lcom/db/android/api/http/o;->dH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/db/android/api/http/o;->dM:Lcom/db/android/api/http/n;

    iget-object v0, v0, Lcom/db/android/api/http/n;->I:Lcom/db/android/api/callback/b;

    iget-object v1, p0, Lcom/db/android/api/http/o;->dM:Lcom/db/android/api/http/n;

    iget-object v1, v1, Lcom/db/android/api/http/n;->D:Ljava/lang/String;

    iget-object v2, p0, Lcom/db/android/api/http/o;->dH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/db/android/api/callback/b;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
