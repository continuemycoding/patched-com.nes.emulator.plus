.class public Lcom/qiang/framework/tools/BluetoothDeviceHelper;
.super Ljava/lang/Object;
.source "BluetoothDeviceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
