.class final Lcom/google/android/gms/internal/zzjd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjd;->zza(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/internal/zzjd$zza;)Lcom/google/android/gms/internal/zzje;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzLL:Lcom/google/android/gms/internal/zzjb;

.field final synthetic zzLM:Lcom/google/android/gms/internal/zzjd$zza;

.field final synthetic zzLN:Lcom/google/android/gms/internal/zzje;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjb;Lcom/google/android/gms/internal/zzjd$zza;Lcom/google/android/gms/internal/zzje;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjd$1;->zzLL:Lcom/google/android/gms/internal/zzjb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjd$1;->zzLM:Lcom/google/android/gms/internal/zzjd$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjd$1;->zzLN:Lcom/google/android/gms/internal/zzje;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd$1;->zzLL:Lcom/google/android/gms/internal/zzjb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjd$1;->zzLM:Lcom/google/android/gms/internal/zzjd$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjd$1;->zzLN:Lcom/google/android/gms/internal/zzje;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzje;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzjd$zza;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjb;->zzf(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjd$1;->zzLL:Lcom/google/android/gms/internal/zzjb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjb;->cancel(Z)Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
