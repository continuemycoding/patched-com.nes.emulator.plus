.class public Lorg/apache/commons/lang3/reflect/InheritanceUtils;
.super Ljava/lang/Object;
.source "InheritanceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static distance(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p0, "child":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, -0x1

    .line 50
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v2

    .line 54
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    const/4 v2, 0x0

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 59
    .local v0, "cParent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/BooleanUtils;->toInteger(Z)I

    move-result v1

    .line 61
    .local v1, "d":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    move v2, v1

    .line 62
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/InheritanceUtils;->distance(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v3

    add-int/2addr v1, v3

    .line 65
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_0
.end method
