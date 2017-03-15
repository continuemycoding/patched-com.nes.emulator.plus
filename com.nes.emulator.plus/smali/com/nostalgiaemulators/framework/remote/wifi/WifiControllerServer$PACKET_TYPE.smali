.class public final enum Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;
.super Ljava/lang/Enum;
.source "WifiControllerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PACKET_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANDROID_KEY_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

.field public static final enum COMMAND_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

.field public static final enum EMULATOR_KEY_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

.field private static final synthetic ENUM$VALUES:[Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

.field public static final enum PING_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

.field public static final enum TEXT_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    const-string v1, "PING_PACKET"

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->PING_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    const-string v1, "EMULATOR_KEY_PACKET"

    invoke-direct {v0, v1, v3}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->EMULATOR_KEY_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    const-string v1, "ANDROID_KEY_PACKET"

    invoke-direct {v0, v1, v4}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ANDROID_KEY_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    const-string v1, "TEXT_PACKET"

    invoke-direct {v0, v1, v5}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->TEXT_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    const-string v1, "COMMAND_PACKET"

    invoke-direct {v0, v1, v6}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->COMMAND_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    sget-object v1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->PING_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->EMULATOR_KEY_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ANDROID_KEY_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->TEXT_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->COMMAND_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ENUM$VALUES:[Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ENUM$VALUES:[Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
