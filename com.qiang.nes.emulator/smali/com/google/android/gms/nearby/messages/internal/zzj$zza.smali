.class Lcom/google/android/gms/nearby/messages/internal/zzj$zza;
.super Lcom/google/android/gms/nearby/messages/internal/zzb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzaXu:Lcom/google/android/gms/nearby/messages/MessageListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/nearby/messages/MessageListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzb$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$zza;->zzaXu:Lcom/google/android/gms/nearby/messages/MessageListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/internal/zzj$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzj$zza;-><init>(Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$zza;->zzaXu:Lcom/google/android/gms/nearby/messages/MessageListener;

    iget-object v1, p1, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;->zzaXn:Lcom/google/android/gms/nearby/messages/Message;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/nearby/messages/MessageListener;->onFound(Lcom/google/android/gms/nearby/messages/Message;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$zza;->zzaXu:Lcom/google/android/gms/nearby/messages/MessageListener;

    iget-object v1, p1, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;->zzaXn:Lcom/google/android/gms/nearby/messages/Message;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/nearby/messages/MessageListener;->onLost(Lcom/google/android/gms/nearby/messages/Message;)V

    return-void
.end method
