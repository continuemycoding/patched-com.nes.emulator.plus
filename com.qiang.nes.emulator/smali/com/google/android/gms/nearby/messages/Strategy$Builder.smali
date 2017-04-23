.class public Lcom/google/android/gms/nearby/messages/Strategy$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/Strategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzaWU:I

.field private zzaWV:I

.field private zzaWW:I

.field private zzaWX:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWU:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWV:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWW:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWX:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/messages/Strategy;
    .locals 8

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWW:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set EARSHOT with BLE only mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/nearby/messages/Strategy;

    iget v3, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWV:I

    iget v4, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWW:I

    iget v6, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWX:I

    iget v7, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWU:I

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/nearby/messages/Strategy;-><init>(IIIIZII)V

    return-object v0
.end method

.method public setDiscoveryMode(I)Lcom/google/android/gms/nearby/messages/Strategy$Builder;
    .locals 0
    .param p1, "discoveryMode"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWU:I

    return-object p0
.end method

.method public setDistanceType(I)Lcom/google/android/gms/nearby/messages/Strategy$Builder;
    .locals 0
    .param p1, "distanceType"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWW:I

    return-object p0
.end method

.method public setTtlSeconds(I)Lcom/google/android/gms/nearby/messages/Strategy$Builder;
    .locals 7
    .param p1, "ttlSeconds"    # I

    .prologue
    const v6, 0x15180

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    if-lez p1, :cond_1

    if-gt p1, v6, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "mTtlSeconds(%d) must either be TTL_SECONDS_INFINITE, or it must be between 1 and TTL_SECONDS_MAX(%d) inclusive"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWV:I

    return-object p0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public zziU(I)Lcom/google/android/gms/nearby/messages/Strategy$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/messages/Strategy$Builder;->zzaWX:I

    return-object p0
.end method
