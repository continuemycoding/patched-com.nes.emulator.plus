.class public Lcom/nostalgiaemulators/framework/base/GameMenu;
.super Ljava/lang/Object;
.source "GameMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;,
        Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;
    }
.end annotation


# instance fields
.field context:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;

.field font:Landroid/graphics/Typeface;

.field inflater:Landroid/view/LayoutInflater;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    .line 111
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->context:Landroid/app/Activity;

    .line 112
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->listener:Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;

    .line 113
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->font:Landroid/graphics/Typeface;

    .line 115
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 114
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->inflater:Landroid/view/LayoutInflater;

    .line 116
    invoke-interface {p2, p0}, Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;->onGameMenuCreate(Lcom/nostalgiaemulators/framework/base/GameMenu;)V

    .line 117
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/base/GameMenu;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/base/GameMenu;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method private createButton(Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;ILandroid/app/Dialog;)Landroid/view/View;
    .locals 7
    .param p1, "item"    # Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    .param p2, "margin"    # I
    .param p3, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 266
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/nostalgiaemulators/framework/R$layout;->game_menu_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 268
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->game_menu_item_label:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 267
    check-cast v2, Landroid/widget/TextView;

    .line 269
    .local v2, "label":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->font:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->game_menu_item_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 271
    check-cast v1, Landroid/widget/ImageView;

    .line 273
    .local v1, "iconView":Landroid/widget/ImageView;
    new-instance v4, Lcom/nostalgiaemulators/framework/base/GameMenu$4;

    invoke-direct {v4, p0, p3, p1}, Lcom/nostalgiaemulators/framework/base/GameMenu$4;-><init>(Lcom/nostalgiaemulators/framework/base/GameMenu;Landroid/app/Dialog;Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget v0, p1, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->iconRID:I

    .line 284
    .local v0, "iconRID":I
    if-lez v0, :cond_0

    .line 285
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 289
    iget-boolean v4, p1, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->enable:Z

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 290
    iget-boolean v4, p1, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->enable:Z

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 291
    return-object v3
.end method


# virtual methods
.method public add(I)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    .locals 3
    .param p1, "labelRID"    # I

    .prologue
    .line 134
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 134
    invoke-virtual {p0, v1, v2}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(Ljava/lang/String;I)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    move-result-object v0

    .line 136
    .local v0, "item":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    iput p1, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    .line 137
    return-object v0
.end method

.method public add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    .locals 2
    .param p1, "labelRID"    # I
    .param p2, "iconRID"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {p0, v1, p2}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(Ljava/lang/String;I)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    move-result-object v0

    .line 144
    .local v0, "item":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    iput p1, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    .line 145
    return-object v0
.end method

.method public add(Ljava/lang/String;)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(Ljava/lang/String;I)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;I)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "iconRID"    # I

    .prologue
    .line 120
    new-instance v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;-><init>(Lcom/nostalgiaemulators/framework/base/GameMenu;)V

    .line 121
    .local v0, "item":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    .line 122
    iput-object p1, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->title:Ljava/lang/String;

    .line 123
    iput p2, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->iconRID:I

    .line 124
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 152
    return-void
.end method

