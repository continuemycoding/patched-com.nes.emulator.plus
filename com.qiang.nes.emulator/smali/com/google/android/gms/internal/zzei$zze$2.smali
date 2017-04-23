.class Lcom/google/android/gms/internal/zzei$zze$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzjg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzei$zze;->zzej()Lcom/google/android/gms/internal/zzei$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzAB:Lcom/google/android/gms/internal/zzei$zzd;

.field final synthetic zzAC:Lcom/google/android/gms/internal/zzei$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzei$zze;Lcom/google/android/gms/internal/zzei$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzei$zze$2;->zzAC:Lcom/google/android/gms/internal/zzei$zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzei$zze$2;->zzAB:Lcom/google/android/gms/internal/zzei$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei$zze$2;->zzAB:Lcom/google/android/gms/internal/zzei$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzei$zzd;->reject()V

    return-void
.end method
