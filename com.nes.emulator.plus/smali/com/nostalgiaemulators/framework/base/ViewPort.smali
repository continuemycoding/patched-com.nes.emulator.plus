.class public Lcom/nostalgiaemulators/framework/base/ViewPort;
.super Ljava/lang/Object;
.source "ViewPort.java"


# instance fields
.field public height:I

.field public version:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/ViewPort;->version:I

    .line 21
    return-void
.end method
