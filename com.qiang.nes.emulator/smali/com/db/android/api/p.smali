.class public final Lcom/db/android/api/p;
.super Ljava/lang/Object;


# static fields
.field private static DEBUG:Z = false

.field private static P:Ljava/lang/String; = "com.db.android.api"

.field private static Q:Ljava/lang/String; = "debug"

.field private static R:Ljava/lang/String; = ""

.field private static S:I = 0x1

.field private static T:Ljava/lang/String; = "1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
