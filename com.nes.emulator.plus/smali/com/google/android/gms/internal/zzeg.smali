.class public Lcom/google/android/gms/internal/zzeg;
.super Lcom/google/android/gms/ads/internal/client/zzs$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation


# instance fields
.field private zzAd:Lcom/google/android/gms/internal/zzec;

.field private zzAe:Lcom/google/android/gms/internal/zzgg;

.field private zzAf:Ljava/lang/String;

.field private zzpH:Ljava/lang/String;

.field private zzzU:Lcom/google/android/gms/internal/zzea;

.field private zzzX:Lcom/google/android/gms/ads/internal/zzk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzea;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4, p5}, Lcom/google/android/gms/internal/zzea;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzew;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzeg;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzea;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzea;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzs$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg;->zzpH:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeg;->zzzU:Lcom/google/android/gms/internal/zzea;

    new-instance v0, Lcom/google/android/gms/internal/zzec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzec;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbI()Lcom/google/android/gms/internal/zzed;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzed;->zza(Lcom/google/android/gms/internal/zzea;)V

    return-void
.end method

.method private zzee()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAe:Lcom/google/android/gms/internal/zzgg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzAe:Lcom/google/android/gms/internal/zzgg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg;->zzAf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/internal/zzgg;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method abort()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzU:Lcom/google/android/gms/internal/zzea;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzea;->zzac(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzec;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeg;->zzee()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->destroy()V

    :cond_0
    return-void
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->resume()V

    :cond_0
    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 1
    .param p1, "manualImpressionsEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeg;->abort()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzk;->setManualImpressionsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public showInterstitial()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->showInterstitial()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before showInterstitial()."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->stopLoading()V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzec;->zzzP:Lcom/google/android/gms/ads/internal/client/zzn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzec;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzec;->zzpz:Lcom/google/android/gms/ads/internal/client/zzo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzec;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzec;->zzzM:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzec;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeg;->abort()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/ads/internal/client/zzv;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzcl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzec;->zzzO:Lcom/google/android/gms/internal/zzcl;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzec;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzgc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzec;->zzzN:Lcom/google/android/gms/internal/zzgc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzec;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzgg;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg;->zzAe:Lcom/google/android/gms/internal/zzgg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeg;->zzAf:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeg;->zzee()V

    return-void
.end method

.method public zzaO()Lcom/google/android/gms/dynamic/zzd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->zzaO()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaP()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->zzaP()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaR()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzk;->zzaR()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before pingManualTrackingUrl()."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztx:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeg;->abort()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzk;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbI()Lcom/google/android/gms/internal/zzed;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpH:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzed;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)Lcom/google/android/gms/internal/zzef$zza;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzef$zza;->zzAa:Z

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzef$zza;->zzh(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/zzef$zza;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzzU:Lcom/google/android/gms/internal/zzea;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzef$zza;->zzc(Lcom/google/android/gms/internal/zzea;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzef$zza;->zzzY:Lcom/google/android/gms/internal/zzeb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzeb;->zza(Lcom/google/android/gms/internal/zzec;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzec;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeg;->zzee()V

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzef$zza;->zzAb:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzU:Lcom/google/android/gms/internal/zzea;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzpH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzea;->zzac(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzAd:Lcom/google/android/gms/internal/zzec;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzec;->zzc(Lcom/google/android/gms/ads/internal/zzk;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeg;->zzee()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzX:Lcom/google/android/gms/ads/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzk;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    goto :goto_0
.end method
