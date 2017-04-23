.class public abstract Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;
.super Landroid/app/Dialog;
.source "TipsDialog.java"


# instance fields
.field protected bottomLine:Landroid/view/View;

.field protected content:Landroid/view/View;

.field protected counter:Landroid/widget/TextView;

.field protected font:Landroid/graphics/Typeface;

.field private inflater:Landroid/view/LayoutInflater;

.field protected label:Landroid/widget/TextView;

.field protected nextButton:Landroid/view/View;

.field protected prevButton:Landroid/view/View;

.field tipContent:Landroid/view/ViewGroup;

.field private tipIdx:I

.field private tipsLayoutRIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIII[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutRID"    # I
    .param p3, "nextBtnRID"    # I
    .param p4, "prevBtnRID"    # I
    .param p5, "labelRID"    # I
    .param p6, "counterRID"    # I
    .param p7, "tipContentRID"    # I
    .param p8, "bottomLineRID"    # I
    .param p9, "tipsLayoutRIDs"    # [I

    .prologue
    const/4 v1, 0x0

    .line 53
    sget v2, Lcom/nostalgiaemulators/framework/R$style;->GameDialogTheme:I

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipIdx:I

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipsLayoutRIDs:Ljava/util/ArrayList;

    .line 54
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->setCanceledOnTouchOutside(Z)V

    .line 55
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipsLayoutRIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 57
    array-length v2, p9

    :goto_0
    if-lt v1, v2, :cond_0

    .line 61
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 60
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->inflater:Landroid/view/LayoutInflater;

    .line 62
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->inflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->content:Landroid/view/View;

    .line 63
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->content:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->setContentView(Landroid/view/View;)V

    .line 64
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->font:Landroid/graphics/Typeface;

    .line 65
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->content:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->nextButton:Landroid/view/View;

    .line 67
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->nextButton:Landroid/view/View;

    if-nez v1, :cond_1

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "nextBtnRID is wrong reference"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    aget v0, p9, v1

    .line 58
    .local v0, "id":I
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipsLayoutRIDs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "id":I
    :cond_1
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->nextButton:Landroid/view/View;

    new-instance v2, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog$1;

    invoke-direct {v2, p0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog$1;-><init>(Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->content:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->prevButton:Landroid/view/View;

    .line 81
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->prevButton:Landroid/view/View;

    if-nez v1, :cond_2

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "prevBtnRID is wrong reference"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->prevButton:Landroid/view/View;

    new-instance v2, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog$2;

    invoke-direct {v2, p0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog$2;-><init>(Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->content:Landroid/view/View;

    invoke-virtual {v1, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipContent:Landroid/view/ViewGroup;

    .line 95
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipContent:Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 97
    const-string v2, "tipContentRID is wrong reference"

    .line 96
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->content:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->label:Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->content:Landroid/view/View;

    invoke-virtual {v1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->counter:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->content:Landroid/view/View;

    invoke-virtual {v1, p8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->bottomLine:Landroid/view/View;

    .line 103
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->initDialog()V

    .line 105
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipsLayoutRIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->createTip()V

    .line 107
    :cond_4
    return-void
.end method


# virtual methods
.method public addTip(I)V
    .locals 2
    .param p1, "layoutRID"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipsLayoutRIDs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method protected createTip()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 137
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipsLayoutRIDs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 138
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->counter:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->prevButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->nextButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->bottomLine:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :goto_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipContent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, "oldTip":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 154
    const v5, 0x10a0001

    .line 153
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 155
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipsLayoutRIDs:Ljava/util/ArrayList;

    iget v5, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipIdx:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 159
    .local v2, "rid":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->inflater:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 161
    .local v3, "tip":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 162
    invoke-virtual {p0, v2, v3}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->initTip(ILandroid/view/View;)V

    .line 163
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipContent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 164
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipContent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 166
    const/high16 v5, 0x10a0000

    .line 165
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 167
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->counter:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 171
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->counter:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipIdx:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipsLayoutRIDs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_2
    return-void

    .line 144
    .end local v1    # "oldTip":Landroid/view/View;
    .end local v2    # "rid":I
    .end local v3    # "tip":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->counter:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->prevButton:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->nextButton:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->bottomLine:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public getTipIdx()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipIdx:I

    return v0
.end method

.method protected initDialog()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public abstract initTip(ILandroid/view/View;)V
.end method

.method public nextTip()V
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipIdx:I

    .line 117
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipIdx:I

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipsLayoutRIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipIdx:I

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->createTip()V

    .line 122
    return-void
.end method

.method public prevTip()V
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipIdx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipIdx:I

    .line 128
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipIdx:I

    if-gez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipsLayoutRIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->tipIdx:I

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->createTip()V

    .line 133
    return-void
.end method
