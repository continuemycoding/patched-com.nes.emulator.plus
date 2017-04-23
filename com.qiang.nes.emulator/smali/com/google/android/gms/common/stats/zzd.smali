.class public final Lcom/google/android/gms/common/stats/zzd;
.super Ljava/lang/Object;


# static fields
.field public static LOG_LEVEL_OFF:I

.field public static final zzalO:Landroid/content/ComponentName;

.field public static zzalP:I

.field public static zzalQ:I

.field public static zzalR:I

.field public static zzalS:I

.field public static zzalT:I

.field public static zzalU:I

.field public static zzalV:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/zzd;->zzalO:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    sput v3, Lcom/google/android/gms/common/stats/zzd;->zzalP:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzalQ:I

    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzalR:I

    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzalS:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzalT:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzalU:I

    sput v3, Lcom/google/android/gms/common/stats/zzd;->zzalV:I

    return-void
.end method
