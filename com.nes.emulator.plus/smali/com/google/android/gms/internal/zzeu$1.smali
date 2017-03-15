.class Lcom/google/android/gms/internal/zzeu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeu;->zzc(Ljava/util/List;)Lcom/google/android/gms/internal/zzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzBE:Lcom/google/android/gms/internal/zzer;

.field final synthetic zzBF:Lcom/google/android/gms/internal/zzeu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeu;Lcom/google/android/gms/internal/zzer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeu$1;->zzBF:Lcom/google/android/gms/internal/zzeu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeu$1;->zzBE:Lcom/google/android/gms/internal/zzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeu$1;->zzBE:Lcom/google/android/gms/internal/zzer;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzer;->zzBq:Lcom/google/android/gms/internal/zzex;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzex;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
