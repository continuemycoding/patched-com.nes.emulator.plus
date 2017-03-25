.class public Lcom/xiaoqi/gamepad/sdk/Configs;
.super Ljava/lang/Object;
.source "Configs.java"


# static fields
.field public static USE_HIDDEVICE_LOCAL_MONITOR:Z

.field public static USE_JNI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_JNI:Z

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_HIDDEVICE_LOCAL_MONITOR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
