.class Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;
.super Landroid/view/View;
.source "DynamicDPad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DPadView"
.end annotation


# instance fields
.field private final ANGLE:I

.field private TAN_DIAGONAL_MAX:F

.field private TAN_DIAGONAL_MIN:F

.field private activePointerId:I

.field btnH:I

.field btnW:I

.field direction:[Landroid/graphics/Bitmap;

.field private directionIdx:I

.field private optimizationCounter:I

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

.field private u1:F

.field private u2:F

.field private vibrationDuration:I

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 128
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    .line 129
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->direction:[Landroid/graphics/Bitmap;

    .line 125
    iput v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->btnW:I

    .line 126
    iput v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->btnH:I

    .line 171
    iput v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->directionIdx:I

    .line 173
    const/16 v0, 0x12

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->ANGLE:I

    .line 174
    const v0, 0x3ea0d97c

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->u1:F

    .line 175
    const v0, 0x3fa0d97c

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->u2:F

    .line 176
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->u1:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->TAN_DIAGONAL_MIN:F

    .line 177
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->u2:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->TAN_DIAGONAL_MAX:F

    .line 179
    iput v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->activePointerId:I

    .line 181
    iput v3, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->optimizationCounter:I

    .line 197
    const/16 v0, 0x64

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->vibrationDuration:I

    .line 130
    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->paint:Landroid/graphics/Paint;
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$0(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->paint:Landroid/graphics/Paint;
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$0(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    const-string v1, "vibrator"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->vibrator:Landroid/os/Vibrator;

    .line 134
    invoke-static {p2}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getVibrationDuration(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->vibrationDuration:I

    .line 135
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->direction:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 136
    sget v2, Lcom/nostalgiaemulators/framework/R$drawable;->dynamic_dpad_right:I

    .line 135
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 137
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->direction:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->btnW:I

    .line 138
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->direction:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->btnH:I

    .line 139
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->direction:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 140
    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->dynamic_dpad_right_up:I

    .line 139
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 141
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->direction:[Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 142
    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->dynamic_dpad_up:I

    .line 141
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 143
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->direction:[Landroid/graphics/Bitmap;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 144
    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->dynamic_dpad_left_up:I

    .line 143
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 145
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->direction:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 146
    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->dynamic_dpad_left:I

    .line 145
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 147
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->direction:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 148
    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->dynamic_dpad_left_down:I

    .line 147
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 149
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->direction:[Landroid/graphics/Bitmap;

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 150
    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->dynamic_dpad_down:I

    .line 149
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 151
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->direction:[Landroid/graphics/Bitmap;

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 152
    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->dynamic_dpad_right_down:I

    .line 151
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 153
    return-void
.end method

.method private release()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    .line 184
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->emulator:Lcom/nostalgiaemulators/framework/Emulator;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$4(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Lcom/nostalgiaemulators/framework/Emulator;

    move-result-object v0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->port:I
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$5(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v1

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->rightMapped:I
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$6(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v2

    invoke-interface {v0, v1, v2, v4}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 185
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->emulator:Lcom/nostalgiaemulators/framework/Emulator;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$4(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Lcom/nostalgiaemulators/framework/Emulator;

    move-result-object v0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->port:I
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$5(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v1

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->leftMapped:I
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$7(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v2

    invoke-interface {v0, v1, v2, v4}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 186
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->emulator:Lcom/nostalgiaemulators/framework/Emulator;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$4(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Lcom/nostalgiaemulators/framework/Emulator;

    move-result-object v0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->port:I
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$5(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v1

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->upMapped:I
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$8(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v2

    invoke-interface {v0, v1, v2, v4}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 187
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->emulator:Lcom/nostalgiaemulators/framework/Emulator;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$4(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Lcom/nostalgiaemulators/framework/Emulator;

    move-result-object v0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->port:I
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$5(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v1

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->downMapped:I
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$9(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v2

    invoke-interface {v0, v1, v2, v4}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 188
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    invoke-static {v0, v3}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$10(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;F)V

    .line 189
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    invoke-static {v0, v3}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$11(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;F)V

    .line 190
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    invoke-static {v0, v3}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$12(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;F)V

    .line 191
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    invoke-static {v0, v3}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$13(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;F)V

    .line 192
    iput v5, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->activePointerId:I

    .line 193
    iput v5, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->directionIdx:I

    .line 194
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->invalidate()V

    .line 195
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 157
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 159
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->dpadCenterX:F
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$1(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->currentX:F
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$2(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->dpadCenterX:F
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$1(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)F

    move-result v2

    iget v3, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->btnW:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 161
    .local v0, "bitmapOffsetX":I
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->dpadCenterY:F
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$3(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)F

    move-result v2

    iget v3, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->btnH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 163
    .local v1, "bitmapOffsetY":I
    iget v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->directionIdx:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 164
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->direction:[Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->directionIdx:I

    aget-object v2, v2, v3

    int-to-float v3, v0

    .line 165
    int-to-float v4, v1

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->paint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$0(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Landroid/graphics/Paint;

    move-result-object v5

    .line 164
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 168
    .end local v0    # "bitmapOffsetX":I
    .end local v1    # "bitmapOffsetY":I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 204
    .local v2, "actionMasked":I
    const/4 v14, 0x2

    if-ne v2, v14, :cond_1

    .line 205
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->optimizationCounter:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->optimizationCounter:I

    .line 207
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->optimizationCounter:I

    const/4 v15, 0x5

    if-ge v14, v15, :cond_0

    .line 208
    const/4 v14, 0x1

    .line 332
    :goto_0
    return v14

    .line 211
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->optimizationCounter:I

    .line 215
    :cond_1
    if-eqz v2, :cond_2

    .line 216
    const/4 v14, 0x5

    if-ne v2, v14, :cond_5

    .line 217
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->activePointerId:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 218
    move-object/from16 v0, p0

    iput v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->activePointerId:I

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$14(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Lcom/nostalgiaemulators/framework/controllers/TouchController;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->activePointerId:I

    invoke-virtual {v14, v15}, Lcom/nostalgiaemulators/framework/controllers/TouchController;->isPointerHandled(I)Z

    move-result v14

    if-nez v14, :cond_4

    .line 223
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->activePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 224
    .local v8, "pointerIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    invoke-static {v14, v15}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$10(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;F)V

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    invoke-static {v14, v15}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$11(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;F)V

    .line 227
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->vibrationDuration:I

    if-lez v14, :cond_3

    .line 228
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->vibrator:Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->vibrationDuration:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 231
    :cond_3
    const/4 v14, 0x1

    goto :goto_0

    .line 234
    .end local v8    # "pointerIndex":I
    :cond_4
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->activePointerId:I

    .line 239
    :cond_5
    const/4 v14, 0x2

    if-ne v2, v14, :cond_6

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->dpadCenterX:F
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$1(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)F

    move-result v14

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_6

    .line 241
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    if-lt v6, v14, :cond_9

    .line 323
    .end local v6    # "i":I
    :cond_6
    const/4 v14, 0x1

    if-eq v2, v14, :cond_7

    .line 324
    const/4 v14, 0x3

    if-eq v2, v14, :cond_7

    .line 325
    const/4 v14, 0x6

    if-ne v2, v14, :cond_8

    .line 326
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->activePointerId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_8

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->activePointerId:I

    if-ne v14, v15, :cond_8

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->release()V

    .line 332
    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 242
    .restart local v6    # "i":I
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->activePointerId:I

    if-ne v14, v15, :cond_18

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$14(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Lcom/nostalgiaemulators/framework/controllers/TouchController;

    move-result-object v14

    .line 244
    move-object/from16 v0, p0

    iget v15, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->activePointerId:I

    invoke-virtual {v14, v15}, Lcom/nostalgiaemulators/framework/controllers/TouchController;->isPointerHandled(I)Z

    move-result v14

    if-nez v14, :cond_17

    .line 245
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 246
    .local v12, "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    .line 247
    .local v13, "y":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    invoke-static {v14, v12}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$12(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;F)V

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    invoke-static {v14, v13}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$13(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;F)V

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->dpadCenterX:F
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$1(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)F

    move-result v14

    sub-float v4, v12, v14

    .line 250
    .local v4, "dx":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->dpadCenterY:F
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$3(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)F

    move-result v14

    sub-float v5, v14, v13

    .line 251
    .local v5, "dy":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v15

    div-float v10, v14, v15

    .line 253
    .local v10, "tan":F
    const/4 v3, 0x0

    .local v3, "down":Z
    move v11, v3

    .local v11, "up":I
    move v7, v3

    .local v7, "left":I
    move v9, v3

    .line 255
    .local v9, "right":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->minDistX:I
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$15(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v14

    int-to-float v14, v14

    cmpl-float v14, v4, v14

    if-lez v14, :cond_e

    .line 256
    const/4 v9, 0x1

    .line 262
    .end local v7    # "left":I
    .end local v9    # "right":I
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->TAN_DIAGONAL_MIN:F

    cmpl-float v14, v10, v14

    if-lez v14, :cond_b

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->minDistY:I
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$16(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v14

    int-to-float v14, v14

    cmpl-float v14, v5, v14

    if-lez v14, :cond_f

    .line 264
    const/4 v11, 0x1

    .line 271
    .end local v11    # "up":I
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->TAN_DIAGONAL_MAX:F

    cmpl-float v14, v10, v14

    if-lez v14, :cond_c

    .line 272
    const/4 v9, 0x0

    .line 273
    .local v9, "right":Z
    const/4 v7, 0x0

    .line 276
    .end local v9    # "right":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->emulator:Lcom/nostalgiaemulators/framework/Emulator;
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$4(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Lcom/nostalgiaemulators/framework/Emulator;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->port:I
    invoke-static {v15}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$5(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    move-object/from16 v16, v0

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->rightMapped:I
    invoke-static/range {v16 .. v16}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$6(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v14, v15, v0, v9}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->emulator:Lcom/nostalgiaemulators/framework/Emulator;
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$4(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Lcom/nostalgiaemulators/framework/Emulator;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->port:I
    invoke-static {v15}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$5(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    move-object/from16 v16, v0

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->leftMapped:I
    invoke-static/range {v16 .. v16}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$7(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v14, v15, v0, v7}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->emulator:Lcom/nostalgiaemulators/framework/Emulator;
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$4(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Lcom/nostalgiaemulators/framework/Emulator;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->port:I
    invoke-static {v15}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$5(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    move-object/from16 v16, v0

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->upMapped:I
    invoke-static/range {v16 .. v16}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$8(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v14, v15, v0, v11}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->emulator:Lcom/nostalgiaemulators/framework/Emulator;
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$4(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Lcom/nostalgiaemulators/framework/Emulator;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->port:I
    invoke-static {v15}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$5(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    move-object/from16 v16, v0

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->downMapped:I
    invoke-static/range {v16 .. v16}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$9(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v14, v15, v0, v3}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 281
    if-eqz v9, :cond_12

    .line 282
    if-eqz v3, :cond_10

    .line 283
    const/4 v14, 0x7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->directionIdx:I

    .line 312
    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->invalidate()V

    .line 313
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 258
    .restart local v7    # "left":I
    .local v9, "right":I
    .restart local v11    # "up":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->minDistX:I
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$15(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    cmpg-float v14, v4, v14

    if-gez v14, :cond_a

    .line 259
    const/4 v7, 0x1

    .local v7, "left":Z
    goto/16 :goto_2

    .line 266
    .end local v7    # "left":Z
    .end local v9    # "right":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->this$0:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->minDistY:I
    invoke-static {v14}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->access$16(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    cmpg-float v14, v5, v14

    if-gez v14, :cond_b

    .line 267
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 285
    .end local v11    # "up":I
    :cond_10
    if-eqz v11, :cond_11

    .line 286
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->directionIdx:I

    goto :goto_4

    .line 289
    :cond_11
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->directionIdx:I

    goto :goto_4

    .line 292
    :cond_12
    if-eqz v7, :cond_15

    .line 293
    if-eqz v3, :cond_13

    .line 294
    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->directionIdx:I

    goto :goto_4

    .line 296
    :cond_13
    if-eqz v11, :cond_14

    .line 297
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->directionIdx:I

    goto :goto_4

    .line 300
    :cond_14
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->directionIdx:I

    goto :goto_4

    .line 304
    :cond_15
    if-eqz v11, :cond_16

    .line 305
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->directionIdx:I

    goto :goto_4

    .line 307
    :cond_16
    if-eqz v3, :cond_d

    .line 308
    const/4 v14, 0x6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->directionIdx:I

    goto :goto_4

    .line 316
    .end local v3    # "down":Z
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v10    # "tan":F
    .end local v12    # "x":F
    .end local v13    # "y":F
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;->release()V

    .line 241
    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method
