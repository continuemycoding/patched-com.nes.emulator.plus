.class Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;
.super Ljava/lang/Object;
.source "BuildProperties.java"


# static fields
.field private static mInstance:Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;


# instance fields
.field private final properties:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->properties:Ljava/util/Properties;

    .line 15
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->properties:Ljava/util/Properties;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    .line 16
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "build.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 17
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    const-class v1, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->mInstance:Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;

    invoke-direct {v0}, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;-><init>()V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->mInstance:Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;

    .line 33
    :cond_0
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->mInstance:Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    return v0
.end method
