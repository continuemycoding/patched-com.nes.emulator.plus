.class public Lcom/nostalgiaemulators/nes1/Core;
.super Lcom/nostalgiaemulators/framework/base/JniBridge;
.source "Core.java"


# static fields
.field private static instance:Lcom/nostalgiaemulators/nes1/Core;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/nostalgiaemulators/nes1/Core;

    invoke-direct {v0}, Lcom/nostalgiaemulators/nes1/Core;-><init>()V

    sput-object v0, Lcom/nostalgiaemulators/nes1/Core;->instance:Lcom/nostalgiaemulators/nes1/Core;

    .line 34
    const-string v0, "nostalgia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/JniBridge;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/nostalgiaemulators/nes1/Core;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/nostalgiaemulators/nes1/Core;->instance:Lcom/nostalgiaemulators/nes1/Core;

    return-object v0
.end method
