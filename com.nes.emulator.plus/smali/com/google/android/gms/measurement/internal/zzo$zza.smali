.class public Lcom/google/android/gms/measurement/internal/zzo$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field private final mPriority:I

.field final synthetic zzaTs:Lcom/google/android/gms/measurement/internal/zzo;

.field private final zzaTt:Z

.field private final zzaTu:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzo;IZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTs:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->mPriority:I

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTt:Z

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTu:Z

    return-void
.end method


# virtual methods
.method public zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTs:Lcom/google/android/gms/measurement/internal/zzo;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->mPriority:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTt:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTu:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzo;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTs:Lcom/google/android/gms/measurement/internal/zzo;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->mPriority:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTt:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTu:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzo;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public zzez(Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTs:Lcom/google/android/gms/measurement/internal/zzo;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->mPriority:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTt:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTu:Z

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzo;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public zzj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTs:Lcom/google/android/gms/measurement/internal/zzo;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->mPriority:I

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTt:Z

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzo$zza;->zzaTu:Z

    move-object v4, p1

    move-object v5, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzo;->zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
