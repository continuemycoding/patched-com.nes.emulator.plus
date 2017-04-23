.class public Lu/aly/dk$a;
.super Ljava/lang/Object;
.source "TTupleProtocol.java"

# interfaces
.implements Lu/aly/dg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/dk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/ds;)Lu/aly/de;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lu/aly/dk;

    invoke-direct {v0, p1}, Lu/aly/dk;-><init>(Lu/aly/ds;)V

    return-object v0
.end method
