.class Lcom/google/android/gms/drive/internal/zzs$5$1;
.super Lcom/google/android/gms/drive/internal/zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/zzs$5;->zza(Lcom/google/android/gms/drive/internal/zzu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaoD:Lcom/google/android/gms/drive/internal/zzt;

.field final synthetic zzaoE:Lcom/google/android/gms/drive/internal/zzs$5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzs$5;Lcom/google/android/gms/drive/internal/zzt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzs$5$1;->zzaoE:Lcom/google/android/gms/drive/internal/zzs$5;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/zzs$5$1;->zzaoD:Lcom/google/android/gms/drive/internal/zzt;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public zzac(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzs$5$1;->zzaoD:Lcom/google/android/gms/drive/internal/zzt;

    new-instance v1, Lcom/google/android/gms/common/api/BooleanResult;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaeX:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/common/api/BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/internal/zzt;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
