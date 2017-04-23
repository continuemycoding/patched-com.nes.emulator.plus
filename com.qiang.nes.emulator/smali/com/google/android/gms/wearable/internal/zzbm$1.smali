.class Lcom/google/android/gms/wearable/internal/zzbm$1;
.super Lcom/google/android/gms/wearable/internal/zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzbm;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzi",
        "<",
        "Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbmR:Ljava/lang/String;

.field final synthetic zzbop:Ljava/lang/String;

.field final synthetic zzboq:[B

.field final synthetic zzbor:Lcom/google/android/gms/wearable/internal/zzbm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzbm;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzbm$1;->zzbor:Lcom/google/android/gms/wearable/internal/zzbm;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzbm$1;->zzbmR:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzbm$1;->zzbop:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/zzbm$1;->zzboq:[B

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzi;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzce;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbm$1;->zza(Lcom/google/android/gms/wearable/internal/zzce;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzce;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbm$1;->zzbmR:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbm$1;->zzbop:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzbm$1;->zzboq:[B

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzce;->zza(Lcom/google/android/gms/internal/zzlx$zzb;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method protected zzbv(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbm$zzb;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzbm$zzb;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    return-object v0
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzbm$1;->zzbv(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;

    move-result-object v0

    return-object v0
.end method
