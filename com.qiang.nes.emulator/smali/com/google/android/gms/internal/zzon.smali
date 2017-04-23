.class public Lcom/google/android/gms/internal/zzon;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzon$zza;
    }
.end annotation


# static fields
.field public static final AGGREGATE_INPUT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_DISTANCE_CUMULATIVE:Lcom/google/android/gms/internal/zzto$zza;

.field public static final TYPE_STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/internal/zzto$zza;

.field private static final zzaux:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzto$zza;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final zzawA:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawB:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawC:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawD:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawE:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawF:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawG:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawH:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawI:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawJ:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawK:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawL:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawM:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawN:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawO:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawP:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawQ:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawR:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawS:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawT:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawU:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawV:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawW:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawX:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawY:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawZ:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawl:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawm:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawn:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawo:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawp:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawq:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawr:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzaws:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawt:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawu:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawv:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzaww:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawx:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawy:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzawz:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzaxa:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzaxb:Lcom/google/android/gms/internal/zzto$zza;

.field public static final zzaxc:[Ljava/lang/String;

.field private static final zzaxd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzto$zza;",
            "Lcom/google/android/gms/internal/zzon$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "com.google.step_count.delta"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavq:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawl:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.step_count.cumulative"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavq:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->TYPE_STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.step_count.cadence"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavG:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawm:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.activity.segment"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavn:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawn:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.floor_change"

    new-array v1, v8, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavn:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavo:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavN:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavQ:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawo:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.calories.consumed"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavI:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawp:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.calories.expended"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavI:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawq:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.calories.bmr"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavI:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawr:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.power.sample"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavJ:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzaws:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.activity.sample"

    new-array v1, v6, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavn:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavo:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawt:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.accelerometer"

    new-array v1, v7, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawf:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawg:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawh:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawu:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.sensor.events"

    new-array v1, v7, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawk:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawi:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawj:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawv:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.heart_rate.bpm"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavv:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzaww:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.location.sample"

    new-array v1, v8, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavw:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavx:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavy:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavz:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawx:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.location.track"

    new-array v1, v8, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavw:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavx:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavy:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavz:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawy:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.distance.delta"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavA:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawz:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.distance.cumulative"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavA:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->TYPE_DISTANCE_CUMULATIVE:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.speed"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavF:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawA:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.cycling.wheel_revolution.cumulative"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavH:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawB:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.cycling.wheel_revolution.rpm"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavG:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawC:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.cycling.pedaling.cumulative"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavH:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawD:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.cycling.pedaling.cadence"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavG:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawE:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.height"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavB:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawF:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.weight"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavC:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawG:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.body.fat.percentage"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavE:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawH:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.body.waist.circumference"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavD:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawI:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.body.hip.circumference"

    new-array v1, v5, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavD:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawJ:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.nutrition"

    new-array v1, v7, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavM:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavK:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavL:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawK:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.activity.exercise"

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavT:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavU:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavr:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavW:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavV:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawL:Lcom/google/android/gms/internal/zzto$zza;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawn:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawp:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawq:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawz:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawo:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzaww:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzawx:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzawK:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzawA:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzawl:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzawG:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->AGGREGATE_INPUT_TYPES:Ljava/util/Set;

    const-string v0, "com.google.activity.summary"

    new-array v1, v7, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavn:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavr:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavX:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawM:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.floor_change.summary"

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavt:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavu:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavO:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavP:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavR:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/gms/internal/zzom;->zzavS:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawN:Lcom/google/android/gms/internal/zzto$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzon;->zzawl:Lcom/google/android/gms/internal/zzto$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawO:Lcom/google/android/gms/internal/zzto$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzon;->zzawz:Lcom/google/android/gms/internal/zzto$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawP:Lcom/google/android/gms/internal/zzto$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzon;->zzawp:Lcom/google/android/gms/internal/zzto$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawQ:Lcom/google/android/gms/internal/zzto$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzon;->zzawq:Lcom/google/android/gms/internal/zzto$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawR:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.heart_rate.summary"

    new-array v1, v7, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavY:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavZ:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawa:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawS:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.location.bounding_box"

    new-array v1, v8, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawb:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawc:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawd:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawe:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawT:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.power.summary"

    new-array v1, v7, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavY:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavZ:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawa:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawU:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.speed.summary"

    new-array v1, v7, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavY:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavZ:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawa:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawV:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.weight.summary"

    new-array v1, v7, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavY:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavZ:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawa:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawW:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.calories.bmr.summary"

    new-array v1, v7, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavY:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavZ:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawa:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawX:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.body.fat.percentage.summary"

    new-array v1, v7, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavY:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavZ:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawa:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawY:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.body.hip.circumference.summary"

    new-array v1, v7, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavY:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavZ:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawa:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzawZ:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.body.waist.circumference.summary"

    new-array v1, v7, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavY:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavZ:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzawa:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzaxa:Lcom/google/android/gms/internal/zzto$zza;

    const-string v0, "com.google.nutrition.summary"

    new-array v1, v6, [Lcom/google/android/gms/internal/zzto$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavM:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/zzom;->zzavK:Lcom/google/android/gms/internal/zzto$zzb;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzaxb:Lcom/google/android/gms/internal/zzto$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzon;->zzuc()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzaux:Ljava/util/Map;

    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.accelerometer"

    aput-object v1, v0, v4

    const-string v1, "com.google.activity.exercise"

    aput-object v1, v0, v5

    const-string v1, "com.google.activity.sample"

    aput-object v1, v0, v6

    const-string v1, "com.google.activity.segment"

    aput-object v1, v0, v7

    const-string v1, "com.google.activity.summary"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "com.google.body.fat.percentage"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.body.fat.percentage.summary"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.body.hip.circumference"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.google.body.hip.circumference.summary"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.google.body.waist.circumference"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.google.body.waist.circumference.summary"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.google.calories.bmr"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.google.calories.bmr.summary"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.google.calories.consumed"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.google.calories.expended"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.google.cycling.pedaling.cadence"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.google.cycling.pedaling.cumulative"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.google.cycling.wheel_revolution.cumulative"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.google.cycling.wheel_revolution.rpm"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.google.distance.cumulative"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.google.distance.delta"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.google.floor_change"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.google.floor_change.summary"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.google.heart_rate.bpm"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.google.heart_rate.summary"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.google.height"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.google.location.bounding_box"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.google.location.sample"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.google.location.track"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.google.nutrition"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.google.nutrition.summary"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.google.power.sample"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.google.power.summary"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.google.sensor.events"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.google.speed"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.google.speed.summary"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.google.step_count.cadence"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.google.step_count.cumulative"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.google.step_count.delta"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.google.weight"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.google.weight.summary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzaxc:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzon;->TYPE_STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzon;->TYPE_DISTANCE_CUMULATIVE:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/gms/internal/zzon;->zzawD:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawz:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawl:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawq:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawp:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawo:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzawH:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzawJ:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzawI:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzawK:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzawF:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzawG:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/android/gms/internal/zzon;->zzaww:Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/zzon$zza;->zzaxe:Lcom/google/android/gms/internal/zzon$zza;

    invoke-static {v3, v0, v4}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/util/Map;Ljava/util/Collection;Lcom/google/android/gms/internal/zzon$zza;)V

    sget-object v0, Lcom/google/android/gms/internal/zzon$zza;->zzaxf:Lcom/google/android/gms/internal/zzon$zza;

    invoke-static {v3, v1, v0}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/util/Map;Ljava/util/Collection;Lcom/google/android/gms/internal/zzon$zza;)V

    sget-object v0, Lcom/google/android/gms/internal/zzon$zza;->zzaxg:Lcom/google/android/gms/internal/zzon$zza;

    invoke-static {v3, v2, v0}, Lcom/google/android/gms/internal/zzon;->zza(Ljava/util/Map;Ljava/util/Collection;Lcom/google/android/gms/internal/zzon$zza;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzon;->zzaxd:Ljava/util/Map;

    return-void
.end method

.method public static varargs zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzto$zzb;)Lcom/google/android/gms/internal/zzto$zza;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzto$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzto$zza;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzto$zza;->zzbqj:[Lcom/google/android/gms/internal/zzto$zzb;

    return-object v0
.end method

.method private static zza(Ljava/util/Map;Ljava/util/Collection;Lcom/google/android/gms/internal/zzon$zza;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzto$zza;",
            "Lcom/google/android/gms/internal/zzon$zza;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzto$zza;",
            ">;",
            "Lcom/google/android/gms/internal/zzon$zza;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzto$zza;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zzdp(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzon;->zzaxc:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzuc()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzto$zza;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzon;->zzawn:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawM:Lcom/google/android/gms/internal/zzto$zza;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzon;->zzawp:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawQ:Lcom/google/android/gms/internal/zzto$zza;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzon;->zzawq:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawR:Lcom/google/android/gms/internal/zzto$zza;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzon;->zzawz:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawP:Lcom/google/android/gms/internal/zzto$zza;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzon;->zzawo:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawN:Lcom/google/android/gms/internal/zzto$zza;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzon;->zzawx:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawT:Lcom/google/android/gms/internal/zzto$zza;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzon;->zzaws:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawU:Lcom/google/android/gms/internal/zzto$zza;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzon;->zzaww:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawS:Lcom/google/android/gms/internal/zzto$zza;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzon;->zzawA:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawV:Lcom/google/android/gms/internal/zzto$zza;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzon;->zzawl:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawO:Lcom/google/android/gms/internal/zzto$zza;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzon;->zzawG:Lcom/google/android/gms/internal/zzto$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzto$zza;->name:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/zzon;->zzawW:Lcom/google/android/gms/internal/zzto$zza;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
