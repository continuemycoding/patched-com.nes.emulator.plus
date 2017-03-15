.class Lcom/google/android/gms/internal/zzdm$zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzyN:Lcom/google/android/gms/internal/zzdm;

.field private final zzyU:Lcom/google/android/gms/internal/zzdm$zzd;

.field private final zzyV:Z

.field private final zzyW:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdm;ZLcom/google/android/gms/internal/zzdm$zzd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdm$zzc;->zzyN:Lcom/google/android/gms/internal/zzdm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzdm$zzc;->zzyV:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdm$zzc;->zzyU:Lcom/google/android/gms/internal/zzdm$zzd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdm$zzc;->zzyW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdm$zzc;->zzyW:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdm$zzc;->zzyV:Z

    return v0
.end method

.method public zzdR()Lcom/google/android/gms/internal/zzdm$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdm$zzc;->zzyU:Lcom/google/android/gms/internal/zzdm$zzd;

    return-object v0
.end method
