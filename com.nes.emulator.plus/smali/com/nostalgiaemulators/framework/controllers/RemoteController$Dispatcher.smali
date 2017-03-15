.class Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/remote/OnControllerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/controllers/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dispatcher"
.end annotation


# instance fields
.field private controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nostalgiaemulators/framework/controllers/RemoteController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->controllers:Ljava/util/List;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public addController(Lcom/nostalgiaemulators/framework/controllers/RemoteController;)V
    .locals 1
    .param p1, "rc"    # Lcom/nostalgiaemulators/framework/controllers/RemoteController;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->controllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->controllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    return-void
.end method

.method public getController(I)Lcom/nostalgiaemulators/framework/EmulatorController;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->controllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorController;

    return-object v0
.end method

.method public onControllerAndroidKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    return-void

    .line 186
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;

    .line 187
    .local v0, "controller":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    # invokes: Lcom/nostalgiaemulators/framework/controllers/RemoteController;->processAndroidKeyEvent(Landroid/view/KeyEvent;)V
    invoke-static {v0, p1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->access$1(Lcom/nostalgiaemulators/framework/controllers/RemoteController;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public onControllerCommandEvent(III)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "param0"    # I
    .param p3, "param1"    # I

    .prologue
    .line 200
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    return-void

    .line 200
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;

    .line 201
    .local v0, "controller":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    # invokes: Lcom/nostalgiaemulators/framework/controllers/RemoteController;->processCommandEvent(III)V
    invoke-static {v0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->access$3(Lcom/nostalgiaemulators/framework/controllers/RemoteController;III)V

    goto :goto_0
.end method

.method public onControllerEmulatorKeyEvent(Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    return-void

    .line 179
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;

    .line 180
    .local v0, "controller":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    # invokes: Lcom/nostalgiaemulators/framework/controllers/RemoteController;->processEmulatorKeyEvent(Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;)V
    invoke-static {v0, p1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->access$0(Lcom/nostalgiaemulators/framework/controllers/RemoteController;Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;)V

    goto :goto_0
.end method

.method public onControllerTextEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    return-void

    .line 193
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/controllers/RemoteController;

    .line 194
    .local v0, "controller":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    # invokes: Lcom/nostalgiaemulators/framework/controllers/RemoteController;->processTextEvent(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->access$2(Lcom/nostalgiaemulators/framework/controllers/RemoteController;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeController(Lcom/nostalgiaemulators/framework/controllers/RemoteController;)V
    .locals 1
    .param p1, "rc"    # Lcom/nostalgiaemulators/framework/controllers/RemoteController;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->controllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/RemoteController$Dispatcher;->controllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    return-void
.end method
