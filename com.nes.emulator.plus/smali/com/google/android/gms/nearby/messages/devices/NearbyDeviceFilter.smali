.class public Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaXg:I

.field final zzaXh:[B

.field final zzaXi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/devices/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/devices/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II[BZ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "idPrefixType"    # I
    .param p3, "idPrefix"    # [B
    .param p4, "shouldMatchUrls"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;->zzaXg:I

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;->zzaXh:[B

    iput-boolean p4, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;->zzaXi:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/devices/zzg;->zza(Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceFilter;Landroid/os/Parcel;I)V

    return-void
.end method
