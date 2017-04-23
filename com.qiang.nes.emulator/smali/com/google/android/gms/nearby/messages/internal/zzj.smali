.class Lcom/google/android/gms/nearby/messages/internal/zzj;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/internal/zzj$zze;,
        Lcom/google/android/gms/nearby/messages/internal/zzj$zzc;,
        Lcom/google/android/gms/nearby/messages/internal/zzj$zzb;,
        Lcom/google/android/gms/nearby/messages/internal/zzj$zzd;,
        Lcom/google/android/gms/nearby/messages/internal/zzj$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/nearby/messages/internal/zzd;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzTz:Ljava/lang/String;

.field private final zzaXo:Ljava/lang/String;

.field private final zzaXp:Z

.field private final zzaXq:Z

.field private final zzaXr:Lcom/google/android/gms/nearby/messages/internal/zzj$zze;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/nearby/messages/internal/zzj$zze",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaXs:Lcom/google/android/gms/nearby/messages/internal/zzj$zze;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/nearby/messages/internal/zzj$zze",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/nearby/messages/MessagesOptions;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v3, 0x3e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzj$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/nearby/messages/internal/zzj$1;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzj;)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXr:Lcom/google/android/gms/nearby/messages/internal/zzj$zze;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzj$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/nearby/messages/internal/zzj$2;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzj;)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXs:Lcom/google/android/gms/nearby/messages/internal/zzj$zze;

    invoke-virtual {p5}, Lcom/google/android/gms/common/internal/zzf;->zzqd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzTz:Ljava/lang/String;

    if-eqz p6, :cond_0

    iget-object v0, p6, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzaWI:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXo:Ljava/lang/String;

    iget-boolean v0, p6, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzaWJ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXp:Z

    iget-boolean v0, p6, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzaWK:Z

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXq:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXo:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXp:Z

    iput-boolean v7, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXq:Z

    goto :goto_0
.end method


# virtual methods
.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzdz(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method zza(Lcom/google/android/gms/internal/zzlx$zzb;Lcom/google/android/gms/nearby/messages/MessageListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlx$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqr()V

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXs:Lcom/google/android/gms/nearby/messages/internal/zzj$zze;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;->zzG(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzm;->zzk(Lcom/google/android/gms/internal/zzlx$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzm;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXo:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzTz:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXq:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqs()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/nearby/messages/internal/zzd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzd;->zza(Lcom/google/android/gms/nearby/messages/internal/UnsubscribeRequest;)V

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXs:Lcom/google/android/gms/nearby/messages/internal/zzj$zze;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;->zzH(Ljava/lang/Object;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzlx$zzb;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/SubscribeOptions;[B)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlx$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            "Lcom/google/android/gms/nearby/messages/SubscribeOptions;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqr()V

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXs:Lcom/google/android/gms/nearby/messages/internal/zzj$zze;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;->zzG(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzm;->zzk(Lcom/google/android/gms/internal/zzlx$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzm;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getFilter()Lcom/google/android/gms/nearby/messages/MessageFilter;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXo:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzTz:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXp:Z

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getCallback()Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/nearby/messages/internal/zzj$zzd;->zzb(Lcom/google/android/gms/nearby/messages/SubscribeCallback;)Lcom/google/android/gms/nearby/messages/internal/zzj$zzd;

    move-result-object v11

    iget-boolean v12, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXq:Z

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;[BZLandroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqs()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/nearby/messages/internal/zzd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzd;->zza(Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzlx$zzb;Lcom/google/android/gms/nearby/messages/StatusCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlx$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqr()V

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzm;->zzk(Lcom/google/android/gms/internal/zzlx$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzm;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXr:Lcom/google/android/gms/nearby/messages/internal/zzj$zze;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;->zzG(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXo:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzaXK:Z

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqs()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzd;->zza(Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzlx$zzb;Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlx$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqr()V

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzm;->zzk(Lcom/google/android/gms/internal/zzlx$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzm;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXo:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzTz:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXq:Z

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;-><init>(Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqs()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/nearby/messages/internal/zzd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzd;->zza(Lcom/google/android/gms/nearby/messages/internal/UnpublishRequest;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzlx$zzb;Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;Lcom/google/android/gms/nearby/messages/PublishOptions;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlx$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;",
            "Lcom/google/android/gms/nearby/messages/PublishOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqr()V

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/messages/PublishOptions;->getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzm;->zzk(Lcom/google/android/gms/internal/zzlx$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzm;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXo:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzTz:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXp:Z

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/messages/PublishOptions;->getCallback()Lcom/google/android/gms/nearby/messages/PublishCallback;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/nearby/messages/internal/zzj$zzb;->zzb(Lcom/google/android/gms/nearby/messages/PublishCallback;)Lcom/google/android/gms/nearby/messages/internal/zzj$zzb;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXq:Z

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/nearby/messages/internal/PublishRequest;-><init>(Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqs()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/nearby/messages/internal/zzd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzd;->zza(Lcom/google/android/gms/nearby/messages/internal/PublishRequest;)V

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzlx$zzb;Lcom/google/android/gms/nearby/messages/StatusCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlx$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqr()V

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzm;->zzk(Lcom/google/android/gms/internal/zzlx$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzm;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXr:Lcom/google/android/gms/nearby/messages/internal/zzj$zze;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;->zzG(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXo:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;->zzaXK:Z

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqs()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzd;->zza(Lcom/google/android/gms/nearby/messages/internal/RegisterStatusCallbackRequest;)V

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXr:Lcom/google/android/gms/nearby/messages/internal/zzj$zze;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;->zzH(Ljava/lang/Object;)V

    return-void
.end method

.method protected zzdz(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzd;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzd$zza;->zzdv(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/messages/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method protected zzgh()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.messages.service.NearbyMessagesService.START"

    return-object v0
.end method

.method protected zzgi()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.messages.internal.INearbyMessagesService"

    return-object v0
.end method

.method zzj(Lcom/google/android/gms/internal/zzlx$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlx$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqr()V

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzm;->zzk(Lcom/google/android/gms/internal/zzlx$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzm;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzaXo:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zzqs()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzd;->zza(Lcom/google/android/gms/nearby/messages/internal/GetPermissionStatusRequest;)V

    return-void
.end method
