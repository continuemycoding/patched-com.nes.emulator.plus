.class Lcom/google/android/gms/internal/zzlp$1;
.super Lcom/google/android/gms/internal/zzls$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlp;->zza(Lcom/google/android/gms/internal/zzlq;Lcom/google/android/gms/internal/zzls;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzadf:Lcom/google/android/gms/internal/zzls;

.field final synthetic zzadg:Lcom/google/android/gms/internal/zzlp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlp;Lcom/google/android/gms/internal/zzls;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp$1;->zzadg:Lcom/google/android/gms/internal/zzlp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlp$1;->zzadf:Lcom/google/android/gms/internal/zzls;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzls$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbp(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzlp;->zzok()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object v0

    const-string v1, "onRemoteDisplayEnded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$1;->zzadf:Lcom/google/android/gms/internal/zzls;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$1;->zzadf:Lcom/google/android/gms/internal/zzls;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzls;->zzbp(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$1;->zzadg:Lcom/google/android/gms/internal/zzlp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlp;->zzb(Lcom/google/android/gms/internal/zzlp;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$1;->zzadg:Lcom/google/android/gms/internal/zzlp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlp;->zzb(Lcom/google/android/gms/internal/zzlp;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;->onRemoteDisplayEnded(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    return-void
.end method
