.class public abstract Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;
.super Lcom/nostalgiaemulators/framework/remote/ControllableActivity;
.source "BaseGameGalleryActivity.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;


# static fields
.field public static final MAIN_INDEX_FILE:Ljava/lang/String; = "main_index.txt"

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.ui.gamegallery.BaseGameGalleryActivity"


# instance fields
.field private biosName:Ljava/lang/String;

.field protected exts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

.field protected inZipExts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected reloadGames:Z

.field protected reloading:Z

.field private romsFinder:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->romsFinder:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->reloadGames:Z

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->reloading:Z

    .line 78
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    .line 79
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->biosName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private copyAssetFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "assetFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v4, Ljava/io/File;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .local v4, "outFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 229
    .local v3, "out":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 231
    .local v1, "in":Ljava/io/InputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 233
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-gtz v2, :cond_1

    .line 235
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 236
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 234
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method


# virtual methods
.method protected changeLanguage()V
    .locals 6

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 192
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "language"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 194
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v4, "vi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "en"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    const-string v1, "en"

    .line 198
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "language"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    :cond_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 204
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 205
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 206
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 207
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 208
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 207
    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 209
    return-void
.end method

.method protected copyGamesToDownloadFolder()V
    .locals 2

    .prologue
    .line 213
    :try_start_0
    const-string v1, "Adventure Island.zip"

    invoke-direct {p0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->copyAssetFile(Ljava/lang/String;)V

    .line 214
    const-string v1, "Bomberman.zip"

    invoke-direct {p0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->copyAssetFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getAboutDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 340
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 341
    .local v0, "dialog":Landroid/app/Dialog;
    sget v6, Lcom/nostalgiaemulators/framework/R$string;->about:I

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setTitle(I)V

    .line 342
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 343
    .local v5, "webView":Landroid/webkit/WebView;
    sget v6, Lcom/nostalgiaemulators/framework/R$string;->about_header:I

    invoke-virtual {p0, v6}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "text":Ljava/lang/String;
    const/4 v4, 0x0

    .line 345
    .local v4, "versionName":Ljava/lang/String;
    const/4 v3, -0x1

    .line 348
    .local v3, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 349
    const/4 v8, 0x0

    .line 348
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 349
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 351
    const/4 v8, 0x0

    .line 350
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 351
    iget v3, v6, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    const-string v6, "|app_name|"

    sget v7, Lcom/nostalgiaemulators/framework/R$string;->app_name:I

    invoke-virtual {p0, v7}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 358
    const-string v7, "|build|"

    if-ne v3, v9, :cond_0

    const-string v6, ""

    :goto_1
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 360
    const-string v6, "|content|"

    sget v7, Lcom/nostalgiaemulators/framework/R$string;->about_content:I

    invoke-virtual {p0, v7}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 361
    const-string v6, "text/html; charset=UTF-8"

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v6, v7}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v6, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$3;

    invoke-direct {v6, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$3;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 389
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 390
    const/4 v7, -0x2

    invoke-direct {v6, v9, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 389
    invoke-virtual {v0, v5, v6}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    return-object v0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "com.nostalgiaemulators.framework.ui.gamegallery.BaseGameGalleryActivity"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 358
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method protected getArchiveExtensions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 396
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 397
    return-object v0
.end method

.method protected getBiosName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getEmulatorActivityClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nostalgiaemulators/framework/base/EmulatorActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmulatorInstance()Lcom/nostalgiaemulators/framework/Emulator;
.end method

.method protected abstract getRomExtensions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getRomExtensions()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v4, "exts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getArchiveExtensions()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getBiosName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->biosName:Ljava/lang/String;

    .line 87
    const-string v6, "android50comp"

    .line 88
    const/4 v7, 0x0

    .line 87
    invoke-virtual {p0, v6, v7}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 89
    .local v5, "pref":Landroid/content/SharedPreferences;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 91
    .local v0, "androidVersion":Ljava/lang/String;
    const-string v6, "androidVersion"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 92
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    move-result-object v2

    .line 93
    .local v2, "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 96
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const v6, 0x7ffffffe

    const v7, 0x7fffffff

    :try_start_0
    invoke-virtual {v2, v1, v6, v7}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 103
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "androidVersion"

    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    const-string v6, "com.nostalgiaemulators.framework.ui.gamegallery.BaseGameGalleryActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Reinit DB "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->reloadGames:Z

    .line 109
    return-void

    .line 98
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    :catchall_0
    move-exception v6

    .line 99
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 100
    throw v6
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onDestroy()V

    .line 253
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->romsFinder:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->romsFinder:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->stopSearch()V

    .line 256
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onPause()V

    .line 242
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onResume()V

    .line 120
    invoke-static {}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->isSDCardRWMounted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->showSDcardFailed()V

    .line 125
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->showSDcardFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->showSDcardFailed()V

    goto :goto_0
.end method

.method public onRomsFinderCancel(Z)V
    .locals 1
    .param p1, "searchNew"    # Z

    .prologue
    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->romsFinder:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->reloading:Z

    .line 288
    return-void
.end method

.method public onRomsFinderEnd(Z)V
    .locals 1
    .param p1, "searchNew"    # Z

    .prologue
    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->romsFinder:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->reloading:Z

    .line 282
    return-void
.end method

.method public onRomsFinderFoundGamesInCache(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "oldRoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->setLastGames(Ljava/util/ArrayList;)V

    .line 271
    return-void
.end method

.method public onRomsFinderNewGames(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "roms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->setNewGames(Ljava/util/ArrayList;)V

    .line 276
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onStart()V

    .line 114
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onStop()V

    .line 247
    return-void
.end method

.method protected reloadGames(ZLjava/io/File;)V
    .locals 2
    .param p1, "paramBoolean"    # Z
    .param p2, "paramFile"    # Ljava/io/File;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.qiang.nes.emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->source_reloadGames(ZLjava/io/File;)V

    .line 29
    :cond_0
    return-void
.end method

.method public abstract setLastGames(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setNewGames(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)V"
        }
    .end annotation
.end method

.method protected showError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 302
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method

.method protected showHelpDialog()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 138
    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getGalleryHelpIds()[I

    move-result-object v0

    .line 136
    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->create(Landroid/content/Context;[I)Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 143
    :cond_1
    return-void
.end method

.method public showSDcardFailed()V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 298
    sget v1, Lcom/nostalgiaemulators/framework/R$string;->gallery_sd_card_not_mounted:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->showError(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method protected showSelectLanguageDialog()V
    .locals 8

    .prologue
    .line 146
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nostalgiaemulators/framework/R$string;->language_dialog_english:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x1

    .line 149
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nostalgiaemulators/framework/R$string;->language_dialog_vietnamese:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 151
    .local v1, "colors":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 153
    sget v6, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_language:I

    .line 152
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 158
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "language"

    const-string v6, "en"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "lang":Ljava/lang/String;
    const/4 v3, 0x0

    .line 160
    .local v3, "selectedItem":I
    const-string v5, "vi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    const/4 v3, 0x1

    .line 167
    :cond_0
    :goto_0
    new-instance v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$1;

    invoke-direct {v5, p0, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$1;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;Landroid/content/SharedPreferences;)V

    .line 166
    invoke-virtual {v0, v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 187
    return-void

    .line 162
    :cond_1
    const-string v5, "ru"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    const/4 v3, 0x2

    goto :goto_0
.end method

.method protected source_reloadGames(ZLjava/io/File;)V
    .locals 8
    .param p1, "paramBoolean"    # Z
    .param p2, "paramFile"    # Ljava/io/File;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->romsFinder:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->reloadGames:Z

    .line 261
    iput-boolean p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->reloading:Z

    .line 262
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->exts:Ljava/util/Set;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->inZipExts:Ljava/util/Set;

    .line 263
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->biosName:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;-><init>(Ljava/util/Set;Ljava/util/Set;Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;ZLjava/io/File;Ljava/lang/String;)V

    .line 262
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->romsFinder:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    .line 264
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->romsFinder:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->start()V

    .line 266
    :cond_0
    return-void
.end method

.method protected stopRomsFinding()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->romsFinder:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->romsFinder:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->stopSearch()V

    .line 294
    :cond_0
    return-void
.end method
