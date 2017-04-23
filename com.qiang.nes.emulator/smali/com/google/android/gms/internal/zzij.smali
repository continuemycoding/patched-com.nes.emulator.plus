.class public Lcom/google/android/gms/internal/zzij;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation


# instance fields
.field private final zzJO:Ljava/lang/String;

.field private zzKq:I

.field private zzKr:I

.field private final zzpK:Ljava/lang/Object;

.field private final zzqC:Lcom/google/android/gms/internal/zzig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzig;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzij;->zzpK:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzij;->zzqC:Lcom/google/android/gms/internal/zzig;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzij;->zzJO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbA()Lcom/google/android/gms/internal/zzig;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzij;-><init>(Lcom/google/android/gms/internal/zzig;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzij;->zzpK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pmnli"

    iget v3, p0, Lcom/google/android/gms/internal/zzij;->zzKq:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pmnll"

    iget v3, p0, Lcom/google/android/gms/internal/zzij;->zzKr:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzg(II)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzij;->zzpK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzij;->zzKq:I

    iput p2, p0, Lcom/google/android/gms/internal/zzij;->zzKr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzij;->zzqC:Lcom/google/android/gms/internal/zzig;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzij;->zzJO:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/gms/internal/zzig;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzij;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
