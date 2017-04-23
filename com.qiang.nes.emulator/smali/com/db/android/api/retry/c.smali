.class public Lcom/db/android/api/retry/c;
.super Ljava/lang/Object;


# static fields
.field private static dU:Landroid/os/HandlerThread;

.field private static dV:J

.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/db/android/api/retry/c;->handler:Landroid/os/Handler;

    sput-object v0, Lcom/db/android/api/retry/c;->dU:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/db/android/api/entity/DescriptorEntity;)V
    .locals 3

    const-class v1, Lcom/db/android/api/retry/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/db/android/api/retry/c;->dU:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "DBMonitor"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/db/android/api/retry/c;->dU:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/db/android/api/retry/c;->dU:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/db/android/api/retry/c;->handler:Landroid/os/Handler;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/db/android/api/retry/c;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/db/android/api/retry/d;

    invoke-direct {v1, p0, p1}, Lcom/db/android/api/retry/d;-><init>(Landroid/content/Context;Lcom/db/android/api/entity/DescriptorEntity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static aF()V
    .locals 3

    const-class v1, Lcom/db/android/api/retry/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/db/android/api/retry/c;->dU:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "DBMonitor"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/db/android/api/retry/c;->dU:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/db/android/api/retry/c;->dU:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/db/android/api/retry/c;->handler:Landroid/os/Handler;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/db/android/api/entity/DescriptorEntity;

    invoke-direct {v0, p1}, Lcom/db/android/api/entity/DescriptorEntity;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/db/android/api/retry/c;->a(Landroid/content/Context;Lcom/db/android/api/entity/DescriptorEntity;)V

    return-void
.end method

.method public static declared-synchronized n(Landroid/content/Context;)V
    .locals 8

    const-class v1, Lcom/db/android/api/retry/c;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/db/android/api/utils/k;->aQ()J

    move-result-wide v2

    invoke-static {p0}, Lcom/db/android/api/utils/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v4, Lcom/db/android/api/retry/c;->dV:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    sget-wide v4, Lcom/db/android/api/retry/c;->dV:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/db/android/api/retry/a;->m(Landroid/content/Context;)Lcom/db/android/api/retry/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/android/api/retry/a;->aE()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/db/android/api/retry/c;->dV:J

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/entity/DescriptorEntity;

    invoke-static {p0, v0}, Lcom/db/android/api/retry/c;->a(Landroid/content/Context;Lcom/db/android/api/entity/DescriptorEntity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
