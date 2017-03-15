.class Lcom/google/android/gms/internal/zzme$zzc;
.super Lcom/google/android/gms/internal/zzme$zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzafW:Lcom/google/android/gms/internal/zzme;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzme;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzme$zzc;->zzafW:Lcom/google/android/gms/internal/zzme;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzme$zzi;-><init>(Lcom/google/android/gms/internal/zzme;Lcom/google/android/gms/internal/zzme$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzme;Lcom/google/android/gms/internal/zzme$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzme$zzc;-><init>(Lcom/google/android/gms/internal/zzme;)V

    return-void
.end method


# virtual methods
.method public zzpc()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$zzc;->zzafW:Lcom/google/android/gms/internal/zzme;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzme;->zzf(Lcom/google/android/gms/internal/zzme;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzme$zzc;->zzafW:Lcom/google/android/gms/internal/zzme;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzme;->zzg(Lcom/google/android/gms/internal/zzme;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzme$zzc;->zzafW:Lcom/google/android/gms/internal/zzme;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzme;->zzd(Lcom/google/android/gms/internal/zzme;)Lcom/google/android/gms/internal/zzmi;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmi;->zzafp:Lcom/google/android/gms/internal/zzmg;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzmg;->zzagq:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/internal/zzme$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzme$zzc;->zzafW:Lcom/google/android/gms/internal/zzme;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzme$zza;-><init>(Lcom/google/android/gms/internal/zzme;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;Lcom/google/android/gms/signin/internal/zze;)V

    return-void
.end method
