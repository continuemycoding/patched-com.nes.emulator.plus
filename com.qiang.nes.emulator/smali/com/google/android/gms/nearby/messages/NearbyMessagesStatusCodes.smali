.class public Lcom/google/android/gms/nearby/messages/NearbyMessagesStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final APP_NOT_OPTED_IN:I = 0xaf2

.field public static final BLE_ADVERTISING_UNSUPPORTED:I = 0xb05

.field public static final BLE_SCANNING_UNSUPPORTED:I = 0xb06

.field public static final BLUETOOTH_OFF:I = 0xb04

.field public static final TOO_MANY_PENDING_INTENTS:I = 0xaf1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "statusCode"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "TOO_MANY_PENDING_INTENTS"

    goto :goto_0

    :sswitch_1
    const-string v0, "APP_NOT_OPTED_IN"

    goto :goto_0

    :sswitch_2
    const-string v0, "BLUETOOTH_OFF"

    goto :goto_0

    :sswitch_3
    const-string v0, "BLE_ADVERTISING_UNSUPPORTED"

    goto :goto_0

    :sswitch_4
    const-string v0, "BLE_SCANNING_UNSUPPORTED"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xaf1 -> :sswitch_0
        0xaf2 -> :sswitch_1
        0xb04 -> :sswitch_2
        0xb05 -> :sswitch_3
        0xb06 -> :sswitch_4
    .end sparse-switch
.end method
