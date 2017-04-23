.class Lcom/nostalgiaemulators/framework/base/UnacceleratedView;
.super Landroid/view/SurfaceView;
.source "UnacceleratedView.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/base/EmulatorView;


# static fields
.field private static final DELAY_PER_FRAME:I = 0x28


# instance fields
.field private context:Landroid/app/Application;

.field private emulator:Lcom/nostalgiaemulators/framework/Emulator;

.field private paddingLeft:I

.field private paddingTop:I

.field private startTime:J

.field private viewPort:Lcom/nostalgiaemulators/framework/base/ViewPort;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/nostalgiaemulators/framework/Emulator;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;
    .param p3, "paddingTop"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->context:Landroid/app/Application;

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->setWillNotDraw(Z)V

    .line 36
    iput p3, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->paddingTop:I

    .line 37
    return-void
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 0

    .prologue
    .line 55
    return-object p0
.end method

.method public getViewPort()Lcom/nostalgiaemulators/framework/base/ViewPort;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->viewPort:Lcom/nostalgiaemulators/framework/base/ViewPort;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    if-nez v4, :cond_0

    .line 97
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 83
    .local v2, "endTime":J
    const-wide/16 v4, 0x28

    iget-wide v6, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->startTime:J

    sub-long v6, v2, v6

    sub-long v0, v4, v6

    .line 85
    .local v0, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 87
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->startTime:J

    .line 94
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/Emulator;->renderGfx()V

    .line 95
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    iget v5, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->x:I

    iget v6, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->y:I

    invoke-interface {v4, p1, v5, v6}, Lcom/nostalgiaemulators/framework/Emulator;->draw(Landroid/graphics/Canvas;II)V

    .line 96
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->invalidate()V

    goto :goto_0

    .line 89
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 65
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->context:Landroid/app/Application;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    .line 66
    iget v5, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->paddingTop:I

    move v2, p1

    move v3, p2

    move v6, v4

    .line 65
    invoke-static/range {v0 .. v6}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->loadOrComputeViewPort(Landroid/content/Context;Lcom/nostalgiaemulators/framework/Emulator;IIIIZ)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v7

    .line 67
    .local v7, "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    iget v0, v7, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->x:I

    .line 68
    iget v0, v7, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->y:I

    .line 69
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    iget v1, v7, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    iget v2, v7, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    invoke-interface {v0, v1, v2}, Lcom/nostalgiaemulators/framework/Emulator;->setViewPortSize(II)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->startTime:J

    .line 71
    iput-object v7, p0, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;->viewPort:Lcom/nostalgiaemulators/framework/base/ViewPort;

    .line 72
    return-void
.end method

.method public setQuality(I)V
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 51
    return-void
.end method
