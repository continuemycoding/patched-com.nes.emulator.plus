.class public Lcom/nostalgiaemulators/framework/utils/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static D:Z

.field private static E:Z

.field private static I:Z

.field private static V:Z

.field private static W:Z

.field private static WTF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    sput-boolean v1, Lcom/nostalgiaemulators/framework/utils/Log;->WTF:Z

    .line 35
    sput-boolean v1, Lcom/nostalgiaemulators/framework/utils/Log;->E:Z

    .line 36
    sput-boolean v1, Lcom/nostalgiaemulators/framework/utils/Log;->W:Z

    .line 37
    sput-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->D:Z

    .line 38
    sput-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->I:Z

    .line 39
    sput-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->D:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->E:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    sget-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->E:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->I:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .param p0, "debug"    # Z

    .prologue
    const/4 v0, 0x1

    .line 24
    if-eqz p0, :cond_0

    .line 25
    sput-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->WTF:Z

    .line 26
    sput-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->E:Z

    .line 27
    sput-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->W:Z

    .line 28
    sput-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->D:Z

    .line 29
    sput-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->I:Z

    .line 30
    sput-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->V:Z

    .line 32
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->V:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->W:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->WTF:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    sget-boolean v0, Lcom/nostalgiaemulators/framework/utils/Log;->WTF:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_0
    return-void
.end method
