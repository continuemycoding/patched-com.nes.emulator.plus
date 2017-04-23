.class Lcom/google/android/gms/measurement/AppMeasurementService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/AppMeasurementService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzNv:I

.field final synthetic zzaQZ:Lcom/google/android/gms/measurement/internal/zzt;

.field final synthetic zzaRa:Lcom/google/android/gms/measurement/internal/zzo;

.field final synthetic zzaRb:Lcom/google/android/gms/measurement/AppMeasurementService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/AppMeasurementService;Lcom/google/android/gms/measurement/internal/zzt;ILcom/google/android/gms/measurement/internal/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaRb:Lcom/google/android/gms/measurement/AppMeasurementService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaQZ:Lcom/google/android/gms/measurement/internal/zzt;

    iput p3, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzNv:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaRa:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaQZ:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzBK()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->zzaRb:Lcom/google/android/gms/measurement/AppMeasurementService;

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zza(Lcom/google/android/gms/measurement/AppMeasurementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;-><init>(Lcom/google/android/gms/measurement/AppMeasurementService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
