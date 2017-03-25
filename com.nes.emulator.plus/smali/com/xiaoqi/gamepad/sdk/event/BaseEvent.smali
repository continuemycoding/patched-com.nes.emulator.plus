.class public Lcom/xiaoqi/gamepad/sdk/event/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# instance fields
.field final mEventTime:J

.field final mGamepadNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;


# direct methods
.method public constructor <init>(JLcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "gamepadNumber"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/xiaoqi/gamepad/sdk/event/BaseEvent;->mEventTime:J

    .line 11
    iput-object p3, p0, Lcom/xiaoqi/gamepad/sdk/event/BaseEvent;->mGamepadNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .line 12
    return-void
.end method


# virtual methods
.method public final getEventTime()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/xiaoqi/gamepad/sdk/event/BaseEvent;->mEventTime:J

    return-wide v0
.end method

.method public final getGamepadNumber()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/BaseEvent;->mGamepadNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/BaseEvent;->mGamepadNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
