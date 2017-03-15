.class Lcom/google/android/gms/internal/zzec$zza;
.super Lcom/google/android/gms/ads/internal/client/zzo$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field zzzQ:Lcom/google/android/gms/ads/internal/client/zzo;

.field final synthetic zzzR:Lcom/google/android/gms/internal/zzec;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/ads/internal/client/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzec$zza;->zzzR:Lcom/google/android/gms/internal/zzec;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzo$zza;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzec$zza;->zzzQ:Lcom/google/android/gms/ads/internal/client/zzo;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec$zza;->zzzQ:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdClosed()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbI()Lcom/google/android/gms/internal/zzed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzed;->zzdX()V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzec$zza;->zzzQ:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec$zza;->zzzQ:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdLeftApplication()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec$zza;->zzzQ:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdLoaded()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec$zza;->zzzQ:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdOpened()V

    return-void
.end method
