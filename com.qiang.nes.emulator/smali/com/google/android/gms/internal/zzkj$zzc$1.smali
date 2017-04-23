.class Lcom/google/android/gms/internal/zzkj$zzc$1;
.super Lcom/google/android/gms/internal/zzkj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkj$zzc;->zza(Lcom/google/android/gms/internal/zzkk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzTt:Lcom/google/android/gms/internal/zzkj$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkj$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkj$zzc$1;->zzTt:Lcom/google/android/gms/internal/zzkj$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkj$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkj$zzc$1;->zzTt:Lcom/google/android/gms/internal/zzkj$zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkj$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
