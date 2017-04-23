.class public Lcom/qiang/framework/tools/TelephonyManagerHelper;
.super Ljava/lang/Object;
.source "TelephonyManagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllCellInfo(Landroid/telephony/TelephonyManager;)Ljava/util/List;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCallState(Landroid/telephony/TelephonyManager;)I
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public static getCellLocation(Landroid/telephony/TelephonyManager;)Landroid/telephony/CellLocation;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public static getDataActivity(Landroid/telephony/TelephonyManager;)I
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public static getDataState(Landroid/telephony/TelephonyManager;)I
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public static getDeviceId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceSoftwareVersion(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGroupIdLevel1(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLine1Number(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsUAProfUrl(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMmsUAProfUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMmsUserAgent(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMmsUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNeighboringCellInfo(Landroid/telephony/TelephonyManager;)Ljava/util/List;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkCountryIso(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorName(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(Landroid/telephony/TelephonyManager;)I
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public static getPhoneType(Landroid/telephony/TelephonyManager;)I
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static getSimCountryIso(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimOperatorName(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimSerialNumber(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimState(Landroid/telephony/TelephonyManager;)I
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public static getSubscriberId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailAlphaTag(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailNumber(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasIccCard(Landroid/telephony/TelephonyManager;)Z
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public static isNetworkRoaming(Landroid/telephony/TelephonyManager;)Z
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public static listen(Landroid/telephony/TelephonyManager;Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 115
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 116
    return-void
.end method
