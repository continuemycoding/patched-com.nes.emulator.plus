.class public final Lcom/db/android/api/utils/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/db/android/api/utils/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum eq:I

.field public static final enum er:I

.field private static final synthetic es:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x1

    sput v0, Lcom/db/android/api/utils/f;->eq:I

    sput v1, Lcom/db/android/api/utils/f;->er:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/db/android/api/utils/f;->es:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static aP()[I
    .locals 1

    sget-object v0, Lcom/db/android/api/utils/f;->es:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
