.class Lcom/google/android/gms/internal/zzst$2;
.super Lcom/google/android/gms/wallet/Wallet$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzst;->loadMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaJM:I

.field final synthetic zzbln:Lcom/google/android/gms/internal/zzst;

.field final synthetic zzblo:Lcom/google/android/gms/wallet/MaskedWalletRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzst;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzst$2;->zzbln:Lcom/google/android/gms/internal/zzst;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzst$2;->zzblo:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput p4, p0, Lcom/google/android/gms/internal/zzst$2;->zzaJM:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzsu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzst$2;->zza(Lcom/google/android/gms/internal/zzsu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzsu;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzst$2;->zzblo:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget v1, p0, Lcom/google/android/gms/internal/zzst$2;->zzaJM:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsu;->zza(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaeX:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzst$2;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
