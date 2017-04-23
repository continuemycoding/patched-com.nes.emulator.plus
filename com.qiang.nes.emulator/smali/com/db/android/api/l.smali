.class public Lcom/db/android/api/l;
.super Ljava/lang/Object;


# static fields
.field private static J:Lcom/db/android/api/l;


# instance fields
.field K:Lcom/db/android/api/bitmap/core/r;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/db/android/api/a;->u:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/db/android/api/bitmap/core/r;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/db/android/api/bitmap/core/r;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/l;->K:Lcom/db/android/api/bitmap/core/r;

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/l;->K:Lcom/db/android/api/bitmap/core/r;

    invoke-virtual {v0, p1, p2}, Lcom/db/android/api/bitmap/core/r;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/db/android/api/l;
    .locals 2

    sget-object v0, Lcom/db/android/api/l;->J:Lcom/db/android/api/l;

    if-nez v0, :cond_1

    const-class v1, Lcom/db/android/api/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/db/android/api/l;->J:Lcom/db/android/api/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/db/android/api/l;

    invoke-direct {v0, p0}, Lcom/db/android/api/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/db/android/api/l;->J:Lcom/db/android/api/l;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/db/android/api/l;->J:Lcom/db/android/api/l;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/l;->K:Lcom/db/android/api/bitmap/core/r;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/r;->h()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/db/android/api/l;

    invoke-direct {v0, p0}, Lcom/db/android/api/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/db/android/api/l;->J:Lcom/db/android/api/l;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/db/android/api/q;->f(Ljava/lang/String;)Lcom/db/android/api/entity/InfoEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/db/android/api/entity/InfoEntity;->getAdMediaUrls()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/entity/InfoEntity;->parJSONArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloadImage:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/db/android/api/n;

    invoke-direct {v5, p0, v0, v2, p1}, Lcom/db/android/api/n;-><init>(Lcom/db/android/api/l;Ljava/lang/String;Lcom/db/android/api/entity/InfoEntity;Landroid/content/Context;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/ImageView;Ljava/lang/String;Lcom/db/android/api/callback/a;)V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/l;->K:Lcom/db/android/api/bitmap/core/r;

    new-instance v1, Lcom/db/android/api/m;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/db/android/api/m;-><init>(Lcom/db/android/api/l;Ljava/lang/String;Lcom/db/android/api/callback/a;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/r;->b(Lcom/db/android/api/bitmap/core/x;)Lcom/db/android/api/bitmap/core/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/db/android/api/bitmap/core/r;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/f;->i()V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/db/android/api/l;->K:Lcom/db/android/api/bitmap/core/r;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/db/android/api/bitmap/core/r;->k(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
