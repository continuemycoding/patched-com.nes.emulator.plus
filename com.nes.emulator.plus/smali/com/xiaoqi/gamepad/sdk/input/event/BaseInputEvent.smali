.class public Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;
.super Ljava/lang/Object;
.source "BaseInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mDeviceId:Ljava/lang/String;

.field final mEventTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent$ParcelableCreator;

    invoke-direct {v0}, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent$ParcelableCreator;-><init>()V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->mEventTime:J

    .line 13
    iput-object p3, p0, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->mDeviceId:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->mEventTime:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->mDeviceId:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventTime()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->mEventTime:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->mDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->mDeviceId:Ljava/lang/String;

    goto :goto_0
.end method
