.class public Lcom/google/android/gms/internal/zzsg;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzbdh:Ljava/lang/String;

.field private final zzbgZ:Lcom/google/android/gms/internal/zzsi;

.field zzbha:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object",
            "<",
            "Lcom/google/android/gms/internal/zzsh$zzc;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbhb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqD:Lcom/google/android/gms/internal/zznl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzsi;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzsi;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzno;->zzrM()Lcom/google/android/gms/internal/zznl;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzsg;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzsi;Lcom/google/android/gms/internal/zznl;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzsi;Lcom/google/android/gms/internal/zznl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzsi;",
            "Lcom/google/android/gms/internal/zznl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsg;->zzbdh:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsg;->zzbha:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsg;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzsg;->zzqD:Lcom/google/android/gms/internal/zznl;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzsg;->zzbgZ:Lcom/google/android/gms/internal/zzsi;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzsg;->zzbhb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zzfN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsg;->zzbdh:Ljava/lang/String;

    return-void
.end method
