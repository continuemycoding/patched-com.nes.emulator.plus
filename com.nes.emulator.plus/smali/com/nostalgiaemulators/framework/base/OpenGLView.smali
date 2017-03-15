.class Lcom/nostalgiaemulators/framework/base/OpenGLView;
.super Landroid/opengl/GLSurfaceView;
.source "OpenGLView.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/base/EmulatorView;
.implements Lcom/nostalgiaemulators/framework/FrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.base.OpenGLView"


# instance fields
.field quality:I

.field private final renderer:Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Lcom/nostalgiaemulators/framework/Emulator;I)V
    .locals 1
    .param p1, "context"    # Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
    .param p2, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;
    .param p3, "defaultTopPadding"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/OpenGLView;->setEGLContextClientVersion(I)V

    .line 51
    new-instance v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;

    invoke-direct {v0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Lcom/nostalgiaemulators/framework/Emulator;I)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView;->renderer:Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;

    .line 52
    invoke-interface {p2, p0}, Lcom/nostalgiaemulators/framework/Emulator;->setFrameListener(Lcom/nostalgiaemulators/framework/FrameListener;)V

    .line 53
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView;->renderer:Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/OpenGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/OpenGLView;->setRenderMode(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 0

    .prologue
    .line 66
    return-object p0
.end method

.method public getViewPort()Lcom/nostalgiaemulators/framework/base/ViewPort;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView;->renderer:Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->getViewPort()Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v0

    return-object v0
.end method

.method public onFrameReady()V
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView;->quality:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView;->renderer:Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->onFrameReady()V

    .line 62
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView;->renderer:Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->onResume()V

    .line 81
    return-void
.end method

.method public setBenchmark(Lcom/nostalgiaemulators/framework/base/Benchmark;)V
    .locals 1
    .param p1, "benchmark"    # Lcom/nostalgiaemulators/framework/base/Benchmark;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView;->renderer:Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;

    iput-object p1, v0, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;

    .line 75
    return-void
.end method

.method public setQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView;->quality:I

    .line 88
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/OpenGLView;->renderer:Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/base/OpenGLView$Renderer;->setQuality(I)V

    .line 89
    return-void
.end method
