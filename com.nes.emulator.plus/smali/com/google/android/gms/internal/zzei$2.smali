.class Lcom/google/android/gms/internal/zzei$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzjg$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzei;->zzeh()Lcom/google/android/gms/internal/zzei$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzjg$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzbb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzAm:Lcom/google/android/gms/internal/zzei;

.field final synthetic zzAt:Lcom/google/android/gms/internal/zzei$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzei;Lcom/google/android/gms/internal/zzei$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzei$2;->zzAm:Lcom/google/android/gms/internal/zzei;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzei$2;->zzAt:Lcom/google/android/gms/internal/zzei$zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbb;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei$2;->zzAm:Lcom/google/android/gms/internal/zzei;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzei;->zzc(Lcom/google/android/gms/internal/zzei;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzei$2;->zzAm:Lcom/google/android/gms/internal/zzei;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzei;->zza(Lcom/google/android/gms/internal/zzei;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei$2;->zzAm:Lcom/google/android/gms/internal/zzei;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzei;->zzg(Lcom/google/android/gms/internal/zzei;)Lcom/google/android/gms/internal/zzei$zze;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei$2;->zzAt:Lcom/google/android/gms/internal/zzei$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzei$2;->zzAm:Lcom/google/android/gms/internal/zzei;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzei;->zzg(Lcom/google/android/gms/internal/zzei;)Lcom/google/android/gms/internal/zzei$zze;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei$2;->zzAm:Lcom/google/android/gms/internal/zzei;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzei;->zzg(Lcom/google/android/gms/internal/zzei;)Lcom/google/android/gms/internal/zzei$zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzei$zze;->zzel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzei$2;->zzAm:Lcom/google/android/gms/internal/zzei;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzei$2;->zzAt:Lcom/google/android/gms/internal/zzei$zze;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzei;->zza(Lcom/google/android/gms/internal/zzei;Lcom/google/android/gms/internal/zzei$zze;)Lcom/google/android/gms/internal/zzei$zze;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzei$2;->zza(Lcom/google/android/gms/internal/zzbb;)V

    return-void
.end method
