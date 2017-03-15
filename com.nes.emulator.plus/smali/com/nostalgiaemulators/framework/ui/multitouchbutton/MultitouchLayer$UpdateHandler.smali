.class Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$UpdateHandler;
.super Landroid/os/Handler;
.source "MultitouchLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field layer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)V
    .locals 1
    .param p1, "layer"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .prologue
    .line 1448
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1449
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$UpdateHandler;->layer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 1450
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$UpdateHandler;->layer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate()V

    .line 1454
    return-void
.end method
