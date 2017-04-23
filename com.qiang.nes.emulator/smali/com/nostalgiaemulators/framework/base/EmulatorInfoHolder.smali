.class public Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;
.super Ljava/lang/Object;
.source "EmulatorInfoHolder.java"


# static fields
.field private static info:Lcom/nostalgiaemulators/framework/EmulatorInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;
    .locals 3

    .prologue
    .line 27
    sget-object v2, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->info:Lcom/nostalgiaemulators/framework/EmulatorInfo;

    if-nez v2, :cond_0

    .line 30
    :try_start_0
    const-string v2, "com.nostalgiaemulators.EmulatorFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/base/EmulatorFactory;

    .line 32
    .local v1, "factory":Lcom/nostalgiaemulators/framework/base/EmulatorFactory;
    invoke-interface {v1}, Lcom/nostalgiaemulators/framework/base/EmulatorFactory;->getEmulatorInstance()Lcom/nostalgiaemulators/framework/Emulator;

    move-result-object v2

    invoke-interface {v2}, Lcom/nostalgiaemulators/framework/Emulator;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v2

    sput-object v2, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->info:Lcom/nostalgiaemulators/framework/EmulatorInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    sget-object v2, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->info:Lcom/nostalgiaemulators/framework/EmulatorInfo;

    return-object v2

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
