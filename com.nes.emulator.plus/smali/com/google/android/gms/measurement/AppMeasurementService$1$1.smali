.class Lcom/google/android/gms/measurement/AppMeasurementService$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/AppMeasurementService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaRc:Lcom/google/android/gms/measurement/AppMeasurementService$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/AppMeasurementService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;->zzaRc:Lcom/google/android/gms/measurement/AppMeasurementService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;->zzaRc:Lcom/google/android/gms/measurement/AppMeasurementService$1;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaRb:Lcom/google/android/gms/measurement/AppMeasurementService;

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;->zzaRc:Lcom/google/android/gms/measurement/AppMeasurementService$1;

    iget v1, v1, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzNv:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurementService;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;->zzaRc:Lcom/google/android/gms/measurement/AppMeasurementService$1;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaQZ:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAX()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzc;->zzka()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;->zzaRc:Lcom/google/android/gms/measurement/AppMeasurementService$1;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaRa:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Device AppMeasurementService processed last upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;->zzaRc:Lcom/google/android/gms/measurement/AppMeasurementService$1;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaRa:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBr()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Local AppMeasurementService processed last upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    goto :goto_0
.end method
