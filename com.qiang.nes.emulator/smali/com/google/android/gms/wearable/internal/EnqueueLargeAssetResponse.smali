.class public final Lcom/google/android/gms/wearable/internal/EnqueueLargeAssetResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/EnqueueLargeAssetResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field public final statusCode:I

.field public final zzbnv:Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/EnqueueLargeAssetResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;)V
    .locals 4
    .param p1, "versionCode"    # I
    .param p2, "statusCode"    # I
    .param p3, "queueEntry"    # Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/EnqueueLargeAssetResponse;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/wearable/internal/EnqueueLargeAssetResponse;->statusCode:I

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    :goto_0
    const-string v1, "Expecting non-null queueEntry"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/EnqueueLargeAssetResponse;->zzbnv:Lcom/google/android/gms/wearable/internal/LargeAssetQueueEntryParcelable;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    move v2, v0

    :goto_2
    const-string v3, "Expecting null queueEntry: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzah;->zza(Lcom/google/android/gms/wearable/internal/EnqueueLargeAssetResponse;Landroid/os/Parcel;I)V

    return-void
.end method
