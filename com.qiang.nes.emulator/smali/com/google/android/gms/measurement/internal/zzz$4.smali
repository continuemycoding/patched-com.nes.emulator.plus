.class Lcom/google/android/gms/measurement/internal/zzz$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzz;->zzb(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaFm:Ljava/lang/String;

.field final synthetic zzaUE:Lcom/google/android/gms/measurement/internal/EventParcel;

.field final synthetic zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzz;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaFm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaUE:Lcom/google/android/gms/measurement/internal/EventParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzz;->zzc(Lcom/google/android/gms/measurement/internal/zzz;)Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaFm:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaUE:Lcom/google/android/gms/measurement/internal/EventParcel;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzz;->zzAS()Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzo;->zzBs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzm;->zzex(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/AppMetadata;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzl;->zza(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzz;->zzd(Lcom/google/android/gms/measurement/internal/zzz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzo;->zzBl()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v1

    const-string v2, "Failed to send event to AppMeasurementService"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaUE:Lcom/google/android/gms/measurement/internal/EventParcel;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaFm:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzz$4;->zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzo;->zzBs()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzl;->zza(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
