.class Lcom/google/android/gms/nearby/messages/internal/zzj$2;
.super Lcom/google/android/gms/nearby/messages/internal/zzj$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzj$zze",
        "<",
        "Lcom/google/android/gms/nearby/messages/MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaXt:Lcom/google/android/gms/nearby/messages/internal/zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzj;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$2;->zzaXt:Lcom/google/android/gms/nearby/messages/internal/zzj;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzj$1;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzF(Ljava/lang/Object;)Landroid/os/IBinder;
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/messages/MessageListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzj$2;->zza(Lcom/google/android/gms/nearby/messages/MessageListener;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/MessageListener;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzj$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/nearby/messages/internal/zzj$zza;-><init>(Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/internal/zzj$1;)V

    return-object v0
.end method
