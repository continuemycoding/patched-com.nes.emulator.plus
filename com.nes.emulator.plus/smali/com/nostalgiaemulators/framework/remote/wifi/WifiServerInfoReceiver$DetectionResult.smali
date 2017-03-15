.class public Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;
.super Ljava/lang/Object;
.source "WifiServerInfoReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetectionResult"
.end annotation


# instance fields
.field public address:Ljava/net/InetAddress;

.field public desc:Ljava/lang/String;

.field lastDetect:J

.field public sessionDescription:Ljava/lang/String;

.field public slots:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

.field public type:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;Ljava/net/InetAddress;Ljava/lang/String;Ljava/lang/String;Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;)V
    .locals 2
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "sessionDescription"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->sessionDescription:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->slots:Landroid/util/SparseArray;

    .line 49
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->mobile:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->type:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->lastDetect:J

    .line 54
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->address:Ljava/net/InetAddress;

    .line 55
    iput-object p3, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->desc:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->sessionDescription:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->type:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->lastDetect:J

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 68
    instance-of v2, p1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;

    .line 71
    .local v0, "oo":Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->desc:Ljava/lang/String;

    iget-object v3, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->address:Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const/4 v1, 0x1

    .line 79
    .end local v0    # "oo":Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->desc:Ljava/lang/String;

    return-object v0
.end method
