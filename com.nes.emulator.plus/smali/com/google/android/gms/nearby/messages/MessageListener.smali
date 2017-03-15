.class public abstract Lcom/google/android/gms/nearby/messages/MessageListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFound(Lcom/google/android/gms/nearby/messages/Message;)V
.end method

.method public onLost(Lcom/google/android/gms/nearby/messages/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/google/android/gms/nearby/messages/Message;

    .prologue
    return-void
.end method
