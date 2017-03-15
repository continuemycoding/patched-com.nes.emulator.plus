.class Lcom/google/android/gms/measurement/internal/zzac;
.super Ljava/lang/Object;


# instance fields
.field final mName:Ljava/lang/String;

.field final zzLI:Ljava/lang/Object;

.field final zzaRd:Ljava/lang/String;

.field final zzaVf:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzcG(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcG(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzx;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzaRd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzac;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzaVf:J

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzLI:Ljava/lang/Object;

    return-void
.end method
