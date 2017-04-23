.class public Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;
.super Lcom/nostalgiaemulators/framework/remote/ControllableActivity;
.source "SlotSelectionActivity.java"


# static fields
.field public static final DIALOAG_TYPE_LOAD:I = 0x1

.field public static final DIALOAG_TYPE_SAVE:I = 0x2

.field public static final EXTRA_BASE_DIRECTORY:Ljava/lang/String; = "EXTRA_BASE_DIR"

.field public static final EXTRA_DIALOG_TYPE_INT:Ljava/lang/String; = "EXTRA_DIALOG_TYPE_INT"

.field public static final EXTRA_GAME:Ljava/lang/String; = "EXTRA_GAME"

.field public static final EXTRA_SLOT:Ljava/lang/String; = "EXTRA_SLOT"

.field private static final REMOVE_SLOT:I = 0x1

.field private static final SEND_SLOT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.ui.gamegallery.SlotSelectionActivity"


# instance fields
.field clearIcon:Landroid/graphics/drawable/Drawable;

.field font:Landroid/graphics/Typeface;

.field game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

.field private helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

.field loadFocusIdx:I

.field saveFocusIdx:I

.field sendIcon:Landroid/graphics/drawable/Drawable;

.field slots:[Landroid/view/View;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;-><init>()V

    .line 57
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->font:Landroid/graphics/Typeface;

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->slots:[Landroid/view/View;

    .line 212
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->loadFocusIdx:I

    .line 213
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->saveFocusIdx:I

    .line 300
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;IZ)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->onSelected(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;IZ)V

    return-void
.end method

.method private initSlot(Lcom/nostalgiaemulators/framework/SlotInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "slotInfo"    # Lcom/nostalgiaemulators/framework/SlotInfo;
    .param p2, "idx"    # I
    .param p3, "labelS"    # Ljava/lang/String;
    .param p4, "messageS"    # Ljava/lang/String;
    .param p5, "dateS"    # Ljava/lang/String;
    .param p6, "timeS"    # Ljava/lang/String;

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->slots:[Landroid/view/View;

    aget-object v5, v2, p2

    .line 76
    .local v5, "slotView":Landroid/view/View;
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/nostalgiaemulators/framework/SlotInfo;->isUsed:Z

    .line 77
    .local v13, "isUsed":Z
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/SlotInfo;->screenShot:Landroid/graphics/Bitmap;

    .line 78
    .local v15, "screenshotBitmap":Landroid/graphics/Bitmap;
    sget v2, Lcom/nostalgiaemulators/framework/R$id;->row_slot_label:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 80
    .local v14, "label":Landroid/widget/TextView;
    sget v2, Lcom/nostalgiaemulators/framework/R$id;->row_slot_message:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 79
    check-cast v8, Landroid/widget/TextView;

    .line 81
    .local v8, "message":Landroid/widget/TextView;
    sget v2, Lcom/nostalgiaemulators/framework/R$id;->row_slot_date:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 82
    .local v12, "date":Landroid/widget/TextView;
    sget v2, Lcom/nostalgiaemulators/framework/R$id;->row_slot_time:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 84
    .local v16, "time":Landroid/widget/TextView;
    sget v2, Lcom/nostalgiaemulators/framework/R$id;->row_slot_screenshot:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 83
    check-cast v9, Landroid/widget/ImageView;

    .line 85
    .local v9, "screenshot":Landroid/widget/ImageView;
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->font:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    new-instance v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$1;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$1;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;I)V

    .line 99
    .local v7, "afterEraseClickListener":Landroid/view/View$OnClickListener;
    new-instance v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$2;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v2, v0, v1, v13}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$2;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;IZ)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    if-eqz v13, :cond_0

    .line 107
    new-instance v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p1

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v11}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;Ljava/lang/String;Landroid/view/View;Lcom/nostalgiaemulators/framework/SlotInfo;Landroid/view/View$OnClickListener;Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 192
    :cond_0
    if-eqz v15, :cond_1

    .line 193
    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    :cond_1
    return-void
.end method

