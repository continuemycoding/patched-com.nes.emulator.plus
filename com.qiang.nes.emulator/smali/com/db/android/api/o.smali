.class final Lcom/db/android/api/o;
.super Lcom/db/android/api/callback/b;


# instance fields
.field private synthetic O:Lcom/db/android/api/AdSystem;


# direct methods
.method constructor <init>(Lcom/db/android/api/AdSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/o;->O:Lcom/db/android/api/AdSystem;

    invoke-direct {p0}, Lcom/db/android/api/callback/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/o;->O:Lcom/db/android/api/AdSystem;

    iget-object v0, v0, Lcom/db/android/api/AdSystem;->context:Landroid/app/Application;

    invoke-static {v0}, Lcom/db/android/api/AdSystem;->init(Landroid/content/Context;)V

    return-void
.end method
