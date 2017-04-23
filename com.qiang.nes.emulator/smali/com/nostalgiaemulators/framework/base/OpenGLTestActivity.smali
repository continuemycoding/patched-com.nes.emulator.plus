.class public Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;
.super Landroid/app/Activity;
.source "OpenGLTestActivity.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;


# instance fields
.field view:Lcom/nostalgiaemulators/framework/base/OpenGLTestView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView;

    invoke-direct {v0, p0, p0}, Lcom/nostalgiaemulators/framework/base/OpenGLTestView;-><init>(Landroid/content/Context;Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;->view:Lcom/nostalgiaemulators/framework/base/OpenGLTestView;

    .line 31
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;->view:Lcom/nostalgiaemulators/framework/base/OpenGLTestView;

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;->setContentView(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public onDetected(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 36
    new-instance v0, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity$1;-><init>(Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;I)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 48
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;->view:Lcom/nostalgiaemulators/framework/base/OpenGLTestView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestActivity;->view:Lcom/nostalgiaemulators/framework/base/OpenGLTestView;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/OpenGLTestView;->onPause()V

    .line 51
    :cond_0
    return-void
.end method
