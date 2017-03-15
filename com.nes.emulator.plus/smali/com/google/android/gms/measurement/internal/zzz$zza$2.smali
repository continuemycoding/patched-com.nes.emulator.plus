.class Lcom/google/android/gms/measurement/internal/zzz$zza$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzz$zza;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzPw:Landroid/content/ComponentName;

.field final synthetic zzaVd:Lcom/google/android/gms/measurement/internal/zzz$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzz$zza;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz$zza$2;->zzaVd:Lcom/google/android/gms/measurement/internal/zzz$zza;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzz$zza$2;->zzPw:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzz$zza$2;->zzaVd:Lcom/google/android/gms/measurement/internal/zzz$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzz$zza;->zzaUZ:Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzz$zza$2;->zzPw:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Lcom/google/android/gms/measurement/internal/zzz;Landroid/content/ComponentName;)V

    return-void
.end method
