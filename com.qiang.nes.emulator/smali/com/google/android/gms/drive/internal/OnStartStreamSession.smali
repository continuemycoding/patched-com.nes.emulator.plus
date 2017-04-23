.class public Lcom/google/android/gms/drive/internal/OnStartStreamSession;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnStartStreamSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaqr:Landroid/os/ParcelFileDescriptor;

.field final zzaqs:Landroid/os/IBinder;

.field final zzsL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzbi;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzbi;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnStartStreamSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "closeToken"    # Landroid/os/IBinder;
    .param p4, "signature"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnStartStreamSession;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnStartStreamSession;->zzaqr:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/OnStartStreamSession;->zzaqs:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/OnStartStreamSession;->zzsL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    or-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/drive/internal/zzbi;->zza(Lcom/google/android/gms/drive/internal/OnStartStreamSession;Landroid/os/Parcel;I)V

    return-void
.end method
