.class Lcom/google/android/gms/wearable/WearableListenerService$zza$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/WearableListenerService$zza;->zza(Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbmk:Lcom/google/android/gms/wearable/WearableListenerService$zza;

.field final synthetic zzbmt:Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$zza;Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$10;->zzbmk:Lcom/google/android/gms/wearable/WearableListenerService$zza;

    iput-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$10;->zzbmt:Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$10;->zzbmk:Lcom/google/android/gms/wearable/WearableListenerService$zza;

    iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzbmi:Lcom/google/android/gms/wearable/WearableListenerService;

    check-cast v0, Lcom/google/android/gms/wearable/zzk;

    iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$10;->zzbmt:Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/zzk;->zza(Lcom/google/android/gms/wearable/zzb;)V

    return-void
.end method
