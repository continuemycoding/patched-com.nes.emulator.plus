.class final Lcom/google/android/gms/wearable/internal/zzcf$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzmn$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzcf;->zzb(Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;)Lcom/google/android/gms/internal/zzmn$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzmn$zzb",
        "<",
        "Lcom/google/android/gms/wearable/zza$zza;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbmt:Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzcf$3;->zzbmt:Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wearable/zza$zza;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcf$3;->zzbmt:Lcom/google/android/gms/wearable/internal/AmsEntityUpdateParcelable;

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/zza$zza;->zza(Lcom/google/android/gms/wearable/zzb;)V

    return-void
.end method

.method public zzpb()V
    .locals 0

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/zza$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzcf$3;->zza(Lcom/google/android/gms/wearable/zza$zza;)V

    return-void
.end method
