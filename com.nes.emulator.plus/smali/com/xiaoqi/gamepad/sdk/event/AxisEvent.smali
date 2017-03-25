.class public Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;
.super Lcom/xiaoqi/gamepad/sdk/event/BaseEvent;
.source "AxisEvent.java"


# instance fields
.field final mAxis:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;FFFFFFFF)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "gamepadNumber"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F
    .param p7, "rz"    # F
    .param p8, "hatx"    # F
    .param p9, "haty"    # F
    .param p10, "lTrigger"    # F
    .param p11, "rTrigger"    # F

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaoqi/gamepad/sdk/event/BaseEvent;-><init>(JLcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->mAxis:Landroid/util/SparseArray;

    .line 16
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Z:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_RZ:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_L_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_R_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final getAxisValue(I)F
    .locals 2
    .param p1, "axis"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->mAxis:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F
    .locals 3
    .param p1, "axis"    # Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .prologue
    const/4 v0, 0x0

    .line 27
    if-nez p1, :cond_0

    .line 29
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->mAxis:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public final getHatX()F
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getHatY()F
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getLTrigger()F
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_L_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getRTrigger()F
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_R_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getRZ()F
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_RZ:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getRawX()F
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->getX()F

    move-result v0

    return v0
.end method

.method public final getRawY()F
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->getY()F

    move-result v0

    return v0
.end method

.method public final getX()F
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getY()F
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getZ()F
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Z:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method
