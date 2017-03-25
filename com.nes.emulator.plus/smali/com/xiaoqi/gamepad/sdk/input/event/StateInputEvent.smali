.class public final Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
.super Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;
.source "StateInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAction:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

.field final mDeviceName:Ljava/lang/String;

.field final mDeviceType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

.field private mInputDeviceId:I

.field final mState:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent$ParcelableCreator;

    invoke-direct {v0}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent$ParcelableCreator;-><init>()V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/StateCode;Lcom/xiaoqi/gamepad/sdk/constant/StateAction;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "state"    # Lcom/xiaoqi/gamepad/sdk/constant/StateCode;
    .param p6, "action"    # Lcom/xiaoqi/gamepad/sdk/constant/StateAction;
    .param p7, "deviceType"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;-><init>(JLjava/lang/String;)V

    .line 23
    iput-object p6, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    .line 24
    iput-object p5, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mState:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    .line 25
    iput-object p7, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .line 26
    if-nez p4, :cond_0

    const-string p4, ""

    .end local p4    # "deviceName":Ljava/lang/String;
    :cond_0
    iput-object p4, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;-><init>(Landroid/os/Parcel;)V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mState:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public final getAction()Lcom/xiaoqi/gamepad/sdk/constant/StateAction;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceType()Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    return-object v0
.end method

.method public final getInputDeviceId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mInputDeviceId:I

    return v0
.end method

.method public final getState()Lcom/xiaoqi/gamepad/sdk/constant/StateCode;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mState:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    return-object v0
.end method

.method public final setInputDeviceId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mInputDeviceId:I

    .line 64
    return-void
.end method

.method public final toStateEvent(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/event/StateEvent;
    .locals 8
    .param p1, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 58
    new-instance v1, Lcom/xiaoqi/gamepad/sdk/event/StateEvent;

    iget-wide v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mEventTime:J

    iget-object v5, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mState:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    .line 59
    iget-object v6, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    iget-object v7, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    move-object v4, p1

    .line 58
    invoke-direct/range {v1 .. v7}, Lcom/xiaoqi/gamepad/sdk/event/StateEvent;-><init>(JLcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/StateCode;Lcom/xiaoqi/gamepad/sdk/constant/StateAction;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "eventTime=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 94
    iget-wide v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", deviceId=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", deviceName=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", deviceType=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", stateCode=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mState:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", stateAction=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, -0x1

    .line 71
    invoke-super {p0, p1, p2}, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->getValue()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mState:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mState:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->getValue()I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->getValue()I

    move-result v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return-void

    :cond_1
    move v0, v1

    .line 72
    goto :goto_0

    :cond_2
    move v0, v1

    .line 73
    goto :goto_1
.end method
