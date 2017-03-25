.class public final Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;
.super Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;
.source "AxisInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent$ParcelableCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;",
            ">;"
        }
    .end annotation
.end field


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

.field mCodes:[I

.field mValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent$ParcelableCreator;

    invoke-direct {v0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent$ParcelableCreator;-><init>()V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;FFFFFFFF)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F
    .param p7, "rz"    # F
    .param p8, "hatx"    # F
    .param p9, "haty"    # F
    .param p10, "lTrigger"    # F
    .param p11, "rTrigger"    # F

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;-><init>(JLjava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    .line 26
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Z:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_RZ:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_L_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_R_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    invoke-static {p11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-boolean v0, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_JNI:Z

    if-eqz v0, :cond_0

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    .line 40
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 41
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    const/4 v1, 0x0

    aput p4, v0, v1

    .line 43
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    const/4 v1, 0x1

    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 44
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    const/4 v1, 0x1

    aput p5, v0, v1

    .line 46
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    const/4 v1, 0x2

    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Z:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 47
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    const/4 v1, 0x2

    aput p6, v0, v1

    .line 49
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    const/4 v1, 0x3

    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_RZ:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    const/4 v1, 0x3

    aput p7, v0, v1

    .line 52
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    const/4 v1, 0x4

    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 53
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    const/4 v1, 0x4

    aput p8, v0, v1

    .line 55
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 56
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    const/4 v1, 0x5

    aput p9, v0, v1

    .line 58
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_L_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 59
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    const/4 v1, 0x6

    aput p10, v0, v1

    .line 61
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_R_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 62
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    const/4 v1, 0x7

    aput p11, v0, v1

    .line 64
    :cond_0
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;[Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;[F[Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;[F)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "axes"    # [Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;
    .param p5, "axesValues"    # [F
    .param p6, "precisionKeys"    # [Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;
    .param p7, "precisionValues"    # [F

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;-><init>(JLjava/lang/String;)V

    .line 18
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    .line 19
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    .line 71
    array-length v2, p4

    array-length v3, p5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 73
    .local v0, "count":I
    sget-boolean v2, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_JNI:Z

    if-eqz v2, :cond_0

    .line 74
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    .line 75
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    .line 78
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    .line 79
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 86
    return-void

    .line 80
    :cond_1
    sget-boolean v2, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_JNI:Z

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    aget-object v3, p4, v1

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v3

    aput v3, v2, v1

    .line 82
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    aget v3, p5, v1

    aput v3, v2, v1

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    aget-object v3, p4, v1

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v3

    aget v4, p5, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;-><init>(Landroid/os/Parcel;)V

    .line 18
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    .line 19
    new-array v4, v5, [F

    iput-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .local v0, "axis":I
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    .line 94
    sget-boolean v4, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_JNI:Z

    if-eqz v4, :cond_0

    .line 95
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    .line 96
    new-array v4, v0, [F

    iput-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    .line 99
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 109
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .local v2, "key":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 102
    .local v3, "value":F
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-boolean v4, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_JNI:Z

    if-eqz v4, :cond_2

    .line 105
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    aput v2, v4, v1

    .line 106
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    aput v3, v4, v1

    .line 99
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static check(Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;)Z
    .locals 1
    .param p0, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;

    .prologue
    .line 112
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mDeviceId:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 113
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
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getAxisCodes()[I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mCodes:[I

    return-object v0
.end method

.method public final getAxisValue(I)F
    .locals 2
    .param p1, "axis"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

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

    .line 121
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

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

.method public getAxisValues()[F
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mValues:[F

    return-object v0
.end method

.method public final getHatX()F
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getHatY()F
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getLTrigger()F
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_L_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getRTrigger()F
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_R_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getRZ()F
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_RZ:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getRawX()F
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getX()F

    move-result v0

    return v0
.end method

.method public final getRawY()F
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getY()F

    move-result v0

    return v0
.end method

.method public final getX()F
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getY()F
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final getZ()F
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Z:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getAxisValue(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public final toAxisEvent(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;
    .locals 13
    .param p1, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 171
    new-instance v1, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;

    iget-wide v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mEventTime:J

    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getX()F

    move-result v5

    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getY()F

    move-result v6

    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getZ()F

    move-result v7

    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getRZ()F

    move-result v8

    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getHatX()F

    move-result v9

    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getHatY()F

    move-result v10

    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getLTrigger()F

    move-result v11

    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getRTrigger()F

    move-result v12

    move-object v4, p1

    invoke-direct/range {v1 .. v12}, Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;-><init>(JLcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;FFFFFFFF)V

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lcom/xiaoqi/gamepad/sdk/input/event/BaseInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 186
    .local v0, "axesCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 191
    return-void

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->mAxis:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
