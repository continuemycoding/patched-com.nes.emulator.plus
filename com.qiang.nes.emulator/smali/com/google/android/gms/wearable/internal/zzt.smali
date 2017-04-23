.class public final Lcom/google/android/gms/wearable/internal/zzt;
.super Lcom/google/android/gms/wearable/internal/zzaw$zza;


# instance fields
.field private zzbnf:Lcom/google/android/gms/wearable/internal/zzm;

.field private zzbnj:Lcom/google/android/gms/wearable/internal/zzu;

.field private final zzpK:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zzaw$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzt;->zzpK:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wearable/internal/zzu;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzt;->zzpK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzu;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzt;->zzbnj:Lcom/google/android/gms/wearable/internal/zzu;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzt;->zzbnf:Lcom/google/android/gms/wearable/internal/zzm;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/internal/zzu;->zzb(Lcom/google/android/gms/wearable/internal/zzm;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public zzx(II)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzt;->zzpK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzt;->zzbnj:Lcom/google/android/gms/wearable/internal/zzu;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzm;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/wearable/internal/zzm;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/internal/zzt;->zzbnf:Lcom/google/android/gms/wearable/internal/zzm;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lcom/google/android/gms/wearable/internal/zzu;->zzb(Lcom/google/android/gms/wearable/internal/zzm;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
