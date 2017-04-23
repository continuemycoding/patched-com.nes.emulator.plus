.class Lcom/google/android/gms/internal/zzef;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzef$zza;
    }
.end annotation


# instance fields
.field private final zzpH:Ljava/lang/String;

.field private zzqo:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field private final zzzW:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzef$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzzW:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzef;->zzqo:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzef;->zzpH:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzef;->zzqo:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzef;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzpH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzef;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzzW:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzef;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzqo:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method


# virtual methods
.method getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzpH:Ljava/lang/String;

    return-object v0
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzzW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method zzb(Lcom/google/android/gms/internal/zzea;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzef$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzef$zza;-><init>(Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/internal/zzea;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zzzW:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zzqo:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzef$zza;->zzh(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    return-void
.end method

.method zzeb()Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzqo:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-object v0
.end method

.method zzec()Lcom/google/android/gms/internal/zzef$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzzW:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzef$zza;

    return-object v0
.end method
