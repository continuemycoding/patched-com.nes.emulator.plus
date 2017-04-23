.class public Lcom/google/android/gms/drive/internal/GetMetadataRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/GetMetadataRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaoh:Lcom/google/android/gms/drive/DriveId;

.field final zzapK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/GetMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Z)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "id"    # Lcom/google/android/gms/drive/DriveId;
    .param p3, "forceFromServer"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/GetMetadataRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/GetMetadataRequest;->zzaoh:Lcom/google/android/gms/drive/DriveId;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/GetMetadataRequest;->zzapK:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Z)V
    .locals 1
    .param p1, "id"    # Lcom/google/android/gms/drive/DriveId;
    .param p2, "forceFromServer"    # Z

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/drive/internal/GetMetadataRequest;-><init>(ILcom/google/android/gms/drive/DriveId;Z)V

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzaj;->zza(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Landroid/os/Parcel;I)V

    return-void
.end method
