.class public Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;
.super Lcom/nostalgiaemulators/framework/remote/ControllableActivity;
.source "CheatsActivity.java"


# static fields
.field public static final EXTRA_IN_GAME_HASH:Ljava/lang/String; = "EXTRA_IN_GAME_HASH"


# instance fields
.field private adapter:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

.field private cheats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;",
            ">;"
        }
    .end annotation
.end field

.field private font:Landroid/graphics/Typeface;

.field private gameHash:Ljava/lang/String;

.field private helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

.field private list:Landroid/widget/ListView;

.field save:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->openCheatDetailDialog(Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V

    return-void
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->cheats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;)Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->gameHash:Ljava/lang/String;

    return-object v0
.end method

.method private openCheatDetailDialog(Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V
    .locals 10
    .param p1, "cheat"    # Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    .prologue
    .line 106
    new-instance v5, Landroid/app/Dialog;

    sget v0, Lcom/nostalgiaemulators/framework/R$style;->DialogTheme:I

    invoke-direct {v5, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 107
    .local v5, "dialog":Landroid/app/Dialog;
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 108
    .local v7, "inflater":Landroid/view/LayoutInflater;
    sget v0, Lcom/nostalgiaemulators/framework/R$layout;->dialog_new_cheat:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 109
    .local v6, "content":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 111
    sget v0, Lcom/nostalgiaemulators/framework/R$id;->dialog_new_cheat_chars:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 110
    check-cast v3, Landroid/widget/EditText;

    .line 113
    .local v3, "chars":Landroid/widget/EditText;
    sget v0, Lcom/nostalgiaemulators/framework/R$id;->dialog_new_cheat_desc:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 112
    check-cast v4, Landroid/widget/EditText;

    .line 115
    .local v4, "desc":Landroid/widget/EditText;
    sget v0, Lcom/nostalgiaemulators/framework/R$id;->dialog_new_cheat_label:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 114
    check-cast v8, Landroid/widget/TextView;

    .line 116
    .local v8, "title":Landroid/widget/TextView;
    sget v0, Lcom/nostalgiaemulators/framework/R$id;->dialog_new_cheat_save:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->save:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->save:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p1, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->chars:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p1, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->desc:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->save:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    :cond_1
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$4;

    invoke-direct {v0, p0, v3}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$4;-><init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-object v9, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->save:Landroid/widget/Button;

    new-instance v0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;-><init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 197
    return-void
.end method


# virtual methods
.method public editCheat(Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V
    .locals 0
    .param p1, "cheat"    # Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->openCheatDetailDialog(Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V

    .line 207
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v4, Lcom/nostalgiaemulators/framework/R$layout;->activity_cheats:I

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->setContentView(I)V

    .line 64
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->font:Landroid/graphics/Typeface;

    .line 65
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_IN_GAME_HASH"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->gameHash:Ljava/lang/String;

    .line 66
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->act_cheats_list:I

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->list:Landroid/widget/ListView;

    .line 67
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->gameHash:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->getAllCheats(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->cheats:Ljava/util/ArrayList;

    .line 68
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->cheats:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->font:Landroid/graphics/Typeface;

    invoke-direct {v4, p0, v5, v6}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;-><init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;Ljava/util/List;Landroid/graphics/Typeface;)V

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

    .line 69
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->list:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->act_cheats_label:I

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    .local v3, "label":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->act_cheats_back:I

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 73
    .local v1, "back":Landroid/widget/ImageButton;
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$1;

    invoke-direct {v4, p0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$1;-><init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->act_cheats_add:I

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 80
    .local v0, "add":Landroid/widget/ImageButton;
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$2;

    invoke-direct {v4, p0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$2;-><init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->act_cheats_help:I

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 87
    .local v2, "help":Landroid/widget/ImageButton;
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$3;

    invoke-direct {v4, p0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$3;-><init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onDestroy()V

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onResume()V

    .line 98
    return-void
.end method

.method public removeCheat(Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V
    .locals 2
    .param p1, "cheat"    # Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->cheats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->notifyDataSetChanged()V

    .line 202
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->gameHash:Ljava/lang/String;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->cheats:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1}, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->saveCheats(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 203
    return-void
.end method

.method public saveCheats()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->gameHash:Ljava/lang/String;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->cheats:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1}, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->saveCheats(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 211
    return-void
.end method

.method protected showHelpDialog()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getCheatHelpIds()[I

    move-result-object v0

    .line 217
    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->create(Landroid/content/Context;[I)Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->helpDialog:Lcom/nostalgiaemulators/framework/ui/tipsdialog/HelpDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 223
    :cond_1
    return-void
.end method
