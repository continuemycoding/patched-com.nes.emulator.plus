.class public Lcom/xiaoqi/gamepad/sdk/event/ButtonEvent;
.super Lcom/xiaoqi/gamepad/sdk/event/BaseEvent;
.source "ButtonEvent.java"


# instance fields
.field final mAction:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

.field final mCode:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;


# direct methods
.method public constructor <init>(JLcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "gamepadNumber"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p4, "action"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .param p5, "code"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaoqi/gamepad/sdk/event/BaseEvent;-><init>(JLcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    .line 13
    iput-object p4, p0, Lcom/xiaoqi/gamepad/sdk/event/ButtonEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    .line 14
    iput-object p5, p0, Lcom/xiaoqi/gamepad/sdk/event/ButtonEvent;->mCode:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 15
    return-void
.end method


# virtual methods
.method public final getAction()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/ButtonEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    return-object v0
.end method

.method public final getButtonCode()Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/ButtonEvent;->mCode:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    return-object v0
.end method
