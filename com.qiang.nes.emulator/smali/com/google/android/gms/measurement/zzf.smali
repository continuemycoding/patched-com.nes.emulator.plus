.class public abstract Lcom/google/android/gms/measurement/zzf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/measurement/zzf;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzaRu:Lcom/google/android/gms/measurement/zzg;

.field protected final zzaRv:Lcom/google/android/gms/measurement/zzc;

.field private final zzaRw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/zzg;Lcom/google/android/gms/internal/zznl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/zzf;->zzaRu:Lcom/google/android/gms/measurement/zzg;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaRw:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/zzc;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/measurement/zzc;-><init>(Lcom/google/android/gms/measurement/zzf;Lcom/google/android/gms/internal/zznl;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzc;->zzzO()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaRv:Lcom/google/android/gms/measurement/zzc;

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/measurement/zzc;)V
    .locals 0

    return-void
.end method

.method protected zzd(Lcom/google/android/gms/measurement/zzc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaRw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zzd;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/measurement/zzd;->zza(Lcom/google/android/gms/measurement/zzf;Lcom/google/android/gms/measurement/zzc;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzig()Lcom/google/android/gms/measurement/zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaRv:Lcom/google/android/gms/measurement/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzc;->zzzE()Lcom/google/android/gms/measurement/zzc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzf;->zzd(Lcom/google/android/gms/measurement/zzc;)V

    return-object v0
.end method

.method protected zzzM()Lcom/google/android/gms/measurement/zzg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaRu:Lcom/google/android/gms/measurement/zzg;

    return-object v0
.end method

.method public zzzP()Lcom/google/android/gms/measurement/zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaRv:Lcom/google/android/gms/measurement/zzc;

    return-object v0
.end method

.method public zzzQ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/zzi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaRv:Lcom/google/android/gms/measurement/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzc;->zzzG()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
