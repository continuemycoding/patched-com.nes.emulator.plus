.class final Lcom/google/android/gms/internal/zzog$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/internal/zze$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzog;->zze(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public zzte()Ljava/lang/String;
    .locals 1

    const-string v0, "customPropertiesExtraHolder"

    return-object v0
.end method
