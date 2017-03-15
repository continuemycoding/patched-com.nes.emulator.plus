.class public abstract Lcom/nostalgiaemulators/framework/SfxProfile;
.super Ljava/lang/Object;
.source "SfxProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;
    }
.end annotation


# instance fields
.field public bufferSize:I

.field public encoding:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

.field public isStereo:Z

.field public name:Ljava/lang/String;

.field public quality:I

.field public rate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract toInt()I
.end method
