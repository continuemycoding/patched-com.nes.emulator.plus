.class final Lcom/google/android/gms/internal/zzkj$zze;
.super Lcom/google/android/gms/internal/zzkj$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzkj$zzb",
        "<",
        "Lcom/google/android/gms/appinvite/AppInviteInvitationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzTs:Lcom/google/android/gms/internal/zzkj;

.field private final zzTv:Landroid/app/Activity;

.field private final zzTw:Z

.field private final zzTx:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzkj;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkj$zze;->zzTs:Lcom/google/android/gms/internal/zzkj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzkj$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkj$zze;->zzTv:Landroid/app/Activity;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzkj$zze;->zzTw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkj$zze;->zzTv:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkj$zze;->zzTv:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzkj$zze;->zzTx:Landroid/content/Intent;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzkj$zze;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkj$zze;->zzTw:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzkj$zze;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkj$zze;->zzTv:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzkk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzkj$zze;->zza(Lcom/google/android/gms/internal/zzkk;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzkk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkj$zze;->zzTx:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/appinvite/AppInviteReferral;->hasReferral(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzkl;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzaeX:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkj$zze;->zzTx:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzkl;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzkj$zze;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzkj$zze$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkj$zze$1;-><init>(Lcom/google/android/gms/internal/zzkj$zze;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzkk;->zza(Lcom/google/android/gms/internal/zzkm;)V

    goto :goto_0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzkj$zze;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appinvite/AppInviteInvitationResult;

    move-result-object v0

    return-object v0
.end method

.method protected zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appinvite/AppInviteInvitationResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzkl;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzkl;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    return-object v0
.end method
