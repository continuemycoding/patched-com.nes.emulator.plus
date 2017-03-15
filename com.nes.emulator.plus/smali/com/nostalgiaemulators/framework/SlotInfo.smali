.class public Lcom/nostalgiaemulators/framework/SlotInfo;
.super Ljava/lang/Object;
.source "SlotInfo.java"


# instance fields
.field public id:I

.field public isUsed:Z

.field public lastModified:J

.field public path:Ljava/lang/String;

.field public screenShot:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/SlotInfo;->lastModified:J

    .line 23
    return-void
.end method
