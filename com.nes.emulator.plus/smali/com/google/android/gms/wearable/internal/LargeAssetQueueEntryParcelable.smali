.class public final Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/wearable/LargeAssetApi$zzb;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPath:Ljava/lang/String;

.field private final mState:I

.field final mVersionCode:I

.field private final zzblS:Ljava/lang/String;

.field private final zzbnQ:J

.field private final zzbnR:Landroid/net/Uri;

.field private final zzbnS:I

.field private final zzbnT:Z

.field private final zzbnU:Z

.field private final zzbnV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbf;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbf;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZZZ)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "transferId"    # J
    .param p4, "state"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "nodeId"    # Ljava/lang/String;
    .param p7, "destinationUri"    # Landroid/net/Uri;
    .param p8, "refuseErrorCode"    # I
    .param p9, "append"    # Z
    .param p10, "allowedOverMetered"    # Z
    .param p11, "allowedWithLowBattery"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnQ:J

    iput p4, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mState:I

    const-string v0, "path"

    invoke-static {p5, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mPath:Ljava/lang/String;

    const-string v0, "nodeId"

    invoke-static {p6, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzblS:Ljava/lang/String;

    const-string v0, "destinationUri"

    invoke-static {p7, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnR:Landroid/net/Uri;

    iput p8, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnS:I

    iput-boolean p9, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnT:Z

    iput-boolean p10, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnU:Z

    iput-boolean p11, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnV:Z

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZZZ)V
    .locals 13
    .param p1, "transferId"    # J
    .param p3, "state"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "nodeId"    # Ljava/lang/String;
    .param p6, "destinationUri"    # Landroid/net/Uri;
    .param p7, "refuseErrorCode"    # I
    .param p8, "append"    # Z
    .param p9, "allowedOverMetered"    # Z
    .param p10, "allowedWithLowBattery"    # Z

    .prologue
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;-><init>(IJILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZZZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mVersionCode:I

    iget v3, p1, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mVersionCode:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnQ:J

    iget-wide v4, p1, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnQ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mState:I

    iget v3, p1, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mState:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzblS:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzblS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnR:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnR:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnT:Z

    iget-boolean v3, p1, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnT:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnU:Z

    iget-boolean v3, p1, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnU:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnV:Z

    iget-boolean v3, p1, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnV:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnS:I

    iget v3, p1, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnS:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzblS:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mState:I

    return v0
.end method

.method public final hashCode()I
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mVersionCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnQ:J

    iget-wide v6, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnQ:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mState:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzblS:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnR:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnU:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnV:Z

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnS:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueueEntry{versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transferId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnQ:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzblS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destinationUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnR:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnT:Z

    if-eqz v0, :cond_0

    const-string v0, ", append=true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnU:Z

    if-eqz v0, :cond_1

    const-string v0, ", allowedOverMetered=true"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnV:Z

    if-eqz v0, :cond_2

    const-string v0, ", allowedWithLowBattery=true"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refuseErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbf;->zza(Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCO()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnR:Landroid/net/Uri;

    return-object v0
.end method

.method public zzGQ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnQ:J

    return-wide v0
.end method

.method public zzGR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnT:Z

    return v0
.end method

.method public zzGS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnU:Z

    return v0
.end method

.method public zzGT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnV:Z

    return v0
.end method

.method public zzGU()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;->zzbnS:I

    return v0
.end method
