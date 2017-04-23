.class public Lcom/db/android/api/AdSystem;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/db/android/api/AdSystem;

.field public static isInit:Z

.field public static isLoadLib:Z


# instance fields
.field public context:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/db/android/api/AdSystem;->isLoadLib:Z

    sput-boolean v1, Lcom/db/android/api/AdSystem;->isInit:Z

    :try_start_0
    const-string v0, "dbapi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/db/android/api/AdSystem;->isLoadLib:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/db/android/api/AdSystem;->isLoadLib:Z

    goto :goto_0
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/db/android/api/AdSystem;->context:Landroid/app/Application;

    return-void
.end method

.method private static checkIsLoadLib(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/db/android/api/AdSystem;->isLoadLib:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "libdbapi.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lib:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/db/android/api/AdSystem;->isLoadLib:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v3, Lcom/db/android/api/AdSystem;->isLoadLib:Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/db/android/api/AdSystem;
    .locals 2

    invoke-static {p0}, Lcom/db/android/api/AdSystem;->checkIsLoadLib(Landroid/content/Context;)V

    sget-object v0, Lcom/db/android/api/AdSystem;->instance:Lcom/db/android/api/AdSystem;

    if-nez v0, :cond_1

    const-class v1, Lcom/db/android/api/AdSystem;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/db/android/api/AdSystem;->instance:Lcom/db/android/api/AdSystem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/db/android/api/AdSystem;

    invoke-direct {v0, p0}, Lcom/db/android/api/AdSystem;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/db/android/api/AdSystem;->instance:Lcom/db/android/api/AdSystem;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/db/android/api/AdSystem;->instance:Lcom/db/android/api/AdSystem;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static native getParams()Ljava/lang/String;
.end method

.method public static native getValidateParams()Ljava/lang/String;
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/db/android/api/AdSystem;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/db/android/api/ui/factory/Axis;->init(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/db/android/api/a;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/videos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/db/android/api/a;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->C(Ljava/lang/String;)V

    sget-object v0, Lcom/db/android/api/a;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->C(Ljava/lang/String;)V

    sget-object v0, Lcom/db/android/api/a;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->B(Ljava/lang/String;)V

    sget-object v0, Lcom/db/android/api/a;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->B(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/db/android/api/l;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/db/android/api/q;->init(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/db/android/api/AdSystem;->isInit:Z

    :cond_0
    return-void
.end method

.method public static setLogState(Z)V
    .locals 0

    sput-boolean p0, Lcom/db/android/api/a;->c:Z

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/db/android/api/AdSystem;->context:Landroid/app/Application;

    invoke-static {v0}, Lcom/db/android/api/b;->init(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/db/android/api/a;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/db/android/api/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/db/android/api/AdSystem;->context:Landroid/app/Application;

    invoke-static {v0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/AdSystem;->context:Landroid/app/Application;

    new-instance v2, Lcom/db/android/api/o;

    invoke-direct {v2, p0}, Lcom/db/android/api/o;-><init>(Lcom/db/android/api/AdSystem;)V

    invoke-virtual {v0, v1, v2}, Lcom/db/android/api/b;->a(Landroid/content/Context;Lcom/db/android/api/callback/b;)V

    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p3, Lcom/db/android/api/a;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/db/android/api/AdSystem;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
