.class final Lcom/db/android/api/r;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static X:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS info ( id INTEGER PRIMARY KEY AUTOINCREMENT,isSave INTEGER,showTimes INTEGER,dailyfreq INTEGER,closedate,clickparams,type INTEGER,isDownloading INTEGER,ctime,md5s,totalfreq INTEGER,clickUrls,afterSeconds INTEGER,clicktimes INTEGER,times INTEGER,seconds INTEGER,cipherkey,adId,adPosition INTEGER,opendate,iscloseadtag INTEGER,adType INTEGER,adMediaUrls,onposeUrls )"

.field private static Y:Ljava/lang/String; = "DROP TABLE IF EXISTS info"


# instance fields
.field private synthetic Z:Lcom/db/android/api/q;


# direct methods
.method public constructor <init>(Lcom/db/android/api/q;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS info ( id INTEGER PRIMARY KEY AUTOINCREMENT,isSave INTEGER,showTimes INTEGER,dailyfreq INTEGER,closedate,clickparams,type INTEGER,isDownloading INTEGER,ctime,md5s,totalfreq INTEGER,clickUrls,afterSeconds INTEGER,clicktimes INTEGER,times INTEGER,seconds INTEGER,cipherkey,adId,adPosition INTEGER,opendate,iscloseadtag INTEGER,adType INTEGER,adMediaUrls,onposeUrls )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS info ( id INTEGER PRIMARY KEY AUTOINCREMENT,isSave INTEGER,showTimes INTEGER,dailyfreq INTEGER,closedate,clickparams,type INTEGER,isDownloading INTEGER,ctime,md5s,totalfreq INTEGER,clickUrls,afterSeconds INTEGER,clicktimes INTEGER,times INTEGER,seconds INTEGER,cipherkey,adId,adPosition INTEGER,opendate,iscloseadtag INTEGER,adType INTEGER,adMediaUrls,onposeUrls )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