.method public findGameMenuItem(I)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 94
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 95
    .local v0, "item":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    iget v2, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method public getItem(I)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 295
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 301
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 295
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 296
    .local v0, "item":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    iget v2, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Z)V
    .locals 24
    .param p1, "showAds"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/GameMenu;->isOpen()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 162
    const-string v21, "gamemenu"

    const-string v22, "already showing"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 166
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 167
    new-instance v21, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->context:Landroid/app/Activity;

    move-object/from16 v22, v0

    sget v23, Lcom/nostalgiaemulators/framework/R$style;->GameDialogTheme:I

    invoke-direct/range {v21 .. v23}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->listener:Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;->onGameMenuPrepare(Lcom/nostalgiaemulators/framework/base/GameMenu;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    .line 174
    sget v22, Lcom/nostalgiaemulators/framework/R$layout;->game_menu_surround:I

    const/16 v23, 0x0

    .line 173
    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 175
    .local v18, "surroundContainer":Landroid/widget/RelativeLayout;
    new-instance v21, Lcom/nostalgiaemulators/framework/base/GameMenu$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu$1;-><init>(Lcom/nostalgiaemulators/framework/base/GameMenu;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    sget v21, Lcom/nostalgiaemulators/framework/R$id;->game_menu_container:I

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 182
    check-cast v4, Landroid/widget/LinearLayout;

    .line 185
    .local v4, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 184
    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 186
    .local v15, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->context:Landroid/app/Activity;

    move-object/from16 v21, v0

    .line 187
    const-string v22, "window"

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .line 186
    check-cast v20, Landroid/view/WindowManager;

    .line 188
    .local v20, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 189
    .local v5, "display":Landroid/view/Display;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/utils/Utils;->getDisplayWidth(Landroid/view/Display;)I

    move-result v19

    .line 190
    .local v19, "width":I
    div-int/lit8 v17, v19, 0xa

    .line 191
    .local v17, "px":I
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 192
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->context:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 194
    sget v22, Lcom/nostalgiaemulators/framework/R$dimen;->dialog_bck_pading:I

    .line 193
    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 195
    .local v14, "padding":I
    invoke-virtual {v4, v14, v14, v14, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->context:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 197
    sget v22, Lcom/nostalgiaemulators/framework/R$dimen;->dilog_button_margin:I

    .line 196
    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 198
    .local v12, "margin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->context:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    .line 200
    .local v9, "landsacpe":Z
    :goto_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v6, v0, :cond_2

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    new-instance v22, Lcom/nostalgiaemulators/framework/base/GameMenu$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu$2;-><init>(Lcom/nostalgiaemulators/framework/base/GameMenu;)V

    invoke-virtual/range {v21 .. v22}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    new-instance v22, Lcom/nostalgiaemulators/framework/base/GameMenu$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu$3;-><init>(Lcom/nostalgiaemulators/framework/base/GameMenu;)V

    invoke-virtual/range {v21 .. v22}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->listener:Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;->onGameMenuOpened(Lcom/nostalgiaemulators/framework/base/GameMenu;)V

    goto/16 :goto_0

    .line 198
    .end local v6    # "i":I
    .end local v9    # "landsacpe":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 201
    .restart local v6    # "i":I
    .restart local v9    # "landsacpe":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->visible:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    .line 200
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 205
    :cond_4
    if-eqz v9, :cond_6

    .line 206
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    .line 207
    const/16 v22, -0x2

    const/high16 v23, 0x3f800000    # 1.0f

    .line 206
    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 208
    .local v16, "pp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, 0x10

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 209
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->context:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 210
    .local v13, "menuRow":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 211
    .local v7, "item":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v12, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->createButton(Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;ILandroid/app/Dialog;)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    add-int/lit8 v6, v6, 0x1

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v6, v0, :cond_5

    .line 215
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->context:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 216
    .local v11, "lineSeparator":Landroid/widget/LinearLayout;
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 217
    const/16 v21, 0x1

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v11, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 219
    .local v8, "item2":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v8, v12, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->createButton(Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;ILandroid/app/Dialog;)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    .end local v8    # "item2":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    .end local v11    # "lineSeparator":Landroid/widget/LinearLayout;
    :cond_5
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    .end local v13    # "menuRow":Landroid/widget/LinearLayout;
    .end local v16    # "pp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v6, v0, :cond_3

    .line 231
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->context:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 232
    .local v10, "linSeperator":Landroid/widget/LinearLayout;
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 233
    const/16 v21, -0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 225
    .end local v7    # "item":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    .end local v10    # "linSeperator":Landroid/widget/LinearLayout;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 226
    .restart local v7    # "item":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v12, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->createButton(Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;ILandroid/app/Dialog;)Landroid/view/View;

    move-result-object v21

    .line 227
    const/16 v22, -0x1

    const/16 v23, -0x2

    .line 226
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_4
.end method
