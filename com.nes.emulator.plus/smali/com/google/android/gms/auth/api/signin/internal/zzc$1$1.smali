.class Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/signin/internal/zzc$1;->zza(Lcom/google/android/gms/auth/api/signin/internal/zzd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzVW:Lcom/google/android/gms/auth/api/signin/internal/zzc$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzc$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;->zzVW:Lcom/google/android/gms/auth/api/signin/internal/zzc$1;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;->zzVW:Lcom/google/android/gms/auth/api/signin/internal/zzc$1;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1;->zzVT:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzae(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;->zzVW:Lcom/google/android/gms/auth/api/signin/internal/zzc$1;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/internal/zzc$1;->zzVU:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzb(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1$1;->zzVW:Lcom/google/android/gms/auth/api/signin/internal/zzc$1;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc$1;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
