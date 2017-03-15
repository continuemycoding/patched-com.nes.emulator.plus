.class Lcom/google/android/gms/internal/zzeb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzeb$zza;
    }
.end annotation


# instance fields
.field private final zzpw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzeb$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzpw:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeb;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzpw:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/zzec;)V
    .locals 4

    sget-object v1, Lcom/google/android/gms/internal/zzip;->zzKO:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb;->zzpw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeb$zza;

    new-instance v3, Lcom/google/android/gms/internal/zzeb$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/gms/internal/zzeb$6;-><init>(Lcom/google/android/gms/internal/zzeb;Lcom/google/android/gms/internal/zzeb$zza;Lcom/google/android/gms/internal/zzec;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method zzc(Lcom/google/android/gms/ads/internal/zzk;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeb$1;-><init>(Lcom/google/android/gms/internal/zzeb;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/ads/internal/client/zzo;)V

    new-instance v0, Lcom/google/android/gms/internal/zzeb$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeb$2;-><init>(Lcom/google/android/gms/internal/zzeb;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/ads/internal/client/zzu;)V

    new-instance v0, Lcom/google/android/gms/internal/zzeb$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeb$3;-><init>(Lcom/google/android/gms/internal/zzeb;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/internal/zzgc;)V

    new-instance v0, Lcom/google/android/gms/internal/zzeb$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeb$4;-><init>(Lcom/google/android/gms/internal/zzeb;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/internal/zzcl;)V

    new-instance v0, Lcom/google/android/gms/internal/zzeb$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeb$5;-><init>(Lcom/google/android/gms/internal/zzeb;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzk;->zza(Lcom/google/android/gms/ads/internal/client/zzn;)V

    return-void
.end method
