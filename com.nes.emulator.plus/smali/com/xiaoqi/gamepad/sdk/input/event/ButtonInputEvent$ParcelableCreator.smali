.class Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent$ParcelableCreator;
.super Ljava/lang/Object;
.source "ButtonInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;
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
        "Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 59
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;

    invoke-direct {v0, p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent$ParcelableCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 63
    new-array v0, p1, [Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent$ParcelableCreator;->newArray(I)[Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;

    move-result-object v0

    return-object v0
.end method
