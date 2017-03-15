.class public Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;
.super Ljava/lang/Thread;
.source "RomsFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$BiosFilter;,
        Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;,
        Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"


# instance fields
.field private activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

.field private androidAppDataFolder:Ljava/lang/String;

.field private biosFilter:Ljava/io/FileFilter;

.field private biosName:Ljava/lang/String;

.field private filenameExtFilter:Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;

.field private games:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;"
        }
    .end annotation
.end field

.field private inZipfilenameExtFilter:Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;

.field private listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;

.field private oldGames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;"
        }
    .end annotation
.end field

.field private running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private searchNew:Z

.field private selectedFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;ZLjava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p3, "activity"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;
    .param p4, "listener"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;
    .param p5, "searchNew"    # Z
    .param p6, "selectedFolder"    # Ljava/io/File;
    .param p7, "biosName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;",
            "Z",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "inZipExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->androidAppDataFolder:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->oldGames:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->games:Ljava/util/ArrayList;

    .line 87
    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->searchNew:Z

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    iput-object p4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;

    .line 94
    iput-object p7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->biosName:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    .line 96
    iput-boolean p5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->searchNew:Z

    .line 97
    iput-object p6, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->selectedFolder:Ljava/io/File;

    .line 98
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;

    invoke-direct {v0, p1, v2, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;-><init>(Ljava/util/Set;ZZ)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->filenameExtFilter:Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;

    .line 99
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;

    invoke-direct {v0, p2, v2, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;-><init>(Ljava/util/Set;ZZ)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->inZipfilenameExtFilter:Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->androidAppDataFolder:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$BiosFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$BiosFilter;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$BiosFilter;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->biosFilter:Ljava/io/FileFilter;

    .line 103
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->biosName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->searchNew:Z

    return v0
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->games:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkZip(Ljava/io/File;)V
    .locals 29
    .param p1, "zipFile"    # Ljava/io/File;

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v12

    .line 291
    .local v12, "externalCache":Ljava/io/File;
    if-eqz v12, :cond_c

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    move-result-object v8

    .line 293
    .local v8, "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "cacheDir":Ljava/lang/String;
    const-string v26, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "check zip"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static/range {p1 .. p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->computeZipHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    .line 296
    .local v15, "hash":Ljava/lang/String;
    const-class v26, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;

    .line 297
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "WHERE hash=\""

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 296
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->selectObjFromDb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;

    .line 298
    .local v25, "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    const/16 v23, 0x0

    .line 300
    .local v23, "zip":Ljava/util/zip/ZipFile;
    if-nez v25, :cond_b

    .line 301
    new-instance v25, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;

    .end local v25    # "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    invoke-direct/range {v25 .. v25}, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;-><init>()V

    .line 302
    .restart local v25    # "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->path:Ljava/lang/String;

    .line 303
    move-object/from16 v0, v25

    iput-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->hash:Ljava/lang/String;

    .line 307
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v9, "dir":Ljava/io/File;
    const/4 v7, 0x0

    .line 309
    .local v7, "counterRoms":I
    const/4 v6, 0x0

    .line 310
    .local v6, "counterEntry":I
    new-instance v24, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 311
    .end local v23    # "zip":Ljava/util/zip/ZipFile;
    .local v24, "zip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipFile;->size()I

    move-result v18

    .line 312
    .local v18, "max":I
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v11

    .line 314
    .local v11, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v26

    if-nez v26, :cond_2

    .line 389
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 390
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->insertObjToDb(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 401
    :cond_0
    if-eqz v24, :cond_1

    .line 402
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 420
    .end local v4    # "cacheDir":Ljava/lang/String;
    .end local v6    # "counterEntry":I
    .end local v7    # "counterRoms":I
    .end local v8    # "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    .end local v9    # "dir":Ljava/io/File;
    .end local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v15    # "hash":Ljava/lang/String;
    .end local v18    # "max":I
    .end local v24    # "zip":Ljava/util/zip/ZipFile;
    .end local v25    # "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    :cond_1
    :goto_2
    return-void

    .line 315
    .restart local v4    # "cacheDir":Ljava/lang/String;
    .restart local v6    # "counterEntry":I
    .restart local v7    # "counterRoms":I
    .restart local v8    # "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    .restart local v9    # "dir":Ljava/io/File;
    .restart local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v15    # "hash":Ljava/lang/String;
    .restart local v18    # "max":I
    .restart local v24    # "zip":Ljava/util/zip/ZipFile;
    .restart local v25    # "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    :cond_2
    :try_start_3
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/zip/ZipEntry;

    .line 316
    .local v22, "ze":Ljava/util/zip/ZipEntry;
    add-int/lit8 v6, v6, 0x1

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v26

    if-nez v26, :cond_5

    .line 319
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 321
    .local v13, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->biosName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 322
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->biosName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v26

    if-eqz v26, :cond_3

    .line 323
    const/16 v17, 0x0

    .line 326
    .local v17, "is":Ljava/io/InputStream;
    :try_start_4
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v17

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->copyBios(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 331
    if-eqz v17, :cond_3

    .line 332
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 337
    .end local v17    # "is":Ljava/io/InputStream;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->inZipfilenameExtFilter:Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9, v13}, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 338
    add-int/lit8 v7, v7, 0x1

    .line 339
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v17

    .line 340
    .restart local v17    # "is":Ljava/io/InputStream;
    invoke-static/range {v17 .. v17}, Lcom/nostalgiaemulators/framework/utils/Utils;->getMD5Checksum(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    .line 343
    .local v5, "checksum":Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 344
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 350
    :cond_4
    :goto_4
    :try_start_7
    new-instance v14, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 351
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v26

    const-string v27, ""

    .line 350
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v14, v0, v1, v5}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .local v14, "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v14, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->inserTime:J

    .line 353
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->games:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->games:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v5    # "checksum":Ljava/lang/String;
    .end local v13    # "filename":Ljava/lang/String;
    .end local v14    # "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    .end local v17    # "is":Ljava/io/InputStream;
    :cond_5
    const/16 v26, 0x14

    move/from16 v0, v26

    if-le v6, v0, :cond_8

    if-nez v7, :cond_8

    .line 359
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 360
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 359
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 361
    .local v19, "msg":Ljava/lang/String;
    add-int/lit8 v26, v18, -0x14

    add-int/lit8 v21, v26, -0x1

    .line 362
    .local v21, "num":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    move-object/from16 v26, v0

    new-instance v27, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$4;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;Ljava/lang/String;I)V

    invoke-virtual/range {v26 .. v27}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 368
    const-string v26, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    .line 369
    const-string v27, "Predcasne ukonceni prohledavani zipu. V prvnich 20 zaznamech v zipu neni ani jeden rom"

    .line 368
    invoke-static/range {v26 .. v27}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 393
    .end local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v18    # "max":I
    .end local v19    # "msg":Ljava/lang/String;
    .end local v21    # "num":I
    .end local v22    # "ze":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v10

    move-object/from16 v23, v24

    .line 394
    .end local v6    # "counterEntry":I
    .end local v7    # "counterRoms":I
    .end local v9    # "dir":Ljava/io/File;
    .end local v24    # "zip":Ljava/util/zip/ZipFile;
    .local v10, "e":Ljava/io/FileNotFoundException;
    .restart local v23    # "zip":Ljava/util/zip/ZipFile;
    :goto_5
    :try_start_8
    const-string v26, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 401
    if-eqz v23, :cond_1

    .line 402
    :try_start_9
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_2

    .line 404
    :catch_1
    move-exception v10

    .line 405
    .local v10, "e":Ljava/io/IOException;
    const-string v26, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 329
    .end local v10    # "e":Ljava/io/IOException;
    .end local v23    # "zip":Ljava/util/zip/ZipFile;
    .restart local v6    # "counterEntry":I
    .restart local v7    # "counterRoms":I
    .restart local v9    # "dir":Ljava/io/File;
    .restart local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v13    # "filename":Ljava/lang/String;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "max":I
    .restart local v22    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v24    # "zip":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v26

    .line 331
    if-eqz v17, :cond_3

    .line 332
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_3

    .line 396
    .end local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v13    # "filename":Ljava/lang/String;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "max":I
    .end local v22    # "ze":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v10

    move-object/from16 v23, v24

    .line 397
    .end local v6    # "counterEntry":I
    .end local v7    # "counterRoms":I
    .end local v9    # "dir":Ljava/io/File;
    .end local v24    # "zip":Ljava/util/zip/ZipFile;
    .local v10, "e":Ljava/lang/Exception;
    .restart local v23    # "zip":Ljava/util/zip/ZipFile;
    :goto_6
    :try_start_b
    const-string v26, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 401
    if-eqz v23, :cond_1

    .line 402
    :try_start_c
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_2

    .line 404
    :catch_4
    move-exception v10

    .line 405
    .local v10, "e":Ljava/io/IOException;
    const-string v26, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 330
    .end local v10    # "e":Ljava/io/IOException;
    .end local v23    # "zip":Ljava/util/zip/ZipFile;
    .restart local v6    # "counterEntry":I
    .restart local v7    # "counterRoms":I
    .restart local v9    # "dir":Ljava/io/File;
    .restart local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v13    # "filename":Ljava/lang/String;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "max":I
    .restart local v22    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v24    # "zip":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v26

    .line 331
    if-eqz v17, :cond_6

    .line 332
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 334
    :cond_6
    throw v26
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 399
    .end local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v13    # "filename":Ljava/lang/String;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "max":I
    .end local v22    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v26

    move-object/from16 v23, v24

    .line 401
    .end local v6    # "counterEntry":I
    .end local v7    # "counterRoms":I
    .end local v9    # "dir":Ljava/io/File;
    .end local v24    # "zip":Ljava/util/zip/ZipFile;
    .restart local v23    # "zip":Ljava/util/zip/ZipFile;
    :goto_7
    if-eqz v23, :cond_7

    .line 402
    :try_start_e
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 407
    :cond_7
    :goto_8
    throw v26

    .line 373
    .end local v23    # "zip":Ljava/util/zip/ZipFile;
    .restart local v6    # "counterEntry":I
    .restart local v7    # "counterRoms":I
    .restart local v9    # "dir":Ljava/io/File;
    .restart local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v18    # "max":I
    .restart local v22    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v24    # "zip":Ljava/util/zip/ZipFile;
    :cond_8
    :try_start_f
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v20

    .line 374
    .local v20, "name":Ljava/lang/String;
    const/16 v26, 0x2f

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 376
    .local v16, "idx":I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 377
    add-int/lit8 v26, v16, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 380
    :cond_9
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x14

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    .line 381
    const/16 v26, 0x0

    const/16 v27, 0x14

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 384
    :cond_a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 385
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->onRomsFinderFoundZipEntry(Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_0

    .line 404
    .end local v6    # "counterEntry":I
    .end local v7    # "counterRoms":I
    .end local v9    # "dir":Ljava/io/File;
    .end local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v16    # "idx":I
    .end local v18    # "max":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v22    # "ze":Ljava/util/zip/ZipEntry;
    .end local v24    # "zip":Ljava/util/zip/ZipFile;
    .restart local v23    # "zip":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v10

    .line 405
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v27, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 404
    .end local v10    # "e":Ljava/io/IOException;
    .end local v23    # "zip":Ljava/util/zip/ZipFile;
    .restart local v6    # "counterEntry":I
    .restart local v7    # "counterRoms":I
    .restart local v9    # "dir":Ljava/io/File;
    .restart local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v18    # "max":I
    .restart local v24    # "zip":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v10

    .line 405
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v26, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 410
    .end local v6    # "counterEntry":I
    .end local v7    # "counterRoms":I
    .end local v9    # "dir":Ljava/io/File;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v18    # "max":I
    .end local v24    # "zip":Ljava/util/zip/ZipFile;
    .restart local v23    # "zip":Ljava/util/zip/ZipFile;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->games:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->games:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 411
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    .line 412
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->games:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->onRomsFinderFoundZipEntry(Ljava/lang/String;I)V

    .line 413
    const-string v26, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "found zip in cache "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->games:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 417
    .end local v4    # "cacheDir":Ljava/lang/String;
    .end local v8    # "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    .end local v15    # "hash":Ljava/lang/String;
    .end local v23    # "zip":Ljava/util/zip/ZipFile;
    .end local v25    # "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    :cond_c
    const-string v26, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v27, "external cache dir is null"

    invoke-static/range {v26 .. v27}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->showSDcardFailed()V

    goto/16 :goto_2

    .line 347
    .restart local v4    # "cacheDir":Ljava/lang/String;
    .restart local v5    # "checksum":Ljava/lang/String;
    .restart local v6    # "counterEntry":I
    .restart local v7    # "counterRoms":I
    .restart local v8    # "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    .restart local v9    # "dir":Ljava/io/File;
    .restart local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v13    # "filename":Ljava/lang/String;
    .restart local v15    # "hash":Ljava/lang/String;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "max":I
    .restart local v22    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v24    # "zip":Ljava/util/zip/ZipFile;
    .restart local v25    # "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    :catch_7
    move-exception v26

    goto/16 :goto_4

    .line 399
    .end local v5    # "checksum":Ljava/lang/String;
    .end local v6    # "counterEntry":I
    .end local v7    # "counterRoms":I
    .end local v9    # "dir":Ljava/io/File;
    .end local v11    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v13    # "filename":Ljava/lang/String;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "max":I
    .end local v22    # "ze":Ljava/util/zip/ZipEntry;
    .end local v24    # "zip":Ljava/util/zip/ZipFile;
    .restart local v23    # "zip":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v26

    goto/16 :goto_7

    .line 396
    :catch_8
    move-exception v10

    goto/16 :goto_6

    .line 393
    :catch_9
    move-exception v10

    goto/16 :goto_5
.end method

.method private copyBios(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->getBiosTargetFile()Ljava/io/File;

    move-result-object v0

    .line 212
    .local v0, "target":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->getBiosTargetFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private copyBios(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->getBiosTargetFile()Ljava/io/File;

    move-result-object v0

    .line 227
    .local v0, "target":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->getBiosTargetFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getAllGames(Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "helper"    # Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    const-class v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    const/4 v1, 0x0

    .line 244
    const-string v2, "GROUP BY checksum"

    const/4 v3, 0x0

    .line 243
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->selectObjsFromDb(Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getBiosTargetFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 239
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    invoke-static {v2}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->biosName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getRomAndPackedFiles(Ljava/io/File;Ljava/util/List;Ljava/util/HashSet;)V
    .locals 18
    .param p1, "root"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p3, "usedPaths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 136
    .local v7, "dirPath":Ljava/lang/String;
    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    .line 137
    .local v8, "dirStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;>;"
    invoke-virtual {v8}, Ljava/util/Stack;->removeAllElements()V

    .line 138
    new-instance v13, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1, v14}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;Ljava/io/File;I)V

    invoke-virtual {v8, v13}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 139
    const/16 v2, 0xc

    .line 142
    .local v2, "MAX_LEVEL":I
    const-wide/16 v14, 0x64

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 147
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 207
    :cond_1
    return-void

    .line 148
    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;

    .line 151
    .local v6, "dir":Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;
    :try_start_1
    iget-object v13, v6, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;->file:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 157
    :goto_1
    if-eqz v7, :cond_8

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 158
    iget v13, v6, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;->level:I

    const/16 v14, 0xc

    if-gt v13, v14, :cond_8

    .line 159
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v13, v6, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;->file:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->biosFilter:Ljava/io/FileFilter;

    invoke-virtual {v13, v14}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 162
    .local v4, "biosFiles":[Ljava/io/File;
    if-eqz v4, :cond_3

    .line 163
    array-length v14, v4

    const/4 v13, 0x0

    :goto_2
    if-lt v13, v14, :cond_4

    .line 168
    :cond_3
    iget-object v13, v6, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;->file:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->filenameExtFilter:Lcom/nostalgiaemulators/framework/ui/gamegallery/FilenameExtFilter;

    invoke-virtual {v13, v14}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v12

    .line 170
    .local v12, "files":[Ljava/io/File;
    if-eqz v12, :cond_0

    .line 171
    array-length v14, v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_0

    aget-object v11, v12, v13

    .line 172
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 173
    const/4 v5, 0x0

    .line 176
    .local v5, "canonicalPath":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 182
    :goto_4
    if-eqz v5, :cond_6

    .line 183
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->androidAppDataFolder:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 185
    const-string v15, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "ignore "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->androidAppDataFolder:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v5    # "canonicalPath":Ljava/lang/String;
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 153
    .end local v4    # "biosFiles":[Ljava/io/File;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "files":[Ljava/io/File;
    :catch_0
    move-exception v10

    .line 154
    .local v10, "e1":Ljava/io/IOException;
    const-string v13, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v14, "search error"

    invoke-static {v13, v14, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 163
    .end local v10    # "e1":Ljava/io/IOException;
    .restart local v4    # "biosFiles":[Ljava/io/File;
    :cond_4
    aget-object v3, v4, v13

    .line 164
    .local v3, "biosFile":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->copyBios(Ljava/io/File;)V

    .line 163
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 178
    .end local v3    # "biosFile":Ljava/io/File;
    .restart local v5    # "canonicalPath":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "files":[Ljava/io/File;
    :catch_1
    move-exception v9

    .line 179
    .local v9, "e":Ljava/io/IOException;
    const-string v15, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v16, "search error"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 188
    .end local v9    # "e":Ljava/io/IOException;
    :cond_5
    new-instance v15, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;

    .line 189
    iget v0, v6, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;->level:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v11, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;Ljava/io/File;I)V

    .line 188
    invoke-virtual {v8, v15}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 193
    :cond_6
    const-string v15, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "cesta "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 194
    const-string v17, " jiz byla prohledana"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 193
    invoke-static/range {v15 .. v16}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 198
    .end local v5    # "canonicalPath":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 204
    .end local v4    # "biosFiles":[Ljava/io/File;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "files":[Ljava/io/File;
    :cond_8
    const-string v13, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "cesta "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " jiz byla prohledana"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    .end local v6    # "dir":Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$DirInfo;
    :catch_2
    move-exception v13

    goto/16 :goto_0
.end method

.method private onRomsFinderCancel(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 550
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$9;

    invoke-direct {v1, p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$9;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;Z)V

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 555
    return-void
.end method

.method private onRomsFinderFoundFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$7;

    invoke-direct {v1, p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$7;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 539
    return-void
.end method

.method private onRomsFinderFoundZipEntry(Ljava/lang/String;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "n"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$5;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method private onRomsFinderZipPartStart(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$8;

    invoke-direct {v1, p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$8;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;I)V

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method

.method private removeNonExistRoms(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "roms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    const/4 v10, 0x0

    .line 568
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    invoke-static {v8}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    move-result-object v0

    .line 569
    .local v0, "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 570
    .local v2, "hashs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    .line 571
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 570
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 572
    .local v3, "newRoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 574
    .local v7, "zipsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;>;"
    const-class v8, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;

    .line 575
    const/4 v9, 0x0

    .line 574
    invoke-virtual {v0, v8, v9, v10, v10}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->selectObjsFromDb(Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 588
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 614
    return-object v3

    .line 574
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;

    .line 576
    .local v5, "zip":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    new-instance v6, Ljava/io/File;

    iget-object v9, v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->path:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    .local v6, "zipFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 579
    iget-wide v10, v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {v0, v5}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->deleteObjFromDb(Ljava/lang/Object;)V

    .line 583
    const-class v9, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 584
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "where zipfile_id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->_id:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 583
    invoke-virtual {v0, v9, v10}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->deleteObjsFromDb(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 588
    .end local v5    # "zip":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    .end local v6    # "zipFile":Ljava/io/File;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 589
    .local v1, "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->isInArchive()Z

    move-result v9

    if-nez v9, :cond_5

    .line 590
    new-instance v4, Ljava/io/File;

    iget-object v9, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 593
    iget-object v9, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 594
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v9, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 599
    :cond_4
    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->deleteObjFromDb(Ljava/lang/Object;)V

    goto :goto_1

    .line 603
    .end local v4    # "path":Ljava/io/File;
    :cond_5
    iget-wide v10, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->zipfile_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;

    .line 605
    .restart local v5    # "zip":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    if-eqz v5, :cond_0

    .line 606
    iget-object v9, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 607
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v9, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private startFileSystemMode(Ljava/util/ArrayList;)V
    .locals 28
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

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
    .line 432
    .local p1, "oldRoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    move-result-object v4

    .line 433
    .local v4, "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 435
    .local v12, "roots":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->selectedFolder:Ljava/io/File;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 436
    invoke-static {}, Lcom/nostalgiaemulators/framework/utils/SDCardUtil;->getAllStorageLocations()Ljava/util/HashSet;

    move-result-object v12

    .line 442
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 444
    .local v14, "startTime":J
    const-string v21, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v22, "start searching in file system"

    invoke-static/range {v21 .. v22}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 447
    .local v13, "usedPaths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_5

    .line 452
    const-string v21, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "found "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " files"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v21, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v22, "compute checksum"

    invoke-static/range {v21 .. v22}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/16 v17, 0x0

    .line 455
    .local v17, "zipEntriesCount":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v18, "zips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_6

    .line 506
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_a

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 514
    const-string v21, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "found games: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->games:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->games:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->removeNonExistRoms(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->games:Ljava/util/ArrayList;

    .line 518
    :cond_2
    const-string v21, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v22, "compute checksum- done"

    invoke-static/range {v21 .. v22}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    move-object/from16 v21, v0

    new-instance v22, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$6;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)V

    invoke-virtual/range {v21 .. v22}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 530
    :cond_3
    const-string v21, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "time:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v14

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void

    .line 439
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v13    # "usedPaths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14    # "startTime":J
    .end local v17    # "zipEntriesCount":I
    .end local v18    # "zips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->selectedFolder:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 447
    .restart local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v13    # "usedPaths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v14    # "startTime":J
    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .line 448
    .local v11, "root":Ljava/io/File;
    const-string v22, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "exploring "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v13}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->getRomAndPackedFiles(Ljava/io/File;Ljava/util/List;Ljava/util/HashSet;)V

    goto/16 :goto_1

    .line 457
    .end local v11    # "root":Ljava/io/File;
    .restart local v17    # "zipEntriesCount":I
    .restart local v18    # "zips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 458
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 460
    .local v9, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 461
    invoke-static {v9}, Lcom/nostalgiaemulators/framework/utils/Utils;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, "ext":Ljava/lang/String;
    const-string v22, "zip"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 464
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    const/16 v19, 0x0

    .line 468
    .local v19, "zzFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v20, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    .end local v19    # "zzFile":Ljava/util/zip/ZipFile;
    .local v20, "zzFile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipFile;->size()I
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v22

    add-int v17, v17, v22

    .line 478
    if-eqz v20, :cond_0

    .line 480
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 482
    :catch_0
    move-exception v22

    goto/16 :goto_2

    .line 471
    .end local v20    # "zzFile":Ljava/util/zip/ZipFile;
    .restart local v19    # "zzFile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v5

    .line 472
    .local v5, "e":Ljava/util/zip/ZipException;
    :goto_4
    :try_start_3
    const-string v22, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 478
    if-eqz v19, :cond_0

    .line 480
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 482
    :catch_2
    move-exception v22

    goto/16 :goto_2

    .line 474
    .end local v5    # "e":Ljava/util/zip/ZipException;
    :catch_3
    move-exception v5

    .line 475
    .local v5, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v22, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 478
    if-eqz v19, :cond_0

    .line 480
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 482
    :catch_4
    move-exception v22

    goto/16 :goto_2

    .line 477
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    .line 478
    :goto_6
    if-eqz v19, :cond_7

    .line 480
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 485
    :cond_7
    :goto_7
    throw v21

    .line 490
    .end local v19    # "zzFile":Ljava/util/zip/ZipFile;
    :cond_8
    const/4 v8, 0x0

    .line 492
    .local v8, "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->oldGames:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->oldGames:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    check-cast v8, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 502
    .restart local v8    # "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->games:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 496
    :cond_9
    new-instance v8, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .end local v8    # "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    invoke-direct {v8, v7}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;-><init>(Ljava/io/File;)V

    .line 497
    .restart local v8    # "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v8, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->inserTime:J

    .line 498
    invoke-virtual {v4, v8}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->insertObjToDb(Ljava/lang/Object;)V

    .line 499
    iget-object v0, v8, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->onRomsFinderFoundFile(Ljava/lang/String;)V

    goto :goto_8

    .line 506
    .end local v6    # "ext":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    .end local v9    # "path":Ljava/lang/String;
    :cond_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/io/File;

    .line 507
    .local v16, "zip":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 508
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->onRomsFinderZipPartStart(I)V

    .line 509
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->checkZip(Ljava/io/File;)V

    goto/16 :goto_3

    .line 482
    .end local v16    # "zip":Ljava/io/File;
    .restart local v6    # "ext":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v19    # "zzFile":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v22

    goto :goto_7

    .line 477
    .end local v19    # "zzFile":Ljava/util/zip/ZipFile;
    .restart local v20    # "zzFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v21

    move-object/from16 v19, v20

    .end local v20    # "zzFile":Ljava/util/zip/ZipFile;
    .restart local v19    # "zzFile":Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 474
    .end local v19    # "zzFile":Ljava/util/zip/ZipFile;
    .restart local v20    # "zzFile":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v5

    move-object/from16 v19, v20

    .end local v20    # "zzFile":Ljava/util/zip/ZipFile;
    .restart local v19    # "zzFile":Ljava/util/zip/ZipFile;
    goto/16 :goto_5

    .line 471
    .end local v19    # "zzFile":Ljava/util/zip/ZipFile;
    .restart local v20    # "zzFile":Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v5

    move-object/from16 v19, v20

    .end local v20    # "zzFile":Ljava/util/zip/ZipFile;
    .restart local v19    # "zzFile":Ljava/util/zip/ZipFile;
    goto/16 :goto_4
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 250
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 251
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 252
    const-string v4, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v5, "start"

    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    new-instance v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$1;

    invoke-direct {v5, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$1;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)V

    invoke-virtual {v4, v5}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 259
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    invoke-static {v4}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    move-result-object v0

    .line 260
    .local v0, "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->getAllGames(Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;)Ljava/util/ArrayList;

    move-result-object v2

    .line 261
    .local v2, "oldRoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    invoke-direct {p0, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->removeNonExistRoms(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 262
    move-object v3, v2

    .line 263
    .local v3, "roms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    const-string v4, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "old games "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    new-instance v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$2;

    invoke-direct {v5, p0, v3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$2;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    iget-boolean v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->searchNew:Z

    if-eqz v4, :cond_1

    .line 272
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 276
    invoke-direct {p0, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->startFileSystemMode(Ljava/util/ArrayList;)V

    .line 286
    :goto_1
    return-void

    .line 272
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 273
    .local v1, "desc":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->oldGames:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 279
    .end local v1    # "desc":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    :cond_1
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->activity:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    new-instance v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$3;

    invoke-direct {v5, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$3;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)V

    invoke-virtual {v4, v5}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public stopSearch()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->onRomsFinderCancel(Z)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 563
    const-string v0, "com.nostalgiaemulators.framework.ui.gamegallery.RomsFinder"

    const-string v1, "cancel search"

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method
