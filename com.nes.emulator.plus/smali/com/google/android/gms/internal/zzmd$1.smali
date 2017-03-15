.class Lcom/google/android/gms/internal/zzmd$1;
.super Lcom/google/android/gms/internal/zzmi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmd;->zzb(Lcom/google/android/gms/internal/zzlx$zza;)Lcom/google/android/gms/internal/zzlx$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzafE:Lcom/google/android/gms/internal/zzmd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zzmh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmd$1;->zzafE:Lcom/google/android/gms/internal/zzmd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmi$zza;-><init>(Lcom/google/android/gms/internal/zzmh;)V

    return-void
.end method


# virtual methods
.method public zzpc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmd$1;->zzafE:Lcom/google/android/gms/internal/zzmd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmd;->onConnectionSuspended(I)V

    return-void
.end method
