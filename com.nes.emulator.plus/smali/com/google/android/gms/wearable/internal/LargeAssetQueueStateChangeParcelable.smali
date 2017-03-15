.class public final Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateChangeParcelable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/wearable/LargeAssetApi$zzd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateChangeParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzbnW:Lcom/google/android/gms/wearable/internal/zzbt;

.field final zzbnX:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzbnY:Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateParcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbg;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbg;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateChangeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateParcelable;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "queueEntryBufferDataHolder"    # Lcom/google/android/gms/common/data/DataHolder;
    .param p3, "queueState"    # Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateParcelable;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateChangeParcelable;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateChangeParcelable;->zzbnX:Lcom/google/android/gms/common/data/DataHolder;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbt;

    invoke-direct {v0, p2}, Lcom/google/android/gms/wearable/internal/zzbt;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateChangeParcelable;->zzbnW:Lcom/google/android/gms/wearable/internal/zzbt;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateParcelable;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateChangeParcelable;->zzbnY:Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateParcelable;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateChangeParcelable;->zzbnW:Lcom/google/android/gms/wearable/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/internal/zzbt;->release()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LargeAssetQueueStateChangeParcelable{queueEntryBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateChangeParcelable;->zzbnW:Lcom/google/android/gms/wearable/internal/zzbt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queueState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateChangeParcelable;->zzbnY:Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateParcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbg;->zza(Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateChangeParcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGV()Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateParcelable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateChangeParcelable;->zzbnY:Lcom/google/android/gms/wearable/internal/LargeAssetQueueStateParcelable;

    return-object v0
.end method
