.class public final Lu/aly/ar;
.super Ljava/lang/Object;
.source "CacheService.java"

# interfaces
.implements Lu/aly/au;


# static fields
.field private static c:Lu/aly/ar;


# instance fields
.field private a:Lu/aly/au;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lu/aly/ar;->b:Landroid/content/Context;

    .line 23
    new-instance v0, Lu/aly/aq;

    iget-object v1, p0, Lu/aly/ar;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/aq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/ar;->a:Lu/aly/au;

    .line 24
    return-void
.end method

.method static synthetic a(Lu/aly/ar;)Lu/aly/au;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lu/aly/ar;->a:Lu/aly/au;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lu/aly/ar;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lu/aly/ar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/ar;->c:Lu/aly/ar;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 32
    new-instance v0, Lu/aly/ar;

    invoke-direct {v0, p0}, Lu/aly/ar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/ar;->c:Lu/aly/ar;

    .line 35
    :cond_0
    sget-object v0, Lu/aly/ar;->c:Lu/aly/ar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)Lu/aly/aq;
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/ar;->a:Lu/aly/au;

    check-cast v0, Lu/aly/aq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lu/aly/ar$2;

    invoke-direct {v0, p0}, Lu/aly/ar$2;-><init>(Lu/aly/ar;)V

    invoke-static {v0}, Lu/aly/by;->b(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lu/aly/ar$1;

    invoke-direct {v0, p0, p1}, Lu/aly/ar$1;-><init>(Lu/aly/ar;Ljava/lang/Object;)V

    invoke-static {v0}, Lu/aly/by;->b(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public a(Lu/aly/au;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lu/aly/ar;->a:Lu/aly/au;

    .line 40
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lu/aly/ar$3;

    invoke-direct {v0, p0}, Lu/aly/ar$3;-><init>(Lu/aly/ar;)V

    invoke-static {v0}, Lu/aly/by;->c(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
