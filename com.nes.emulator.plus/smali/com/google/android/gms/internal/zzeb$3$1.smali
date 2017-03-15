.class Lcom/google/android/gms/internal/zzeb$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeb$3;->zza(Lcom/google/android/gms/internal/zzgb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzzF:Lcom/google/android/gms/internal/zzgb;

.field final synthetic zzzG:Lcom/google/android/gms/internal/zzeb$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeb$3;Lcom/google/android/gms/internal/zzgb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeb$3$1;->zzzG:Lcom/google/android/gms/internal/zzeb$3;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeb$3$1;->zzzF:Lcom/google/android/gms/internal/zzgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzN:Lcom/google/android/gms/internal/zzgc;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzN:Lcom/google/android/gms/internal/zzgc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb$3$1;->zzzF:Lcom/google/android/gms/internal/zzgb;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgc;->zza(Lcom/google/android/gms/internal/zzgb;)V

    :cond_0
    return-void
.end method
