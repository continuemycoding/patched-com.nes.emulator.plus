.class public final Lcom/google/android/gms/nearby/messages/SubscribeOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/SubscribeOptions$1;,
        Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/gms/nearby/messages/SubscribeOptions;


# instance fields
.field private final zzaWL:Lcom/google/android/gms/nearby/messages/Strategy;

.field private final zzaWY:Lcom/google/android/gms/nearby/messages/MessageFilter;

.field private final zzaWZ:Lcom/google/android/gms/nearby/messages/SubscribeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;->build()Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->DEFAULT:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;Lcom/google/android/gms/nearby/messages/SubscribeCallback;)V
    .locals 0
    .param p1, "strategy"    # Lcom/google/android/gms/nearby/messages/Strategy;
    .param p2, "filter"    # Lcom/google/android/gms/nearby/messages/MessageFilter;
    .param p3, "callback"    # Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzaWL:Lcom/google/android/gms/nearby/messages/Strategy;

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzaWY:Lcom/google/android/gms/nearby/messages/MessageFilter;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzaWZ:Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;Lcom/google/android/gms/nearby/messages/SubscribeCallback;Lcom/google/android/gms/nearby/messages/SubscribeOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/nearby/messages/Strategy;
    .param p2, "x1"    # Lcom/google/android/gms/nearby/messages/MessageFilter;
    .param p3, "x2"    # Lcom/google/android/gms/nearby/messages/SubscribeCallback;
    .param p4, "x3"    # Lcom/google/android/gms/nearby/messages/SubscribeOptions$1;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;-><init>(Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;Lcom/google/android/gms/nearby/messages/SubscribeCallback;)V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/google/android/gms/nearby/messages/SubscribeCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzaWZ:Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    return-object v0
.end method

.method public getFilter()Lcom/google/android/gms/nearby/messages/MessageFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzaWY:Lcom/google/android/gms/nearby/messages/MessageFilter;

    return-object v0
.end method

.method public getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzaWL:Lcom/google/android/gms/nearby/messages/Strategy;

    return-object v0
.end method
