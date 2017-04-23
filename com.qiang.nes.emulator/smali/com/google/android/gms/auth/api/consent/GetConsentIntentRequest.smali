.class public Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzSo:Landroid/accounts/Account;

.field private final zzUr:Ljava/lang/String;

.field private final zzUs:I

.field private final zzUt:Ljava/lang/String;

.field final zzUu:[Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;

.field private final zzUv:Z

.field private final zzUw:I

.field private final zzUx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/consent/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/consent/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;Landroid/accounts/Account;[Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;ZILjava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "service"    # Ljava/lang/String;
    .param p5, "account"    # Landroid/accounts/Account;
    .param p6, "scopeDetails"    # [Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;
    .param p7, "hasTitle"    # Z
    .param p8, "title"    # I
    .param p9, "consentCookieWrapper"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUr:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUs:I

    iput-object p4, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUt:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzSo:Landroid/accounts/Account;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUu:[Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;

    iput-boolean p7, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUv:Z

    iput p8, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUw:I

    iput-object p9, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzSo:Landroid/accounts/Account;

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUr:Ljava/lang/String;

    return-object v0
.end method

.method public getCallingUid()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUs:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/consent/zzb;->zza(Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzmc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUt:Ljava/lang/String;

    return-object v0
.end method

.method public zzmd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUv:Z

    return v0
.end method

.method public zzme()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUw:I

    return v0
.end method

.method public zzmf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/consent/GetConsentIntentRequest;->zzUx:Ljava/lang/String;

    return-object v0
.end method
