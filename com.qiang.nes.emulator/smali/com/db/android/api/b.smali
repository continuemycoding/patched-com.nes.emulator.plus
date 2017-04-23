.class public Lcom/db/android/api/b;
.super Ljava/lang/Object;


# static fields
.field private static x:Lcom/db/android/api/b;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/http/a;->l(Landroid/content/Context;)Lcom/db/android/api/http/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/db/android/api/b;
    .locals 2

    sget-object v0, Lcom/db/android/api/b;->x:Lcom/db/android/api/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/db/android/api/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/db/android/api/b;->x:Lcom/db/android/api/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/db/android/api/b;

    invoke-direct {v0, p0}, Lcom/db/android/api/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/db/android/api/b;->x:Lcom/db/android/api/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/db/android/api/b;->x:Lcom/db/android/api/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/db/android/api/b;->a(Ljava/util/Map;)V

    const-string v1, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v1

    sget-object v2, Lcom/db/android/api/url/a;->ei:Ljava/lang/String;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/f;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    new-instance v3, Lcom/db/android/api/k;

    invoke-direct {v3}, Lcom/db/android/api/k;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/db/android/api/b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/db/android/api/callback/b;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/db/android/api/entity/InfoEntity;Lcom/db/android/api/callback/b;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/db/android/api/a;->v:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-static {p1}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    invoke-virtual {p4}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->f(Ljava/lang/String;)Lcom/db/android/api/entity/InfoEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getIsSave()I

    move-result v1

    if-eq v1, v2, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getIsDownloading()I

    move-result v1

    if-ne v1, v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0, v2}, Lcom/db/android/api/entity/InfoEntity;->setIsDownloading(I)V

    invoke-static {p1}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/db/android/api/q;->a(Lcom/db/android/api/entity/InfoEntity;)V

    invoke-static {p3}, Lcom/db/android/api/utils/k;->B(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/db/android/api/http/a;->l(Landroid/content/Context;)Lcom/db/android/api/http/a;

    move-result-object v1

    new-instance v2, Lcom/db/android/api/f;

    invoke-direct {v2, p0, v0, p1, p5}, Lcom/db/android/api/f;-><init>(Lcom/db/android/api/b;Lcom/db/android/api/entity/InfoEntity;Landroid/content/Context;Lcom/db/android/api/callback/b;)V

    invoke-virtual {v1, p2, p3, v2}, Lcom/db/android/api/http/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/db/android/api/callback/b;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/db/android/api/callback/b;)V
    .locals 3

    const/16 v2, 0x2711

    iget-object v0, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/utils/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NET_ERROR"

    invoke-virtual {p2, v2, v0}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "POCESS_NOT_RIGHT"

    invoke-virtual {p2, v2, v0}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "e.dangbei.com"

    invoke-static {v0}, Lcom/db/android/api/utils/k;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NET_ERROR"

    invoke-virtual {p2, v2, v0}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    const-string v0, "ctime host is resolve"

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/http/a;->l(Landroid/content/Context;)Lcom/db/android/api/http/a;

    move-result-object v0

    new-instance v1, Lcom/db/android/api/c;

    invoke-direct {v1, p0, p2}, Lcom/db/android/api/c;-><init>(Lcom/db/android/api/b;Lcom/db/android/api/callback/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/db/android/api/http/a;->b(Ljava/lang/String;Lcom/db/android/api/callback/b;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "dbfile"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isUploadDeviceInfos"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/db/android/api/utils/b;->aL()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/db/android/api/h;

    invoke-direct {v2, p0, p1, v0}, Lcom/db/android/api/h;-><init>(Lcom/db/android/api/b;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/db/android/api/g;

    invoke-direct {v1, p0}, Lcom/db/android/api/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/db/android/api/b;

    invoke-direct {v0, p0}, Lcom/db/android/api/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/db/android/api/b;->x:Lcom/db/android/api/b;

    invoke-static {p0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v0

    const-string v1, "dbfile"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isUploadDeviceInfos"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/db/android/api/utils/b;->aL()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/db/android/api/h;

    invoke-direct {v3, v0, p0, v1}, Lcom/db/android/api/h;-><init>(Lcom/db/android/api/b;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/db/android/api/callback/b;)V
    .locals 9

    const-wide/16 v6, 0x0

    const/16 v8, 0x2711

    const-string v0, "dbfile"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v0, "dbtime"

    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const-string v0, ""

    const-string v1, "on schedule"

    invoke-virtual {p2, v0, v1}, Lcom/db/android/api/callback/b;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/db/android/api/url/a;->eh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?appkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/db/android/api/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/db/android/api/a;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/db/android/api/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&brandname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/db/android/api/utils/b;->aJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/db/android/api/j;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/j;-><init>(Lcom/db/android/api/b;JLandroid/content/SharedPreferences;Lcom/db/android/api/callback/b;)V

    iget-object v1, v6, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/db/android/api/utils/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NET_ERROR"

    invoke-virtual {v0, v8, v1}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, v6, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/db/android/api/utils/k;->s(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "POCESS_NOT_RIGHT"

    invoke-virtual {v0, v8, v1}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "e.dangbei.com"

    invoke-static {v1}, Lcom/db/android/api/utils/k;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NET_ERROR"

    invoke-virtual {v0, v8, v1}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    const-string v0, "ctime host is resolve"

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, v6, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/db/android/api/http/a;->l(Landroid/content/Context;)Lcom/db/android/api/http/a;

    move-result-object v1

    new-instance v2, Lcom/db/android/api/c;

    invoke-direct {v2, v6, v0}, Lcom/db/android/api/c;-><init>(Lcom/db/android/api/b;Lcom/db/android/api/callback/b;)V

    invoke-virtual {v1, v7, v2}, Lcom/db/android/api/http/a;->b(Ljava/lang/String;Lcom/db/android/api/callback/b;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/db/android/api/entity/InfoEntity;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    invoke-virtual {p3}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->f(Ljava/lang/String;)Lcom/db/android/api/entity/InfoEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getIsSave()I

    move-result v0

    if-eq v0, v3, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getIsDownloading()I

    move-result v0

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdMediaUrls()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/entity/InfoEntity;->parJSONArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/utils/k;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/db/android/api/entity/InfoEntity;->setIsDownloading(I)V

    invoke-static {p1}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/db/android/api/q;->a(Lcom/db/android/api/entity/InfoEntity;)V

    invoke-static {p2}, Lcom/db/android/api/utils/k;->B(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/db/android/api/http/a;->l(Landroid/content/Context;)Lcom/db/android/api/http/a;

    move-result-object v2

    new-instance v3, Lcom/db/android/api/e;

    invoke-direct {v3, p0, v1, p1}, Lcom/db/android/api/e;-><init>(Lcom/db/android/api/b;Lcom/db/android/api/entity/InfoEntity;Landroid/content/Context;)V

    invoke-virtual {v2, v0, p2, v3}, Lcom/db/android/api/http/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/db/android/api/callback/b;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Lcom/db/android/api/callback/b;)V
    .locals 3
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

    const/16 v2, 0x2711

    iget-object v0, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/utils/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NET_ERROR"

    invoke-virtual {p3, v2, v0}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "POCESS_NOT_RIGHT"

    invoke-virtual {p3, v2, v0}, Lcom/db/android/api/callback/b;->onFail(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/http/a;->l(Landroid/content/Context;)Lcom/db/android/api/http/a;

    move-result-object v0

    new-instance v1, Lcom/db/android/api/d;

    invoke-direct {v1, p0, p3}, Lcom/db/android/api/d;-><init>(Lcom/db/android/api/b;Lcom/db/android/api/callback/b;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/db/android/api/http/a;->b(Ljava/lang/String;Ljava/util/Map;Lcom/db/android/api/callback/b;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deviceid"

    iget-object v1, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/m;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appkey"

    invoke-static {}, Lcom/db/android/api/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appid"

    iget-object v1, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/m;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/db/android/api/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/j;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "packagename"

    iget-object v1, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    sget-object v1, Lcom/db/android/api/a;->VERSION:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channel"

    iget-object v1, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/db/android/api/utils/k;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "devicename"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/db/android/api/AdSystem;->isLoadLib:Z

    if-eqz v0, :cond_2

    const-string v0, "validate"

    invoke-static {}, Lcom/db/android/api/AdSystem;->getValidateParams()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/db/android/api/entity/InfoEntity;->parJSONArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/utils/k;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/db/android/api/b;->mContext:Landroid/content/Context;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/db/android/api/retry/c;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
