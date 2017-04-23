.class public final Lcom/google/android/gms/internal/zzax;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzha;
.end annotation


# instance fields
.field private final zzrA:Ljava/lang/String;

.field private final zzrB:Lorg/json/JSONObject;

.field private final zzrC:Ljava/lang/String;

.field private final zzrD:Ljava/lang/String;

.field private final zzrE:Z

.field private final zzrF:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzrD:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzax;->zzrB:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzax;->zzrC:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzax;->zzrA:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzax;->zzrE:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzax;->zzrF:Z

    return-void
.end method


# virtual methods
.method public zzbX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzrA:Ljava/lang/String;

    return-object v0
.end method

.method public zzbY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzrD:Ljava/lang/String;

    return-object v0
.end method

.method public zzbZ()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzrB:Lorg/json/JSONObject;

    return-object v0
.end method

.method public zzca()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzrC:Ljava/lang/String;

    return-object v0
.end method

.method public zzcb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzrE:Z

    return v0
.end method

.method public zzcc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzrF:Z

    return v0
.end method
