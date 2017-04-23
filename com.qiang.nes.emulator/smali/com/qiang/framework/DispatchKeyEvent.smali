.class public Lcom/qiang/framework/DispatchKeyEvent;
.super Ljava/lang/Object;
.source "DispatchKeyEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private handler:Landroid/os/Handler;

.field private isUp:Z

.field private keyCode:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "code"    # I

    .prologue
    .line 22
    const-wide/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/qiang/framework/DispatchKeyEvent;-><init>(Landroid/view/View;IJ)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "code"    # I
    .param p3, "delayMillis"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/qiang/framework/DispatchKeyEvent;->view:Landroid/view/View;

    .line 28
    iput p2, p0, Lcom/qiang/framework/DispatchKeyEvent;->keyCode:I

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/qiang/framework/DispatchKeyEvent;->handler:Landroid/os/Handler;

    .line 31
    iget-object v0, p0, Lcom/qiang/framework/DispatchKeyEvent;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x64

    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 38
    .local v2, "downTime":J
    new-instance v1, Landroid/view/KeyEvent;

    add-long v4, v2, v10

    iget-boolean v6, p0, Lcom/qiang/framework/DispatchKeyEvent;->isUp:Z

    if-eqz v6, :cond_1

    move v6, v0

    :goto_0
    iget v7, p0, Lcom/qiang/framework/DispatchKeyEvent;->keyCode:I

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 39
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    iget-object v4, p0, Lcom/qiang/framework/DispatchKeyEvent;->view:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 41
    iget-boolean v4, p0, Lcom/qiang/framework/DispatchKeyEvent;->isUp:Z

    if-nez v4, :cond_0

    .line 43
    iput-boolean v0, p0, Lcom/qiang/framework/DispatchKeyEvent;->isUp:Z

    .line 44
    iget-object v0, p0, Lcom/qiang/framework/DispatchKeyEvent;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    :cond_0
    return-void

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    move v6, v8

    .line 38
    goto :goto_0
.end method
