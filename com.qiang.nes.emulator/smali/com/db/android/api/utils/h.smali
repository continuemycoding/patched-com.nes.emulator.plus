.class public final Lcom/db/android/api/utils/h;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String; = "dangbeiAd"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/db/android/api/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "dangbeiAd"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/db/android/api/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "dangbeiAd"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
