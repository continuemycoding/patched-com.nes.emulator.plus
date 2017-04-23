.class Lcom/google/android/gms/internal/zzpy$zzc;
.super Lcom/google/android/gms/internal/zzpp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzc"
.end annotation


# instance fields
.field private final zzakL:Lcom/google/android/gms/internal/zzlx$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlx$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxW:Lcom/google/android/gms/internal/zzpy$zza;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlx$zzb;Lcom/google/android/gms/internal/zzpy$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlx$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/zzpy$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpp$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpy$zzc;->zzakL:Lcom/google/android/gms/internal/zzlx$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpy$zzc;->zzaxW:Lcom/google/android/gms/internal/zzpy$zza;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlx$zzb;Lcom/google/android/gms/internal/zzpy$zza;Lcom/google/android/gms/internal/zzpy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzpy$zzc;-><init>(Lcom/google/android/gms/internal/zzlx$zzb;Lcom/google/android/gms/internal/zzpy$zza;)V

    return-void
.end method


# virtual methods
.method public zzp(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzc;->zzaxW:Lcom/google/android/gms/internal/zzpy$zza;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzc;->zzaxW:Lcom/google/android/gms/internal/zzpy$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpy$zza;->zzuf()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzc;->zzakL:Lcom/google/android/gms/internal/zzlx$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzlx$zzb;->zzr(Ljava/lang/Object;)V

    return-void
.end method
