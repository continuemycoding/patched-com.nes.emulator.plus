.class public Lorg/apache/commons/lang3/tuple/MutableTriple;
.super Lorg/apache/commons/lang3/tuple/Triple;
.source "MutableTriple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/tuple/Triple",
        "<T",
        "L;",
        "TM;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public middle:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Triple;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TM;TR;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    .local p2, "middle":Ljava/lang/Object;, "TM;"
    .local p3, "right":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Triple;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->left:Ljava/lang/Object;

    .line 78
    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->middle:Ljava/lang/Object;

    .line 79
    iput-object p3, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->right:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/MutableTriple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TM;TR;)",
            "Lorg/apache/commons/lang3/tuple/MutableTriple",
            "<T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "middle":Ljava/lang/Object;, "TM;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    new-instance v0, Lorg/apache/commons/lang3/tuple/MutableTriple;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/tuple/MutableTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getMiddle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->middle:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public setLeft(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->left:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public setMiddle(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    .local p1, "middle":Ljava/lang/Object;, "TM;"
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->middle:Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public setRight(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->right:Ljava/lang/Object;

    .line 132
    return-void
.end method
