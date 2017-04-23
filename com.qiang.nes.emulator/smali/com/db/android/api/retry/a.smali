.class public Lcom/db/android/api/retry/a;
.super Ljava/lang/Object;


# static fields
.field private static final V:Ljava/lang/String; = "dbcaches"

.field private static final dQ:I = 0x6270

.field private static final dR:I = 0x78

.field private static dS:Lcom/db/android/api/retry/a; = null

.field private static final k:Ljava/lang/String; = "dbmonitor"

.field private static final l:I = 0x1

.field private static final times:I = 0xa


# instance fields
.field private U:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/db/android/api/retry/a;->dS:Lcom/db/android/api/retry/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/db/android/api/retry/a;->U:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/db/android/api/entity/DescriptorEntity;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/db/android/api/retry/a;->size()I

    move-result v2

    const/16 v3, 0x78

    if-lt v2, v3, :cond_2

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/db/android/api/retry/b;

    iget-object v2, p0, Lcom/db/android/api/retry/a;->U:Landroid/content/Context;

    const-string v3, "dbmonitor"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/retry/b;-><init>(Lcom/db/android/api/retry/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM dbcaches ORDER BY timestamp ASC LIMIT 1"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "DELETE FROM dbcaches WHERE cacheId = ? AND url = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cacheId"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "url"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->close()V

    :cond_1
    new-instance v0, Lcom/db/android/api/retry/b;

    iget-object v2, p0, Lcom/db/android/api/retry/a;->U:Landroid/content/Context;

    const-string v3, "dbmonitor"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/retry/b;-><init>(Lcom/db/android/api/retry/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getTimes()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/db/android/api/entity/DescriptorEntity;->setTimes(I)V

    const-string v2, "dbcaches"

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private aC()V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v0, Lcom/db/android/api/retry/b;

    iget-object v2, p0, Lcom/db/android/api/retry/a;->U:Landroid/content/Context;

    const-string v3, "dbmonitor"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/retry/b;-><init>(Lcom/db/android/api/retry/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM dbcaches ORDER BY timestamp ASC LIMIT 1"

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "DELETE FROM dbcaches WHERE cacheId = ? AND url = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cacheId"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v6, "url"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->close()V

    return-void
.end method

.method private aD()Z
    .locals 2

    invoke-direct {p0}, Lcom/db/android/api/retry/a;->size()I

    move-result v0

    const/16 v1, 0x78

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/db/android/api/entity/DescriptorEntity;)V
    .locals 10

    const/4 v5, 0x1

    new-instance v0, Lcom/db/android/api/retry/b;

    iget-object v2, p0, Lcom/db/android/api/retry/a;->U:Landroid/content/Context;

    const-string v3, "dbmonitor"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/retry/b;-><init>(Lcom/db/android/api/retry/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getTimes()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/db/android/api/entity/DescriptorEntity;->setTimes(I)V

    const-string v2, "dbcaches"

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "cacheId = ? AND url = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getCacheId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getURLTrackingCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->close()V

    return-void
.end method

.method private c(Lcom/db/android/api/entity/DescriptorEntity;)V
    .locals 9

    const/4 v5, 0x1

    new-instance v0, Lcom/db/android/api/retry/b;

    iget-object v2, p0, Lcom/db/android/api/retry/a;->U:Landroid/content/Context;

    const-string v3, "dbmonitor"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/retry/b;-><init>(Lcom/db/android/api/retry/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "dbcaches"

    const-string v3, "cacheId = ? AND url = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getCacheId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getURLTrackingCode()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->close()V

    return-void
.end method

.method private d(Lcom/db/android/api/entity/DescriptorEntity;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v0, Lcom/db/android/api/retry/b;

    iget-object v2, p0, Lcom/db/android/api/retry/a;->U:Landroid/content/Context;

    const-string v3, "dbmonitor"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/retry/b;-><init>(Lcom/db/android/api/retry/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM dbcaches WHERE cacheId = ? and url = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getCacheId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getURLTrackingCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->close()V

    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method private static e(Lcom/db/android/api/entity/DescriptorEntity;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/db/android/api/entity/DescriptorEntity;->getTimestampInSeconds()J

    move-result-wide v0

    invoke-static {}, Lcom/db/android/api/utils/k;->aQ()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x6270

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Lcom/db/android/api/entity/DescriptorEntity;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getTimes()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getTimestampInSeconds()J

    move-result-wide v2

    invoke-static {}, Lcom/db/android/api/utils/k;->aQ()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x6270

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Lcom/db/android/api/retry/a;
    .locals 3

    const-class v1, Lcom/db/android/api/retry/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/db/android/api/retry/a;->dS:Lcom/db/android/api/retry/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/db/android/api/retry/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/db/android/api/retry/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/db/android/api/retry/a;->dS:Lcom/db/android/api/retry/a;

    :cond_0
    sget-object v0, Lcom/db/android/api/retry/a;->dS:Lcom/db/android/api/retry/a;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private size()I
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lcom/db/android/api/retry/b;

    iget-object v2, p0, Lcom/db/android/api/retry/a;->U:Landroid/content/Context;

    const-string v3, "dbmonitor"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/retry/b;-><init>(Lcom/db/android/api/retry/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select count(*) from dbcaches"

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

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->close()V
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
.method public final declared-synchronized a(Lcom/db/android/api/entity/DescriptorEntity;Z)V
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/db/android/api/retry/a;->d(Lcom/db/android/api/entity/DescriptorEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/db/android/api/retry/a;->c(Lcom/db/android/api/entity/DescriptorEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/db/android/api/retry/a;->d(Lcom/db/android/api/entity/DescriptorEntity;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getTimes()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_3

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/db/android/api/retry/a;->c(Lcom/db/android/api/entity/DescriptorEntity;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getTimestampInSeconds()J

    move-result-wide v2

    invoke-static {}, Lcom/db/android/api/utils/k;->aQ()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x6270

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/db/android/api/retry/b;

    iget-object v2, p0, Lcom/db/android/api/retry/a;->U:Landroid/content/Context;

    const-string v3, "dbmonitor"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/retry/b;-><init>(Lcom/db/android/api/retry/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getTimes()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/db/android/api/entity/DescriptorEntity;->setTimes(I)V

    const-string v2, "dbcaches"

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "cacheId = ? AND url = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getCacheId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getURLTrackingCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/db/android/api/retry/a;->size()I

    move-result v2

    const/16 v3, 0x78

    if-lt v2, v3, :cond_8

    :goto_2
    if-eqz v0, :cond_7

    new-instance v0, Lcom/db/android/api/retry/b;

    iget-object v2, p0, Lcom/db/android/api/retry/a;->U:Landroid/content/Context;

    const-string v3, "dbmonitor"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/retry/b;-><init>(Lcom/db/android/api/retry/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM dbcaches ORDER BY timestamp ASC LIMIT 1"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "DELETE FROM dbcaches WHERE cacheId = ? AND url = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cacheId"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "url"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->close()V

    :cond_7
    new-instance v0, Lcom/db/android/api/retry/b;

    iget-object v2, p0, Lcom/db/android/api/retry/a;->U:Landroid/content/Context;

    const-string v3, "dbmonitor"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/retry/b;-><init>(Lcom/db/android/api/retry/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->getTimes()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/db/android/api/entity/DescriptorEntity;->setTimes(I)V

    const-string v2, "dbcaches"

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/db/android/api/entity/DescriptorEntity;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_2
.end method

.method public final aE()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/db/android/api/entity/DescriptorEntity;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lcom/db/android/api/retry/b;

    iget-object v2, p0, Lcom/db/android/api/retry/a;->U:Landroid/content/Context;

    const-string v3, "dbmonitor"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/retry/b;-><init>(Lcom/db/android/api/retry/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "dbcaches"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cacheId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "timestamp"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "times"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/db/android/api/entity/DescriptorEntity;

    invoke-direct {v2}, Lcom/db/android/api/entity/DescriptorEntity;-><init>()V

    const-string v3, "cacheId"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/db/android/api/entity/DescriptorEntity;->setCahceId(Ljava/lang/String;)V

    const-string v3, "url"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/db/android/api/entity/DescriptorEntity;->setURLTrackingCode(Ljava/lang/String;)V

    const-string v3, "timestamp"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/db/android/api/entity/DescriptorEntity;->setTimestamp(J)V

    const-string v3, "times"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/db/android/api/entity/DescriptorEntity;->setTimes(I)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v10

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lcom/db/android/api/retry/b;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    goto :goto_1
.end method
