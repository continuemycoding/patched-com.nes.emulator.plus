.class public Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpInfo"
.end annotation


# instance fields
.field public address:I

.field public netmask:I

.field public sAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPrefixLen(I)V
    .locals 5
    .param p1, "len"    # I

    .prologue
    .line 357
    const/4 v2, 0x0

    iput v2, p0, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;->netmask:I

    .line 358
    const/16 v1, 0x1f

    .line 360
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 365
    const-string v2, "netmask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v2, "netmask"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;->netmask:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void

    .line 361
    :cond_0
    iget v2, p0, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;->netmask:I

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;->netmask:I

    .line 362
    add-int/lit8 v1, v1, -0x1

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