.method private onSelected(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;IZ)V
    .locals 3
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    .param p2, "slot"    # I
    .param p3, "isUsed"    # Z

    .prologue
    .line 199
    iget v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez p3, :cond_0

    .line 208
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "EXTRA_GAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 205
    const-string v1, "EXTRA_SLOT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->source_onCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onDestroy()V

    .line 39
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 297
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onResume()V

    .line 298
    return-void
.end method

.method protected showHelpDialog()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getSlotHelpIds()[I

    move-result-object v0

    .line 304
    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->create(Landroid/content/Context;[I)Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 310
    :cond_1
    return-void
.end method

.method protected source_onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super/range {p0 .. p1}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v22, Lcom/nostalgiaemulators/framework/R$drawable;->ic_clear_slot:I

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->clearIcon:Landroid/graphics/drawable/Drawable;

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v22, Lcom/nostalgiaemulators/framework/R$drawable;->ic_send_slot:I

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->sendIcon:Landroid/graphics/drawable/Drawable;

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v22, "EXTRA_GAME"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v22, "EXTRA_BASE_DIR"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 222
    .local v11, "baseDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    iget-object v4, v4, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-static {v11, v4}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getSlots(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 223
    .local v19, "slotInfos":Ljava/util/List;, "Ljava/util/List<Lcom/nostalgiaemulators/framework/SlotInfo;>;"
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->font:Landroid/graphics/Typeface;

    .line 224
    sget v4, Lcom/nostalgiaemulators/framework/R$layout;->activity_slot_selection:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->setContentView(I)V

    .line 225
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->act_slot_label:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 226
    .local v18, "labelTv":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 227
    const-string v22, "EXTRA_DIALOG_TYPE_INT"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 226
    move-object/from16 v0, p0

    iput v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->type:I

    .line 228
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->type:I

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_2

    const-string v4, "\u8bfb\u6863"

    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->font:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 230
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->help_btn:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    .line 231
    .local v15, "help":Landroid/widget/ImageButton;
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$4;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;)V

    invoke-virtual {v15, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->slots:[Landroid/view/View;

    const/16 v22, 0x0

    sget v23, Lcom/nostalgiaemulators/framework/R$id;->slot_0:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    aput-object v23, v4, v22

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->slots:[Landroid/view/View;

    const/16 v22, 0x1

    sget v23, Lcom/nostalgiaemulators/framework/R$id;->slot_1:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    aput-object v23, v4, v22

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->slots:[Landroid/view/View;

    const/16 v22, 0x2

    sget v23, Lcom/nostalgiaemulators/framework/R$id;->slot_2:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    aput-object v23, v4, v22

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->slots:[Landroid/view/View;

    const/16 v22, 0x3

    sget v23, Lcom/nostalgiaemulators/framework/R$id;->slot_3:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    aput-object v23, v4, v22

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->slots:[Landroid/view/View;

    const/16 v22, 0x4

    sget v23, Lcom/nostalgiaemulators/framework/R$id;->slot_4:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    aput-object v23, v4, v22

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->slots:[Landroid/view/View;

    const/16 v22, 0x5

    sget v23, Lcom/nostalgiaemulators/framework/R$id;->slot_5:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    aput-object v23, v4, v22

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->slots:[Landroid/view/View;

    const/16 v22, 0x6

    sget v23, Lcom/nostalgiaemulators/framework/R$id;->slot_6:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    aput-object v23, v4, v22

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->slots:[Landroid/view/View;

    const/16 v22, 0x7

    sget v23, Lcom/nostalgiaemulators/framework/R$id;->slot_7:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    aput-object v23, v4, v22

    .line 245
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    .line 246
    .local v12, "dateFormat":Ljava/text/DateFormat;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v21

    .line 247
    .local v21, "timeFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 248
    .local v13, "dd":Ljava/util/Calendar;
    const/16 v4, 0x7b2

    const/16 v22, 0xa

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v4, v0, v1}, Ljava/util/Calendar;->set(III)V

    .line 249
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 250
    .local v14, "emptyDate":Ljava/lang/String;
    const-string v4, "7"

    const-string v22, "-"

    move-object/from16 v0, v22

    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 251
    const/16 v4, 0x30

    const/16 v22, 0x2d

    move/from16 v0, v22

    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 252
    const/16 v4, 0x31

    const/16 v22, 0x2d

    move/from16 v0, v22

    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 253
    const/16 v4, 0x39

    const/16 v22, 0x2d

    move/from16 v0, v22

    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 254
    const-wide/16 v16, 0x0

    .line 255
    .local v16, "focusTime":J
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->saveFocusIdx:I

    .line 257
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v4, 0x8

    if-lt v6, v4, :cond_3

    .line 283
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->loadFocusIdx:I

    if-gez v4, :cond_0

    .line 284
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->loadFocusIdx:I

    .line 286
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->saveFocusIdx:I

    if-gez v4, :cond_1

    .line 287
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->saveFocusIdx:I

    .line 288
    :cond_1
    return-void

    .line 228
    .end local v6    # "i":I
    .end local v12    # "dateFormat":Ljava/text/DateFormat;
    .end local v13    # "dd":Ljava/util/Calendar;
    .end local v14    # "emptyDate":Ljava/lang/String;
    .end local v15    # "help":Landroid/widget/ImageButton;
    .end local v16    # "focusTime":J
    .end local v21    # "timeFormat":Ljava/text/DateFormat;
    :cond_2
    const-string v4, "\u5b58\u6863"

    goto/16 :goto_0

    .line 258
    .restart local v6    # "i":I
    .restart local v12    # "dateFormat":Ljava/text/DateFormat;
    .restart local v13    # "dd":Ljava/util/Calendar;
    .restart local v14    # "emptyDate":Ljava/lang/String;
    .restart local v15    # "help":Landroid/widget/ImageButton;
    .restart local v16    # "focusTime":J
    .restart local v21    # "timeFormat":Ljava/text/DateFormat;
    :cond_3
    const-string v8, "EMPTY"

    .line 259
    .local v8, "message":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nostalgiaemulators/framework/SlotInfo;

    .line 261
    .local v5, "slotInfo":Lcom/nostalgiaemulators/framework/SlotInfo;
    iget-boolean v4, v5, Lcom/nostalgiaemulators/framework/SlotInfo;->isUsed:Z

    if-eqz v4, :cond_4

    .line 262
    const-string v8, "USED"

    .line 265
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v22, "SLOT  "

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v22, v6, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "label":Ljava/lang/String;
    new-instance v20, Ljava/util/Date;

    iget-wide v0, v5, Lcom/nostalgiaemulators/framework/SlotInfo;->lastModified:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 267
    .local v20, "time":Ljava/util/Date;
    iget-wide v0, v5, Lcom/nostalgiaemulators/framework/SlotInfo;->lastModified:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v4, v22, v24

    if-nez v4, :cond_7

    move-object v9, v14

    .line 269
    .local v9, "dateString":Ljava/lang/String;
    :goto_2
    iget-wide v0, v5, Lcom/nostalgiaemulators/framework/SlotInfo;->lastModified:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v4, v22, v24

    if-nez v4, :cond_8

    const-string v10, "--:--"

    .local v10, "timeString":Ljava/lang/String;
    :goto_3
    move-object/from16 v4, p0

    .line 271
    invoke-direct/range {v4 .. v10}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->initSlot(Lcom/nostalgiaemulators/framework/SlotInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-wide v0, v5, Lcom/nostalgiaemulators/framework/SlotInfo;->lastModified:J

    move-wide/from16 v22, v0

    cmp-long v4, v16, v22

    if-gez v4, :cond_5

    .line 274
    move-object/from16 v0, p0

    iput v6, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->loadFocusIdx:I

    .line 275
    iget-wide v0, v5, Lcom/nostalgiaemulators/framework/SlotInfo;->lastModified:J

    move-wide/from16 v16, v0

    .line 278
    :cond_5
    iget-boolean v4, v5, Lcom/nostalgiaemulators/framework/SlotInfo;->isUsed:Z

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->saveFocusIdx:I

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_6

    .line 279
    move-object/from16 v0, p0

    iput v6, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->saveFocusIdx:I

    .line 257
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 268
    .end local v9    # "dateString":Ljava/lang/String;
    .end local v10    # "timeString":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 270
    .restart local v9    # "dateString":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3
.end method
