.class public final Lcom/db/android/api/q;
.super Ljava/lang/Object;


# static fields
.field private static U:Landroid/content/Context; = null

.field private static final V:Ljava/lang/String; = "info"

.field private static W:Lcom/db/android/api/q; = null

.field private static final k:Ljava/lang/String; = "dbinfo.db"

.field private static final l:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/db/android/api/q;->W:Lcom/db/android/api/q;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/db/android/api/q;->U:Landroid/content/Context;

    return-void
.end method

.method private c(Lcom/db/android/api/entity/InfoEntity;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v0, Lcom/db/android/api/r;

    sget-object v2, Lcom/db/android/api/q;->U:Landroid/content/Context;

    const-string v3, "dbinfo.db"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/r;-><init>(Lcom/db/android/api/q;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/r;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM info WHERE adId = ? "

    new-array v3, v5, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lcom/db/android/api/r;->close()V

    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Lcom/db/android/api/q;
    .locals 3

    const-class v1, Lcom/db/android/api/retry/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/db/android/api/q;->W:Lcom/db/android/api/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/db/android/api/q;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/db/android/api/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/db/android/api/q;->W:Lcom/db/android/api/q;

    :cond_0
    sget-object v0, Lcom/db/android/api/q;->W:Lcom/db/android/api/q;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d(Lcom/db/android/api/entity/InfoEntity;)V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/db/android/api/r;

    sget-object v2, Lcom/db/android/api/q;->U:Landroid/content/Context;

    const-string v3, "dbinfo.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/r;-><init>(Lcom/db/android/api/q;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/r;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "info"

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Lcom/db/android/api/r;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private e(Lcom/db/android/api/entity/InfoEntity;)V
    .locals 9

    const/4 v5, 0x1

    new-instance v0, Lcom/db/android/api/r;

    sget-object v2, Lcom/db/android/api/q;->U:Landroid/content/Context;

    const-string v3, "dbinfo.db"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/r;-><init>(Lcom/db/android/api/q;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/r;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "adId = ? "

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/db/android/api/r;->close()V

    return-void
.end method

.method private f(Lcom/db/android/api/entity/InfoEntity;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getOpendate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getClosedate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    const-string v0, "ontime"

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "out of date:adId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/db/android/api/q;->g(Lcom/db/android/api/entity/InfoEntity;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    return-void
.end method

.method private size()I
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lcom/db/android/api/r;

    sget-object v2, Lcom/db/android/api/q;->U:Landroid/content/Context;

    const-string v3, "dbinfo.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/r;-><init>(Lcom/db/android/api/q;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/r;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select count(*) from info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lcom/db/android/api/r;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v6

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Lcom/db/android/api/entity/InfoEntity;
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/db/android/api/r;

    sget-object v2, Lcom/db/android/api/q;->U:Landroid/content/Context;

    const-string v3, "dbinfo.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/r;-><init>(Lcom/db/android/api/q;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/r;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM info WHERE isSave= ?  and adPosition= ?  ORDER BY ctime desc"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/db/android/api/entity/InfoEntity;

    invoke-direct {v2}, Lcom/db/android/api/entity/InfoEntity;-><init>()V

    invoke-virtual {v2, v1}, Lcom/db/android/api/entity/InfoEntity;->setData(Landroid/database/Cursor;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v6

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lcom/db/android/api/r;->close()V

    invoke-static {v8}, Lcom/db/android/api/utils/k;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v7

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/entity/InfoEntity;

    invoke-direct {p0, v0}, Lcom/db/android/api/q;->f(Lcom/db/android/api/entity/InfoEntity;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getDailyfreq()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getTimes()I

    move-result v2

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getDailyfreq()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6709\u5e7f\u544a  adid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getTotalfreq()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getTimes()I

    move-result v2

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getTotalfreq()I

    move-result v3

    if-ge v2, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6709\u5e7f\u544a  adid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getDailyfreq()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getTotalfreq()I

    move-result v2

    if-nez v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6709\u5e7f\u544a  adid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "\u65e0\u53ef\u7528\u5e7f\u544a"

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_5
    move-object v0, v6

    goto/16 :goto_1
.end method

.method public final declared-synchronized a(Lcom/db/android/api/entity/InfoEntity;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/db/android/api/q;->c(Lcom/db/android/api/entity/InfoEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getIsSave()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/db/android/api/q;->e(Lcom/db/android/api/entity/InfoEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "save:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getIsSave()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Lcom/db/android/api/r;

    sget-object v2, Lcom/db/android/api/q;->U:Landroid/content/Context;

    const-string v3, "dbinfo.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/r;-><init>(Lcom/db/android/api/q;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/r;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "info"

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Lcom/db/android/api/r;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/db/android/api/entity/InfoEntity;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/db/android/api/r;

    sget-object v2, Lcom/db/android/api/q;->U:Landroid/content/Context;

    const-string v3, "dbinfo.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/r;-><init>(Lcom/db/android/api/q;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/r;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM info WHERE isSave= ? and adPosition= ? ORDER BY ctime desc"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "2"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/db/android/api/entity/InfoEntity;

    invoke-direct {v2}, Lcom/db/android/api/entity/InfoEntity;-><init>()V

    invoke-virtual {v2, v1}, Lcom/db/android/api/entity/InfoEntity;->setData(Landroid/database/Cursor;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v7

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lcom/db/android/api/r;->close()V

    invoke-static {v9}, Lcom/db/android/api/utils/k;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v8

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/entity/InfoEntity;

    invoke-direct {p0, v0}, Lcom/db/android/api/q;->f(Lcom/db/android/api/entity/InfoEntity;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6709\u5e7f\u544a  adid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method

.method public final declared-synchronized b(Lcom/db/android/api/entity/InfoEntity;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/db/android/api/q;->c(Lcom/db/android/api/entity/InfoEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/db/android/api/q;->e(Lcom/db/android/api/entity/InfoEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(Ljava/lang/String;)Lcom/db/android/api/entity/InfoEntity;
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lcom/db/android/api/r;

    sget-object v2, Lcom/db/android/api/q;->U:Landroid/content/Context;

    const-string v3, "dbinfo.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/r;-><init>(Lcom/db/android/api/q;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    new-instance v1, Lcom/db/android/api/entity/InfoEntity;

    invoke-direct {v1}, Lcom/db/android/api/entity/InfoEntity;-><init>()V

    invoke-virtual {v0}, Lcom/db/android/api/r;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT * FROM info where adId = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/db/android/api/entity/InfoEntity;->setData(Landroid/database/Cursor;)V

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lcom/db/android/api/r;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto :goto_0
.end method

.method public final f()V
    .locals 6

    new-instance v0, Lcom/db/android/api/r;

    sget-object v2, Lcom/db/android/api/q;->U:Landroid/content/Context;

    const-string v3, "dbinfo.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/r;-><init>(Lcom/db/android/api/q;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/r;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "DROP TABLE IF EXISTS info"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/db/android/api/r;->close()V

    return-void
.end method

.method public final g(Lcom/db/android/api/entity/InfoEntity;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/q;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getAdType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getAdMediaUrls()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_2

    aget-object v2, v3, v0

    sget-object v4, Lcom/db/android/api/q;->U:Landroid/content/Context;

    invoke-static {v4}, Lcom/db/android/api/l;->c(Landroid/content/Context;)Lcom/db/android/api/l;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v2, v1

    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_0

    iget-object v6, v4, Lcom/db/android/api/l;->K:Lcom/db/android/api/bitmap/core/r;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Lcom/db/android/api/bitmap/core/r;->k(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/db/android/api/q;->U:Landroid/content/Context;

    invoke-static {v0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getAdMediaUrls()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/b;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x1

    new-instance v0, Lcom/db/android/api/r;

    sget-object v2, Lcom/db/android/api/q;->U:Landroid/content/Context;

    const-string v3, "dbinfo.db"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/r;-><init>(Lcom/db/android/api/q;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/r;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "info"

    const-string v3, "adId = ? "

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/db/android/api/r;->close()V

    return-void
.end method
