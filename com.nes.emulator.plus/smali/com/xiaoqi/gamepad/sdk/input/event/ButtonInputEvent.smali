.class public final Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;
.super Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;
.source "ButtonInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAction:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

.field final mCode:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent$ParcelableCreator;

    invoke-direct {v0}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent$ParcelableCreator;-><init>()V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "action"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .param p5, "code"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;-><init>(JLjava/lang/String;)V

    .line 19
    iput-object p4, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    .line 20
    iput-object p5, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mCode:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 21
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;-><init>(Landroid/os/Parcel;)V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mCode:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 27
    return-void
.end method

.method public static check(Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;)Z
    .locals 1
    .param p0, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mCode:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mDeviceId:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public final getAction()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    return-object v0
.end method

.method public final getButtonCode()Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mCode:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    return-object v0
.end method

.method public final toButtonEvent(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/event/ButtonEvent;
    .locals 7
    .param p1, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 42
    new-instance v1, Lcom/xiaoqi/gamepad/sdk/event/ButtonEvent;

    iget-wide v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mEventTime:J

    iget-object v5, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    iget-object v6, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mCode:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaoqi/gamepad/sdk/event/ButtonEvent;-><init>(JLcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)V

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "tag"    # I

    .prologue
    const/4 v1, -0x1

    .line 46
    invoke-super {p0, p1, p2}, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->getValue()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mCode:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->mCode:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->getValue()I

    move-result v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    return-void

    :cond_1
    move v0, v1

    .line 47
    goto :goto_0
.end method
