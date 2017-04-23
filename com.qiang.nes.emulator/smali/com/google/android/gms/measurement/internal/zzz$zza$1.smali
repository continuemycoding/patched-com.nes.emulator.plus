.class Lcom/google/android/gms/measurement/internal/zzz$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzz$zza;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaVc:Lcom/google/android/gms/measurement/internal/zzl;

.field final synthetic zzaVd:Lcom/google/android/gms/measurement/internal/zzz$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzz$zza;Lcom/google/android/gms/measurement/internal/zzl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz$zza$1;->zzaVd:Lcom/google/android/gms/measurement/internal/zzz$zza;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzz$zza$1;->zzaVc:Lcom/google/android/gms/measurement/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz$zza$1;->zzaVd:Lcom/google/android/gms/measurement/internal/zzz$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzz$zza;->zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzz;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz$zza$1;->zzaVd:Lcom/google/android/gms/measurement/internal/zzz$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzz$zza;->zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzz;->zzzz()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzBq()Lcom/google/android/gms/measurement/internal/zzo$zza;

    move-result-object v0

    const-string v1, "Connected to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzez(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz$zza$1;->zzaVd:Lcom/google/android/gms/measurement/internal/zzz$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzz$zza;->zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz$zza$1;->zzaVc:Lcom/google/android/gms/measurement/internal/zzl;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzl;)V

    :cond_0
    return-void
.end method
