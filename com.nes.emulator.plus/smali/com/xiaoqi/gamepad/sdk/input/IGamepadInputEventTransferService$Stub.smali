.class public abstract Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub;
.super Landroid/os/Binder;
.source "IGamepadInputEventTransferService.java"

# interfaces
.implements Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaoqi.gamepad.sdk.input.IGamepadInputEventTransferService"

.field static final TRANSACTION_canFeedback:I = 0x5

.field static final TRANSACTION_forceFeedback:I = 0x8

.field static final TRANSACTION_forceFeedbackCancel:I = 0x6

.field static final TRANSACTION_forceFeedbackWithPattern:I = 0x7

.field static final TRANSACTION_getExistStateEventAtFirst:I = 0x3

.field static final TRANSACTION_onConnected:I = 0x4

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.xiaoqi.gamepad.sdk.input.IGamepadInputEventTransferService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.xiaoqi.gamepad.sdk.input.IGamepadInputEventTransferService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 136
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.xiaoqi.gamepad.sdk.input.IGamepadInputEventTransferService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.xiaoqi.gamepad.sdk.input.IGamepadInputEventTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener;

    move-result-object v3

    .line 51
    .local v3, "_arg0":Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 52
    .local v4, "_arg1":I
    invoke-virtual {p0, v3, v4}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub;->registerListener(Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener;I)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v2, 0x1

    goto :goto_0

    .line 58
    .end local v3    # "_arg0":Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener;
    .end local v4    # "_arg1":I
    :sswitch_2
    const-string v2, "com.xiaoqi.gamepad.sdk.input.IGamepadInputEventTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener;

    move-result-object v3

    .line 62
    .restart local v3    # "_arg0":Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 63
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v3, v4}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub;->unregisterListener(Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener;I)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v2, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "_arg0":Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener;
    .end local v4    # "_arg1":I
    :sswitch_3
    const-string v2, "com.xiaoqi.gamepad.sdk.input.IGamepadInputEventTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub;->getExistStateEventAtFirst()[Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;

    move-result-object v14

    .line 71
    .local v14, "_result":[Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 73
    const/4 v2, 0x1

    goto :goto_0

    .line 77
    .end local v14    # "_result":[Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    :sswitch_4
    const-string v2, "com.xiaoqi.gamepad.sdk.input.IGamepadInputEventTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub;->onConnected(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    const/4 v2, 0x1

    goto :goto_0

    .line 86
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v2, "com.xiaoqi.gamepad.sdk.input.IGamepadInputEventTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub;->canFeedback(I)Z

    move-result v14

    .line 90
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v14, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 91
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 96
    .end local v3    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_6
    const-string v2, "com.xiaoqi.gamepad.sdk.input.IGamepadInputEventTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    .restart local v3    # "_arg0":I
    invoke-virtual {p0, v3}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub;->forceFeedbackCancel(I)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 105
    .end local v3    # "_arg0":I
    :sswitch_7
    const-string v2, "com.xiaoqi.gamepad.sdk.input.IGamepadInputEventTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 109
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v4

    .line 111
    .local v4, "_arg1":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 113
    .local v5, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 115
    .local v6, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object v2, p0

    .line 116
    invoke-virtual/range {v2 .. v7}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub;->forceFeedbackWithPattern(I[J[I[II)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 122
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[J
    .end local v5    # "_arg2":[I
    .end local v6    # "_arg3":[I
    .end local v7    # "_arg4":I
    :sswitch_8
    const-string v2, "com.xiaoqi.gamepad.sdk.input.IGamepadInputEventTransferService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 126
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 128
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 130
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .local v12, "_arg3":J
    move-object v8, p0

    move v9, v3

    move v10, v4

    move v11, v5

    .line 131
    invoke-virtual/range {v8 .. v13}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub;->forceFeedback(IIIJ)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
