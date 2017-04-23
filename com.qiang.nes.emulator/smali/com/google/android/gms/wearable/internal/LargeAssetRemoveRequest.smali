.class public final Lcom/google/android/gms/wearable/internal/LargeAssetRemoveRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/LargeAssetRemoveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzboe:Lcom/google/android/gms/wearable/internal/LargeAssetRemoveRequest;


# instance fields
.field final mVersionCode:I

.field public final zzbof:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbi;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzbi;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/LargeAssetRemoveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/wearable/internal/LargeAssetRemoveRequest;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/LargeAssetRemoveRequest;-><init>(I[J)V

    sput-object v0, Lcom/google/android/gms/wearable/internal/LargeAssetRemoveRequest;->zzboe:Lcom/google/android/gms/wearable/internal/LargeAssetRemoveRequest;

    return-void
.end method

.method constructor <init>(I[J)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "transferIdsToRemove"    # [J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetRemoveRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/LargeAssetRemoveRequest;->zzbof:[J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LargeAssetRemoveRequest{transferIdsToRemove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/LargeAssetRemoveRequest;->zzbof:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzbi;->zza(Lcom/google/android/gms/wearable/internal/LargeAssetRemoveRequest;Landroid/os/Parcel;I)V

    return-void
.end method
