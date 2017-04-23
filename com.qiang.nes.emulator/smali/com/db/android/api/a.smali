.class public final Lcom/db/android/api/a;
.super Ljava/lang/Object;


# static fields
.field public static VERSION:Ljava/lang/String; = null

.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field public static c:Z = false

.field public static d:Ljava/lang/String; = null

.field private static e:I = 0x2710

.field private static f:I = 0x2711

.field private static g:I = 0x2712

.field private static i:I = 0x2713

.field private static j:Ljava/lang/String; = "appkey not exist"

.field private static k:Ljava/lang/String; = "dbinfo.db"

.field private static l:I = 0x1

.field private static m:I = 0x1

.field private static n:I = 0x2

.field private static o:I = 0x3

.field private static p:I = 0x4

.field private static q:I = 0x5

.field private static r:I = 0x1

.field private static s:I = 0x2

.field private static t:I = 0x3

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "12"

    sput-object v0, Lcom/db/android/api/a;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/db/android/api/a;->c:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/db/android/api/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/db/android/api/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/db/android/api/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/db/android/api/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/db/android/api/a;->b:Ljava/lang/String;

    return-void
.end method
