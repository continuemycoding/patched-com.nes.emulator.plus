.class Lcom/google/android/gms/internal/zzkj$zzd$1;
.super Lcom/google/android/gms/internal/zzkj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkj$zzd;->zza(Lcom/google/android/gms/internal/zzkk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzTu:Lcom/google/android/gms/internal/zzkj$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkj$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkj$zzd$1;->zzTu:Lcom/google/android/gms/internal/zzkj$zzd;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkj$zzd$1;->zzTu:Lcom/google/android/gms/internal/zzkj$zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkj$zzd;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
