.class public Lcom/google/android/gms/internal/zzcf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation


# instance fields
.field private final zzwX:J

.field private final zzwY:Ljava/lang/String;

.field private final zzwZ:Lcom/google/android/gms/internal/zzcf;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzcf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcf;->zzwX:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcf;->zzwY:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcf;->zzwZ:Lcom/google/android/gms/internal/zzcf;

    return-void
.end method


# virtual methods
.method getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcf;->zzwX:J

    return-wide v0
.end method

.method zzdr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcf;->zzwY:Ljava/lang/String;

    return-object v0
.end method

.method zzds()Lcom/google/android/gms/internal/zzcf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcf;->zzwZ:Lcom/google/android/gms/internal/zzcf;

    return-object v0
.end method
