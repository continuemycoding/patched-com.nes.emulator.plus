.class Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;
.super Landroid/view/View;
.source "KeyboardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/controllers/KeyboardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyboardView"
.end annotation


# instance fields
.field private players:[I

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/nostalgiaemulators/framework/controllers/KeyboardController;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    .line 65
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->players:[I

    .line 66
    return-void
.end method

.method private isPlayer2(Landroid/view/InputEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 70
    const-string v4, "multiplayer"

    invoke-static {v4}, Lcom/qiang/framework/helpers/MetaDataHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v3

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    const v5, 0x1000010

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    and-int/lit16 v4, v4, 0x401

    if-eqz v4, :cond_0

    .line 76
    const/4 v1, -0x1

    .line 78
    .local v1, "playerIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->players:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 80
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->players:[I

    aget v4, v4, v0

    if-nez v4, :cond_2

    .line 81
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->players:[I

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v5

    aput v5, v4, v0

    .line 83
    :cond_2
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->players:[I

    aget v4, v4, v0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 85
    move v1, v0

    .line 90
    :cond_3
    if-ne v1, v2, :cond_5

    :goto_2
    move v3, v2

    goto :goto_0

    .line 78
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v2, v3

    .line 90
    goto :goto_2
.end method


# virtual methods
.method public hideTouchController()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/qiang/framework/MyApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->hideTouchController()V

    .line 97
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    const v9, 0x3e4ccccd    # 0.2f

    const/high16 v8, -0x41000000    # -0.5f

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 102
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 103
    .local v2, "xAxisValue":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 105
    .local v3, "yAxisValue":F
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->isPlayer2(Landroid/view/InputEvent;)Z

    move-result v0

    .line 107
    .local v0, "isPlayer2":Z
    const/4 v1, 0x0

    .line 109
    .local v1, "processed":Z
    cmpg-float v5, v2, v8

    if-gez v5, :cond_2

    .line 111
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    const/16 v6, 0x15

    invoke-virtual {v5, v0, v6, v4}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->setKeyPressed(ZIZ)V

    .line 112
    const/4 v1, 0x1

    .line 126
    :cond_0
    :goto_0
    cmpg-float v5, v3, v8

    if-gez v5, :cond_4

    .line 128
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    const/16 v6, 0x13

    invoke-virtual {v5, v0, v6, v4}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->setKeyPressed(ZIZ)V

    .line 129
    const/4 v1, 0x1

    .line 143
    :cond_1
    :goto_1
    if-eqz v1, :cond_6

    .line 145
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->hideTouchController()V

    .line 149
    :goto_2
    return v4

    .line 114
    :cond_2
    cmpl-float v5, v2, v10

    if-lez v5, :cond_3

    .line 116
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    const/16 v6, 0x16

    invoke-virtual {v5, v0, v6, v4}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->setKeyPressed(ZIZ)V

    .line 117
    const/4 v1, 0x1

    goto :goto_0

    .line 119
    :cond_3
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-gez v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    const/16 v6, 0x15

    invoke-virtual {v5, v0, v6, v7}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->setKeyPressed(ZIZ)V

    .line 122
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    const/16 v6, 0x16

    invoke-virtual {v5, v0, v6, v7}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->setKeyPressed(ZIZ)V

    .line 123
    const/4 v1, 0x1

    goto :goto_0

    .line 131
    :cond_4
    cmpl-float v5, v3, v10

    if-lez v5, :cond_5

    .line 133
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    const/16 v6, 0x14

    invoke-virtual {v5, v0, v6, v4}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->setKeyPressed(ZIZ)V

    .line 134
    const/4 v1, 0x1

    goto :goto_1

    .line 136
    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-gez v5, :cond_1

    .line 138
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    const/16 v6, 0x13

    invoke-virtual {v5, v0, v6, v7}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->setKeyPressed(ZIZ)V

    .line 139
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    const/16 v6, 0x14

    invoke-virtual {v5, v0, v6, v7}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->setKeyPressed(ZIZ)V

    .line 140
    const/4 v1, 0x1

    goto :goto_1

    .line 149
    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 155
    const/16 v1, 0x17

    if-ne p1, v1, :cond_0

    .line 156
    const/16 p1, 0x60

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    invoke-virtual {v1, p1}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->mapKey(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 159
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    invoke-direct {p0, p2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->isPlayer2(Landroid/view/InputEvent;)Z

    move-result v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->setKeyPressed(ZIZ)V

    .line 163
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->hideTouchController()V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 171
    const/16 v1, 0x17

    if-ne p1, v1, :cond_0

    .line 172
    const/16 p1, 0x60

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    invoke-virtual {v1, p1}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->mapKey(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 179
    :goto_0
    return v0

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    invoke-direct {p0, p2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;->isPlayer2(Landroid/view/InputEvent;)Z

    move-result v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->setKeyPressed(ZIZ)V

    .line 179
    const/4 v0, 0x1

    goto :goto_0
.end method
