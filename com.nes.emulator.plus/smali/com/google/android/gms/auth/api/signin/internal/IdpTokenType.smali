.class public final Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzWc:Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;

.field public static final zzWd:Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;


# instance fields
.field final versionCode:I

.field private final zzWe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;

    const-string v1, "accessToken"

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;->zzWc:Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;

    const-string v1, "idToken"

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;->zzWd:Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "tokenType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;->zzWe:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tokenType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;->zzWe:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;->zzmN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;->zzWe:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/internal/zzi;->zza(Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzmN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/IdpTokenType;->zzWe:Ljava/lang/String;

    return-object v0
.end method
