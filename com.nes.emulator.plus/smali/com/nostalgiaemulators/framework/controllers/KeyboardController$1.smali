.class Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;
.super Landroid/view/View;
.source "KeyboardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDpadXStates:Landroid/util/SparseIntArray;

.field mDpadYStates:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;Landroid/content/Context;)V
    .locals 1
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    .line 129
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->mDpadXStates:Landroid/util/SparseIntArray;

    .line 131
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->mDpadYStates:Landroid/util/SparseIntArray;

    return-void
.end method

.method private keyDown(IIZ)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "deviceId"    # I
    .param p3, "alt"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, -0x1

    .line 204
    const/4 v1, -0x1

    .line 206
    .local v1, "mapValue":I
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player0GamepadId:I
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$0(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 207
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$1(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    invoke-virtual {v5, v3, p1}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getMapping(II)I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 208
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->twoGamepadsRequired:Z
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$2(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->twoGamepadsRequired:Z
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$2(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player1GamepadId:I
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$3(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I

    move-result v5

    if-eq v5, p2, :cond_1

    .line 210
    :cond_0
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    invoke-static {v5, p2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$4(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;I)V

    .line 214
    :cond_1
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player1GamepadId:I
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$3(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 215
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$1(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    invoke-virtual {v5, v4, p1}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getMapping(II)I

    move-result v5

    if-eq v5, v7, :cond_3

    .line 216
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->twoGamepadsRequired:Z
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$2(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->twoGamepadsRequired:Z
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$2(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player0GamepadId:I
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$0(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I

    move-result v5

    if-eq v5, p2, :cond_3

    .line 218
    :cond_2
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    invoke-static {v5, p2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$5(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;I)V

    .line 222
    :cond_3
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->twoGamepadsRequired:Z
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$2(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player0GamepadId:I
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$0(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I

    move-result v5

    if-eq v5, v7, :cond_4

    .line 223
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player1GamepadId:I
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$3(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I

    move-result v5

    if-eq v5, v7, :cond_4

    .line 224
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player0GamepadId:I
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$0(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I

    move-result v5

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player1GamepadId:I
    invoke-static {v6}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$3(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 225
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    invoke-static {v5, v4}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$6(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;Z)V

    .line 228
    :cond_4
    if-ne p1, v9, :cond_5

    .line 229
    if-eqz p3, :cond_5

    .line 230
    const p1, 0x7b523eaa

    .line 234
    :cond_5
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$1(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 235
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player0GamepadId:I
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$0(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I

    move-result v5

    if-ne p2, v5, :cond_7

    move v2, v3

    .line 237
    .local v2, "player":I
    :goto_0
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->twoGamepadsRequired:Z
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$2(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 238
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$1(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    invoke-virtual {v5, v2, p1}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getMapping(II)I

    move-result v1

    .line 244
    :goto_1
    if-ne v1, v7, :cond_6

    if-lez p2, :cond_6

    .line 245
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$1(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/nostalgiaemulators/framework/KeyboardProfile;->loadedFromDisk:Z

    if-nez v5, :cond_9

    .line 246
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$1(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v4

    .line 248
    .local v0, "isDefaultUnchangedProfile":Z
    :goto_2
    if-eqz v0, :cond_6

    .line 249
    const/16 v3, 0x52

    if-eq p1, v3, :cond_6

    .line 250
    if-eq p1, v8, :cond_6

    .line 251
    const/16 v3, 0xce

    if-eq p1, v3, :cond_6

    .line 252
    const/16 v3, 0xbb

    if-eq p1, v3, :cond_6

    .line 253
    const/16 v3, 0x19

    if-eq p1, v3, :cond_6

    .line 254
    const/16 v3, 0x18

    if-eq p1, v3, :cond_6

    .line 255
    const/16 v3, 0xa4

    if-eq p1, v3, :cond_6

    .line 256
    if-eq p1, v9, :cond_6

    .line 257
    const/16 v3, 0x1a

    if-eq p1, v3, :cond_6

    .line 258
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->mismatchCount:I
    invoke-static {v3}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$8(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$9(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;I)V

    .line 260
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->mismatchCount:I
    invoke-static {v3}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$8(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I

    move-result v3

    if-ne v3, v8, :cond_6

    .line 261
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
    invoke-static {v3}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$10(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    move-result-object v3

    .line 262
    const-string v5, "Controller not working properly? Don\'t forget to configure it in the preferences!"

    invoke-virtual {v3, v5}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->showToast(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    const/16 v5, -0xa

    invoke-static {v3, v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$9(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;I)V

    .line 268
    .end local v0    # "isDefaultUnchangedProfile":Z
    :cond_6
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    invoke-virtual {v3, v1, v4}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->processKey(IZ)V

    .line 272
    .end local v2    # "player":I
    :goto_3
    return v4

    :cond_7
    move v2, v4

    .line 235
    goto :goto_0

    .line 241
    .restart local v2    # "player":I
    :cond_8
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$1(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    # invokes: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->getMappingSingleKeyboard(Lcom/nostalgiaemulators/framework/KeyboardProfile;I)I
    invoke-static {v5, p1}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$7(Lcom/nostalgiaemulators/framework/KeyboardProfile;I)I

    move-result v1

    goto :goto_1

    :cond_9
    move v0, v3

    .line 245
    goto :goto_2

    .end local v2    # "player":I
    :cond_a
    move v4, v3

    .line 272
    goto :goto_3
.end method

.method private keyUp(IIZ)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "deviceId"    # I
    .param p3, "alt"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 287
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 288
    if-eqz p3, :cond_0

    .line 289
    const p1, 0x7b523eaa

    .line 293
    :cond_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$1(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 294
    const/4 v0, -0x1

    .line 295
    .local v0, "mapValue":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player0GamepadId:I
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$0(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I

    move-result v4

    if-ne p2, v4, :cond_2

    move v1, v2

    .line 297
    .local v1, "player":I
    :goto_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->twoGamepadsRequired:Z
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$2(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 298
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$1(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v4

    invoke-virtual {v4, v1, p1}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getMapping(II)I

    move-result v0

    .line 304
    :goto_1
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    invoke-virtual {v4, v0, v2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->processKey(IZ)V

    .line 306
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$10(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->hideTouchController()V

    .line 313
    .end local v0    # "mapValue":I
    .end local v1    # "player":I
    :cond_1
    :goto_2
    return v3

    .restart local v0    # "mapValue":I
    :cond_2
    move v1, v3

    .line 295
    goto :goto_0

    .line 301
    .restart local v1    # "player":I
    :cond_3
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$1(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v4

    # invokes: Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->getMappingSingleKeyboard(Lcom/nostalgiaemulators/framework/KeyboardProfile;I)I
    invoke-static {v4, p1}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->access$7(Lcom/nostalgiaemulators/framework/KeyboardProfile;I)I

    move-result v0

    goto :goto_1

    .end local v0    # "mapValue":I
    .end local v1    # "player":I
    :cond_4
    move v3, v2

    .line 313
    goto :goto_2
.end method

.method private processHat(FFI)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "deviceId"    # I

    .prologue
    const/16 v9, 0x14

    const/16 v8, 0x13

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 147
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    move v4, v5

    :goto_0
    float-to-int v0, v4

    .line 148
    .local v0, "intX":I
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_5

    :goto_1
    float-to-int v1, v5

    .line 149
    .local v1, "intY":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->mDpadXStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 151
    .local v2, "lastDpadX":I
    if-eq v2, v0, :cond_0

    .line 152
    if-lez v2, :cond_6

    .line 153
    const/16 v4, 0x16

    invoke-direct {p0, v4, p3, v6}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->keyUp(IIZ)Z

    .line 160
    :cond_0
    :goto_2
    if-lez v0, :cond_7

    .line 161
    const/16 v4, 0x16

    invoke-direct {p0, v4, p3, v6}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->keyDown(IIZ)Z

    .line 167
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->mDpadXStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->mDpadYStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 170
    .local v3, "lastDpadY":I
    if-eq v3, v1, :cond_2

    .line 171
    if-lez v3, :cond_8

    .line 172
    invoke-direct {p0, v9, p3, v6}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->keyUp(IIZ)Z

    .line 179
    :cond_2
    :goto_4
    if-lez v1, :cond_9

    .line 180
    invoke-direct {p0, v9, p3, v6}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->keyDown(IIZ)Z

    .line 186
    :cond_3
    :goto_5
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->mDpadYStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    return-void

    .line 147
    .end local v0    # "intX":I
    .end local v1    # "intY":I
    .end local v2    # "lastDpadX":I
    .end local v3    # "lastDpadY":I
    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    goto :goto_0

    .line 148
    .restart local v0    # "intX":I
    :cond_5
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    goto :goto_1

    .line 155
    .restart local v1    # "intY":I
    .restart local v2    # "lastDpadX":I
    :cond_6
    if-gez v2, :cond_0

    .line 156
    const/16 v4, 0x15

    invoke-direct {p0, v4, p3, v6}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->keyUp(IIZ)Z

    goto :goto_2

    .line 163
    :cond_7
    if-gez v0, :cond_1

    .line 164
    const/16 v4, 0x15

    invoke-direct {p0, v4, p3, v6}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->keyDown(IIZ)Z

    goto :goto_3

    .line 174
    .restart local v3    # "lastDpadY":I
    :cond_8
    if-gez v3, :cond_2

    .line 175
    invoke-direct {p0, v8, p3, v6}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->keyUp(IIZ)Z

    goto :goto_4

    .line 182
    :cond_9
    if-gez v1, :cond_3

    .line 183
    invoke-direct {p0, v8, p3, v6}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->keyDown(IIZ)Z

    goto :goto_5
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 135
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .line 137
    .local v0, "deviceId":I
    const/16 v3, 0xf

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 138
    .local v1, "x":F
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 139
    .local v2, "y":F
    invoke-direct {p0, v1, v2, v0}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->processHat(FFI)V

    .line 140
    const/4 v3, 0x1

    .line 143
    .end local v0    # "deviceId":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 190
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 191
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 201
    :goto_0
    return v1

    .line 194
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 195
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    .line 194
    invoke-direct {p0, p1, v1, v2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->keyDown(IIZ)Z

    move-result v0

    .line 197
    .local v0, "res":Z
    if-nez v0, :cond_1

    .line 198
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 201
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 277
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 278
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    .line 277
    invoke-direct {p0, p1, v1, v2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$1;->keyUp(IIZ)Z

    move-result v0

    .line 280
    .local v0, "res":Z
    if-nez v0, :cond_0

    .line 281
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 284
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
