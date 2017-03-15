.class public Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;
.super Landroid/app/Dialog;
.source "HintDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.ui.widget.HintDialog"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 28
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "textRID"    # I

    .prologue
    .line 40
    sget v24, Lcom/nostalgiaemulators/framework/R$style;->HintTheme:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    new-instance v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .local v6, "container":Landroid/widget/RelativeLayout;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    .line 43
    .local v13, "root":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 44
    .local v15, "rootW":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 45
    .local v14, "rootH":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 46
    .local v21, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 47
    .local v8, "h":I
    move/from16 v0, v21

    if-le v0, v8, :cond_0

    move/from16 v8, v21

    :cond_0
    move/from16 v21, v8

    .line 48
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;->getRelativeLeft(Landroid/view/View;Landroid/view/View;)I

    move-result v22

    .line 49
    .local v22, "x":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;->getRelativeTop(Landroid/view/View;Landroid/view/View;)I

    move-result v23

    .line 50
    .local v23, "y":I
    const-string v24, "com.nostalgiaemulators.framework.ui.widget.HintDialog"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v20, Landroid/view/View;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    .local v20, "v":Landroid/view/View;
    sget v24, Lcom/nostalgiaemulators/framework/R$drawable;->hint_focus:I

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 53
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v0, v21

    invoke-direct {v10, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v10, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v23

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 55
    move/from16 v0, v22

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 56
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v9, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    .local v9, "left":Landroid/view/View;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v22

    invoke-direct {v10, v0, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    .restart local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    sget v24, Lcom/nostalgiaemulators/framework/R$color;->hint_bck_color:I

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 64
    .local v12, "right":Landroid/view/View;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v24, v22, v21

    sub-int v24, v15, v24

    move/from16 v0, v24

    invoke-direct {v10, v0, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    .restart local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v24, v22, v21

    move/from16 v0, v24

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 66
    invoke-virtual {v12, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    sget v24, Lcom/nostalgiaemulators/framework/R$color;->hint_bck_color:I

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    invoke-virtual {v6, v12, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v18, Landroid/view/View;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 70
    .local v18, "top":Landroid/view/View;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    .restart local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v22

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 72
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    sget v24, Lcom/nostalgiaemulators/framework/R$color;->hint_bck_color:I

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v5, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 76
    .local v5, "bottom":Landroid/view/View;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v24, v23, v8

    sub-int v24, v14, v24

    move/from16 v0, v21

    move/from16 v1, v24

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .restart local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v22

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 78
    add-int v24, v23, v8

    move/from16 v0, v24

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 79
    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    sget v24, Lcom/nostalgiaemulators/framework/R$color;->hint_bck_color:I

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    invoke-virtual {v6, v5, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-static/range {p1 .. p1}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createHintFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 83
    .local v7, "font":Landroid/graphics/Typeface;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 84
    .local v11, "res":Landroid/content/res/Resources;
    sget v24, Lcom/nostalgiaemulators/framework/R$dimen;->slot_hint_text_size:I

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 85
    .local v16, "size":I
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v19, "tv":Landroid/widget/TextView;
    sget v24, Lcom/nostalgiaemulators/framework/R$color;->ads_color:I

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, -0x2

    .line 91
    const/16 v25, -0x2

    .line 90
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    .restart local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v24, v23, v8

    add-int v24, v24, v16

    move/from16 v0, v24

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 93
    move/from16 v0, v16

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 94
    move/from16 v0, v16

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 95
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 98
    .local v17, "skip":Landroid/widget/TextView;
    sget v24, Lcom/nostalgiaemulators/framework/R$color;->ads_color:I

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    const-string v24, "OK"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    mul-int/lit8 v24, v16, 0x2

    mul-int/lit8 v25, v16, 0x2

    mul-int/lit8 v26, v16, 0x2

    mul-int/lit8 v27, v16, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, -0x2

    .line 104
    const/16 v25, -0x2

    .line 103
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    .restart local v10    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v24, 0xc

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    const/16 v24, 0xb

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    move/from16 v0, v16

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 108
    move/from16 v0, v16

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 109
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v24, Lcom/nostalgiaemulators/framework/ui/widget/HintDialog$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/widget/HintDialog$1;-><init>(Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v24, Lcom/nostalgiaemulators/framework/R$drawable;->hint_button_bck:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 117
    const/16 v24, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;->setContentView(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method private getRelativeLeft(Landroid/view/View;Landroid/view/View;)I
    .locals 2
    .param p1, "myView"    # Landroid/view/View;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;->getRelativeLeft(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 127
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getRelativeTop(Landroid/view/View;Landroid/view/View;)I
    .locals 2
    .param p1, "myView"    # Landroid/view/View;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;->getRelativeTop(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 136
    add-int/2addr v0, v1

    goto :goto_0
.end method
