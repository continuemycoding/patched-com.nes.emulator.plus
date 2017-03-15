.class public Lcom/nostalgiaemulators/framework/base/OpenGLTestView;
.super Landroid/opengl/GLSurfaceView;
.source "OpenGLTestView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;,
        Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;
    }
.end annotation


# instance fields
.field private renderer:Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/OpenGLTestView;->setEGLContextClientVersion(I)V

    .line 45
    new-instance v0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;

    invoke-direct {v0, p2}, Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;-><init>(Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Callback;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView;->renderer:Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;

    .line 46
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLTestView;->renderer:Lcom/nostalgiaemulators/framework/base/OpenGLTestView$Renderer;

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/OpenGLTestView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/OpenGLTestView;->setRenderMode(I)V

    .line 48
    return-void
.end method
