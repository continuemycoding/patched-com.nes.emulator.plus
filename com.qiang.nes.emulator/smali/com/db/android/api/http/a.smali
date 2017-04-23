.class public Lcom/db/android/api/http/a;
.super Ljava/lang/Object;


# static fields
.field private static dB:I = 0x1f40

.field private static volatile dC:Lcom/db/android/api/http/a;


# instance fields
.field private dD:Ljava/util/concurrent/ExecutorService;

.field private dE:Ljavax/net/ssl/TrustManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/db/android/api/http/a;->mHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/http/a;->dD:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/db/android/api/https/a;

    invoke-direct {v0}, Lcom/db/android/api/https/a;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/http/a;->dE:Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method static synthetic a(Lcom/db/android/api/http/a;)Ljavax/net/ssl/TrustManager;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/http/a;->dE:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method static synthetic b(Lcom/db/android/api/http/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/http/a;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Ljava/lang/String;Lcom/db/android/api/callback/b;)V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/http/a;->dD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/db/android/api/http/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/db/android/api/http/n;-><init>(Lcom/db/android/api/http/a;Ljava/lang/String;Lcom/db/android/api/callback/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/util/Map;Lcom/db/android/api/callback/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/db/android/api/callback/b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/db/android/api/http/a;->dD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/db/android/api/http/f;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/db/android/api/http/f;-><init>(Lcom/db/android/api/http/a;Ljava/util/Map;Ljava/lang/String;Lcom/db/android/api/callback/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static l(Landroid/content/Context;)Lcom/db/android/api/http/a;
    .locals 2

    sget-object v0, Lcom/db/android/api/http/a;->dC:Lcom/db/android/api/http/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/db/android/api/http/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/db/android/api/http/a;->dC:Lcom/db/android/api/http/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/db/android/api/http/a;

    invoke-direct {v0}, Lcom/db/android/api/http/a;-><init>()V

    sput-object v0, Lcom/db/android/api/http/a;->dC:Lcom/db/android/api/http/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/db/android/api/http/a;->dC:Lcom/db/android/api/http/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/db/android/api/callback/b;)V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/http/a;->dD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/db/android/api/http/r;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/db/android/api/http/r;-><init>(Lcom/db/android/api/http/a;Ljava/lang/String;Ljava/lang/String;Lcom/db/android/api/callback/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/db/android/api/callback/b;)V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/http/a;->dD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/db/android/api/http/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/db/android/api/http/j;-><init>(Lcom/db/android/api/http/a;Ljava/lang/String;Lcom/db/android/api/callback/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/Map;Lcom/db/android/api/callback/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/db/android/api/callback/b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/db/android/api/http/a;->dD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/db/android/api/http/b;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/db/android/api/http/b;-><init>(Lcom/db/android/api/http/a;Ljava/util/Map;Ljava/lang/String;Lcom/db/android/api/callback/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
