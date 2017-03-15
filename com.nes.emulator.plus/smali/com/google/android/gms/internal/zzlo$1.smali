.class Lcom/google/android/gms/internal/zzlo$1;
.super Lcom/google/android/gms/internal/zzls$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzada:Lcom/google/android/gms/internal/zzlo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlo$1;->zzada:Lcom/google/android/gms/internal/zzlo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzls$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbp(I)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzlo;->zzok()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object v0

    const-string v1, "onRemoteDisplayEnded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlo$1;->zzada:Lcom/google/android/gms/internal/zzlo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlo;->zza(Lcom/google/android/gms/internal/zzlo;)V

    return-void
.end method
