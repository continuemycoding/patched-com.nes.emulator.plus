.class final Lcom/db/android/api/retry/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static X:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS dbcaches (cacheId VARCHAR PRIMARY KEY, url VARCHAR, timestamp LONG, times INTEGER)"

.field private static Y:Ljava/lang/String; = "DROP TABLE IF EXISTS dbcaches"


# instance fields
.field private synthetic dT:Lcom/db/android/api/retry/a;


# direct methods
.method public constructor <init>(Lcom/db/android/api/retry/a;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS dbcaches (cacheId VARCHAR PRIMARY KEY, url VARCHAR, timestamp LONG, times INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS dbcaches"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS dbcaches (cacheId VARCHAR PRIMARY KEY, url VARCHAR, timestamp LONG, times INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
