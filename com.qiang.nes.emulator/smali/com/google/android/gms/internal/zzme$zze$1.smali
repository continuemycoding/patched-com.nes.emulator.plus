.class Lcom/google/android/gms/internal/zzme$zze$1;
.super Lcom/google/android/gms/internal/zzmi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzme$zze;->zzpc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzage:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zzagf:Lcom/google/android/gms/internal/zzme$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzme$zze;Lcom/google/android/gms/internal/zzmh;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzme$zze$1;->zzagf:Lcom/google/android/gms/internal/zzme$zze;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzme$zze$1;->zzage:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmi$zza;-><init>(Lcom/google/android/gms/internal/zzmh;)V

    return-void
.end method


# virtual methods
.method public zzpc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$zze$1;->zzagf:Lcom/google/android/gms/internal/zzme$zze;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzme$zze;->zzafW:Lcom/google/android/gms/internal/zzme;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzme$zze$1;->zzage:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/internal/zzme;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
