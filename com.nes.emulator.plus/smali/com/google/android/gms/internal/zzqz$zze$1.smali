.class Lcom/google/android/gms/internal/zzqz$zze$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzmn$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqz$zze;->onConnectionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzmn$zzb",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaEC:[B

.field final synthetic zzaWf:Ljava/lang/String;

.field final synthetic zzaWm:Ljava/lang/String;

.field final synthetic zzaWn:Ljava/lang/String;

.field final synthetic zzaWo:Lcom/google/android/gms/internal/zzqz$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqz$zze;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqz$zze$1;->zzaWo:Lcom/google/android/gms/internal/zzqz$zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqz$zze$1;->zzaWf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqz$zze$1;->zzaWm:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqz$zze$1;->zzaWn:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzqz$zze$1;->zzaEC:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz$zze$1;->zzaWf:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqz$zze$1;->zzaWm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqz$zze$1;->zzaWn:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqz$zze$1;->zzaEC:[B

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;->onConnectionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public zzpb()V
    .locals 0

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqz$zze$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)V

    return-void
.end method
