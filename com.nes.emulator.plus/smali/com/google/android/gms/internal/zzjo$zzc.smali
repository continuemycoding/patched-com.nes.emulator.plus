.class Lcom/google/android/gms/internal/zzjo$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzjo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzc"
.end annotation


# instance fields
.field private zzMh:Lcom/google/android/gms/ads/internal/overlay/zzg;

.field private zzMt:Lcom/google/android/gms/internal/zzjn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/ads/internal/overlay/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjo$zzc;->zzMt:Lcom/google/android/gms/internal/zzjn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjo$zzc;->zzMh:Lcom/google/android/gms/ads/internal/overlay/zzg;

    return-void
.end method


# virtual methods
.method public zzaX()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo$zzc;->zzMh:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzaX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo$zzc;->zzMt:Lcom/google/android/gms/internal/zzjn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjn;->zzhw()V

    return-void
.end method

.method public zzaY()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo$zzc;->zzMh:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzaY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo$zzc;->zzMt:Lcom/google/android/gms/internal/zzjn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjn;->zzfg()V

    return-void
.end method
