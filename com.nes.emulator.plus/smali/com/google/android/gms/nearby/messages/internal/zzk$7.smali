.class Lcom/google/android/gms/nearby/messages/internal/zzk$7;
.super Lcom/google/android/gms/nearby/messages/internal/zzk$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzk;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaXC:Lcom/google/android/gms/nearby/messages/MessageListener;

.field final synthetic zzaXz:Lcom/google/android/gms/nearby/messages/internal/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzk;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$7;->zzaXz:Lcom/google/android/gms/nearby/messages/internal/zzk;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$7;->zzaXC:Lcom/google/android/gms/nearby/messages/MessageListener;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzk$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzk$7;->zza(Lcom/google/android/gms/nearby/messages/internal/zzj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$7;->zzaXC:Lcom/google/android/gms/nearby/messages/MessageListener;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zza(Lcom/google/android/gms/internal/zzlx$zzb;Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void
.end method
