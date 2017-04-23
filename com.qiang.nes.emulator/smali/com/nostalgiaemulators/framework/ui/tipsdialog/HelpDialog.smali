.class public Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;
.super Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;
.source "HelpDialog.java"


# instance fields
.field helpStringRIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field includeLinkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;IIIIIII[I)V
    .locals 1
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
    .line 41
    .line 42
    invoke-direct/range {p0 .. p9}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;-><init>(Landroid/content/Context;IIIIIII[I)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->helpStringRIDs:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->includeLinkMap:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public static create(Landroid/content/Context;[I)Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "helpStringsIDs"    # [I

    .prologue
    .line 46
    array-length v1, p1

    new-array v9, v1, [I

    .line 48
    .local v9, "layouts":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v1, v9

    if-lt v10, v1, :cond_1

    .line 51
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    sget v2, Lcom/nostalgiaemulators/framework/R$layout;->tips_dialog:I

    .line 52
    sget v3, Lcom/nostalgiaemulators/framework/R$id;->tips_dialog_next:I

    sget v4, Lcom/nostalgiaemulators/framework/R$id;->tips_dialog_prev:I

    .line 53
    sget v5, Lcom/nostalgiaemulators/framework/R$id;->tips_dialog_label:I

    sget v6, Lcom/nostalgiaemulators/framework/R$id;->tips_dialog_counter:I

    .line 54
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->tips_dialog_content:I

    sget v8, Lcom/nostalgiaemulators/framework/R$id;->tips_dialog_bottom_line:I

    move-object v1, p0

    .line 51
    invoke-direct/range {v0 .. v9}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;-><init>(Landroid/content/Context;IIIIIII[I)V

    .line 55
    .local v0, "hd":Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->helpStringRIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 57
    array-length v2, p1

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_2

    .line 61
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->createTip()V

    .line 64
    :cond_0
    return-object v0

    .line 49
    .end local v0    # "hd":Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;
    :cond_1
    sget v1, Lcom/nostalgiaemulators/framework/R$layout;->simple_text_tip:I

    aput v1, v9, v10

    .line 48
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 57
    .restart local v0    # "hd":Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;
    :cond_2
    aget v11, p1, v1

    .line 58
    .local v11, "id":I
    iget-object v3, v0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->helpStringRIDs:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addHelp(I)V
    .locals 2
    .param p1, "helpStringRID"    # I

    .prologue
    .line 104
    sget v0, Lcom/nostalgiaemulators/framework/R$layout;->simple_text_tip:I

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->addTip(I)V

    .line 105
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->helpStringRIDs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->createTip()V

    .line 107
    return-void
.end method

.method protected initDialog()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->initDialog()V

    .line 97
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->nextButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->prevButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->label:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->counter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    return-void
.end method

.method public initTip(ILandroid/view/View;)V
    .locals 7
    .param p1, "rid"    # I
    .param p2, "tipLayout"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->helpStringRIDs:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    move-object v3, p2

    .line 70
    check-cast v3, Landroid/widget/TextView;

    .line 71
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->font:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->getTipIdx()I

    move-result v1

    .line 73
    .local v1, "idx":I
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->helpStringRIDs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 75
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "txt":Ljava/lang/String;
    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 79
    .local v2, "includeLink":Z
    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    :cond_0
    if-eqz v2, :cond_2

    .line 84
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 92
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v1    # "idx":I
    .end local v2    # "includeLink":Z
    .end local v3    # "tv":Landroid/widget/TextView;
    .end local v4    # "txt":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 88
    .restart local v0    # "id":Ljava/lang/Integer;
    .restart local v1    # "idx":I
    .restart local v2    # "includeLink":Z
    .restart local v3    # "tv":Landroid/widget/TextView;
    .restart local v4    # "txt":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
