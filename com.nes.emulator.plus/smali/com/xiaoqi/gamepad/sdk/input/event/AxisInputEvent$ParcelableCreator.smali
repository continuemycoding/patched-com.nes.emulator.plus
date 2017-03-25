.class Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent$ParcelableCreator;
.super Ljava/lang/Object;
.source "AxisInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParcelableCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 195
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;

    invoke-direct {v0, p1}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent$ParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 199
    new-array v0, p1, [Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent$ParcelableCreator;->newArray(I)[Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;

    move-result-object v0

    return-object v0
.end method
