.class Lcom/google/android/gms/measurement/internal/zzp$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzAk:I

.field private final zzaTv:Lcom/google/android/gms/measurement/internal/zzp$zza;

.field private final zzaTw:Ljava/lang/Throwable;

.field private final zzaTx:[B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzp$zza;ILjava/lang/Throwable;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp$zzb;->zzaTv:Lcom/google/android/gms/measurement/internal/zzp$zza;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzp$zzb;->zzAk:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzp$zzb;->zzaTw:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzp$zzb;->zzaTx:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzp$zza;ILjava/lang/Throwable;[BLcom/google/android/gms/measurement/internal/zzp$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzp$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzp$zza;ILjava/lang/Throwable;[B)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp$zzb;->zzaTv:Lcom/google/android/gms/measurement/internal/zzp$zza;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzp$zzb;->zzAk:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzp$zzb;->zzaTw:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzp$zzb;->zzaTx:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zza(ILjava/lang/Throwable;[B)V

    return-void
.end method
