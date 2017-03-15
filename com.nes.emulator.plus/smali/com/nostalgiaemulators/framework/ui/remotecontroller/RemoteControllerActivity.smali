.class public Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;
.super Landroid/app/Activity;
.source "RemoteControllerActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.ui.remotecontroller.RemoteControllerActivity"


# instance fields
.field broadcastReceiver:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

.field private client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

.field dialog:Landroid/app/Dialog;

.field emulatorKeysListener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

.field font:Landroid/graphics/Typeface;

.field ip:Ljava/lang/String;

.field port:I

.field portIndicator:Landroid/widget/TextView;

.field resToKeyCode:Landroid/util/SparseIntArray;

.field searchBox:Landroid/widget/EditText;

.field searchMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    .line 80
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->searchMode:Z

    .line 263
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$1;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$1;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->emulatorKeysListener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    .line 281
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->ip:Ljava/lang/String;

    .line 282
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->port:I

    .line 283
    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

    invoke-direct {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->broadcastReceiver:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->openSelectServerDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->openSelectIpDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->openPortDialog()V

    return-void
.end method

.method static synthetic access$4(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;I)V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->start(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private openPortDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 469
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v8

    invoke-interface {v8}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->isMultiPlayerSupported()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 470
    new-instance v2, Landroid/app/Dialog;

    sget v8, Lcom/nostalgiaemulators/framework/R$style;->DialogTheme:I

    invoke-direct {v2, p0, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 471
    .local v2, "dialog":Landroid/app/Dialog;
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 472
    .local v5, "inflater":Landroid/view/LayoutInflater;
    sget v8, Lcom/nostalgiaemulators/framework/R$layout;->dialog_select_port:I

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 473
    .local v1, "content":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 475
    sget v8, Lcom/nostalgiaemulators/framework/R$id;->dialog_select_server_title:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 474
    check-cast v7, Landroid/widget/TextView;

    .line 476
    .local v7, "title":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 477
    new-instance v8, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$17;

    invoke-direct {v8, p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$17;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 484
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 485
    const/4 v8, 0x4

    new-array v4, v8, [I

    sget v8, Lcom/nostalgiaemulators/framework/R$id;->dialog_select_port_1:I

    aput v8, v4, v10

    const/4 v8, 0x1

    .line 486
    sget v9, Lcom/nostalgiaemulators/framework/R$id;->dialog_select_port_2:I

    aput v9, v4, v8

    const/4 v8, 0x2

    sget v9, Lcom/nostalgiaemulators/framework/R$id;->dialog_select_port_3:I

    aput v9, v4, v8

    const/4 v8, 0x3

    .line 487
    sget v9, Lcom/nostalgiaemulators/framework/R$id;->dialog_select_port_4:I

    aput v9, v4, v8

    .line 490
    .local v4, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v4

    if-lt v3, v8, :cond_0

    .line 506
    .end local v1    # "content":Landroid/view/View;
    .end local v2    # "dialog":Landroid/app/Dialog;
    .end local v3    # "i":I
    .end local v4    # "ids":[I
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "title":Landroid/widget/TextView;
    :goto_1
    return-void

    .line 491
    .restart local v1    # "content":Landroid/view/View;
    .restart local v2    # "dialog":Landroid/app/Dialog;
    .restart local v3    # "i":I
    .restart local v4    # "ids":[I
    .restart local v5    # "inflater":Landroid/view/LayoutInflater;
    .restart local v7    # "title":Landroid/widget/TextView;
    :cond_0
    aget v8, v4, v3

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 492
    .local v0, "b":Landroid/widget/Button;
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 493
    move v6, v3

    .line 494
    .local v6, "portIdx":I
    new-instance v8, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$18;

    invoke-direct {v8, p0, v2, v6}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$18;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Landroid/app/Dialog;I)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "b":Landroid/widget/Button;
    .end local v1    # "content":Landroid/view/View;
    .end local v2    # "dialog":Landroid/app/Dialog;
    .end local v3    # "i":I
    .end local v4    # "ids":[I
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "portIdx":I
    .end local v7    # "title":Landroid/widget/TextView;
    :cond_1
    invoke-direct {p0, v10}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->start(I)V

    goto :goto_1
.end method

.method private openSelectIpDialog()V
    .locals 12

    .prologue
    .line 371
    new-instance v2, Landroid/app/Dialog;

    sget v10, Lcom/nostalgiaemulators/framework/R$style;->DialogTheme:I

    invoke-direct {v2, p0, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 372
    .local v2, "dialog":Landroid/app/Dialog;
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 373
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v10, Lcom/nostalgiaemulators/framework/R$layout;->dialog_manually_set_server:I

    .line 374
    const/4 v11, 0x0

    .line 373
    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 375
    .local v1, "content":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 377
    sget v10, Lcom/nostalgiaemulators/framework/R$id;->dialog_manually_server_set_ip_prefix:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 376
    check-cast v7, Landroid/widget/TextView;

    .line 379
    .local v7, "prefix":Landroid/widget/TextView;
    sget v10, Lcom/nostalgiaemulators/framework/R$id;->dialog_manually_server_set:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 378
    check-cast v4, Landroid/widget/EditText;

    .line 381
    .local v4, "input":Landroid/widget/EditText;
    sget v10, Lcom/nostalgiaemulators/framework/R$id;->dialog_select_server_btn_ok:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 380
    check-cast v6, Landroid/widget/Button;

    .line 383
    .local v6, "okBtn":Landroid/widget/Button;
    sget v10, Lcom/nostalgiaemulators/framework/R$id;->dialog_select_server_btn_cancel:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 382
    check-cast v0, Landroid/widget/Button;

    .line 385
    .local v0, "cancel":Landroid/widget/Button;
    sget v10, Lcom/nostalgiaemulators/framework/R$id;->dialog_select_server_title:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 384
    check-cast v9, Landroid/widget/TextView;

    .line 386
    .local v9, "title":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 387
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 388
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 389
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 390
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 391
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/Utils;->getNetPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, "prefixS":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->ip:Ljava/lang/String;

    .line 395
    .local v5, "iptxt":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 396
    const-string v10, ""

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 402
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 403
    new-instance v10, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$13;

    invoke-direct {v10, p0, v4, v6}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$13;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 432
    new-instance v10, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$14;

    invoke-direct {v10, p0, v2}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$14;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    new-instance v10, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;

    invoke-direct {v10, p0, v2, v7, v4}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Landroid/app/Dialog;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    new-instance v10, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$16;

    invoke-direct {v10, p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$16;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 465
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 466
    return-void

    .line 399
    :cond_0
    const-string v5, "1"

    goto :goto_0
.end method

.method private openSelectServerDialog()Landroid/app/Dialog;
    .locals 11

    .prologue
    .line 286
    new-instance v2, Landroid/app/Dialog;

    sget v9, Lcom/nostalgiaemulators/framework/R$style;->DialogTheme:I

    invoke-direct {v2, p0, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 287
    .local v2, "dialog":Landroid/app/Dialog;
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 288
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v9, Lcom/nostalgiaemulators/framework/R$layout;->dialog_select_server:I

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 290
    .local v1, "content":Landroid/view/View;
    sget v9, Lcom/nostalgiaemulators/framework/R$id;->dialog_select_server_list:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 289
    check-cast v5, Landroid/widget/ListView;

    .line 291
    .local v5, "listView":Landroid/widget/ListView;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v8, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;>;"
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;

    invoke-direct {v4, p0, v8}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 294
    .local v4, "listAdapter":Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;
    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 295
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 297
    sget v9, Lcom/nostalgiaemulators/framework/R$id;->dialog_select_server_title:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 296
    check-cast v7, Landroid/widget/TextView;

    .line 298
    .local v7, "title":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 300
    sget v9, Lcom/nostalgiaemulators/framework/R$id;->dialog_select_server_btn_cancel:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 299
    check-cast v0, Landroid/widget/Button;

    .line 301
    .local v0, "cancel":Landroid/widget/Button;
    iget-object v9, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 302
    new-instance v9, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$8;

    invoke-direct {v9, p0, v2}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$8;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    sget v9, Lcom/nostalgiaemulators/framework/R$id;->dialog_select_server_btn_manually:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 310
    check-cast v6, Landroid/widget/Button;

    .line 312
    .local v6, "manually":Landroid/widget/Button;
    iget-object v9, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->font:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 313
    new-instance v9, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$9;

    invoke-direct {v9, p0, v2}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$9;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    new-instance v9, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$10;

    invoke-direct {v9, p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$10;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 327
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 328
    iget-object v9, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->broadcastReceiver:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

    .line 329
    new-instance v10, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$11;

    invoke-direct {v10, p0, v8, v4}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$11;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Ljava/util/ArrayList;Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;)V

    .line 328
    invoke-virtual {v9, p0, v10}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;->startExploring(Landroid/content/Context;Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;)V

    .line 344
    new-instance v9, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$12;

    invoke-direct {v9, p0, v8, v2}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$12;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Ljava/util/ArrayList;Landroid/app/Dialog;)V

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 361
    return-object v2
.end method

.method private setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 526
    iput p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->port:I

    .line 530
    return-void
.end method

.method private start(I)V
    .locals 4
    .param p1, "portIdx"    # I

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->setPort(I)V

    .line 510
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->portIndicator:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->port:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    :try_start_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->onStop()V

    .line 517
    :cond_0
    new-instance v1, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->ip:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget v3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->port:I

    invoke-direct {v1, v2, v3}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    .line 518
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "com.nostalgiaemulators.framework.ui.remotecontroller.RemoteControllerActivity"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 534
    sget v0, Lcom/nostalgiaemulators/framework/R$id;->root:I

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 535
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 536
    new-instance v2, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$19;

    invoke-direct {v2, p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$19;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    .line 534
    invoke-static {v0, v1, v2}, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher;->animationOut(Landroid/view/View;Landroid/view/WindowManager;Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;)V

    .line 543
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->font:Landroid/graphics/Typeface;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/high16 v17, 0x400000

    .line 87
    const/high16 v18, 0x400000

    .line 86
    invoke-virtual/range {v16 .. v18}, Landroid/view/Window;->setFlags(II)V

    .line 88
    sget v16, Lcom/nostalgiaemulators/framework/R$layout;->activity_remote_controller:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->setContentView(I)V

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    sget v17, Lcom/nostalgiaemulators/framework/R$id;->button_left:I

    const/16 v18, 0x8

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    sget v17, Lcom/nostalgiaemulators/framework/R$id;->button_right:I

    const/16 v18, 0x9

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    sget v17, Lcom/nostalgiaemulators/framework/R$id;->button_up:I

    const/16 v18, 0x6

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    sget v17, Lcom/nostalgiaemulators/framework/R$id;->button_down:I

    const/16 v18, 0x7

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    sget v17, Lcom/nostalgiaemulators/framework/R$id;->button_select:I

    const/16 v18, 0x5

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    sget v17, Lcom/nostalgiaemulators/framework/R$id;->button_start:I

    const/16 v18, 0x4

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    sget v17, Lcom/nostalgiaemulators/framework/R$id;->button_a:I

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    sget v17, Lcom/nostalgiaemulators/framework/R$id;->button_b:I

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    sget v17, Lcom/nostalgiaemulators/framework/R$id;->button_back:I

    const/16 v18, 0xa

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    sget v17, Lcom/nostalgiaemulators/framework/R$id;->button_menu:I

    const/16 v18, 0xb

    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->act_remote_mtl:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 100
    .local v9, "mtl":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;
    invoke-virtual {v9}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->disableLoadSettings()V

    .line 101
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getVibrationDuration(Landroid/content/Context;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->setVibrationDuration(I)V

    .line 102
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->button_up:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 103
    .local v15, "up":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->emulatorKeysListener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 104
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->button_down:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 105
    .local v6, "down":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->emulatorKeysListener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 106
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->button_left:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 107
    .local v7, "left":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->emulatorKeysListener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 108
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->button_right:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 109
    .local v11, "right":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->emulatorKeysListener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 110
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->button_a:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 111
    .local v2, "a":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->emulatorKeysListener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 112
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->button_b:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 113
    .local v3, "b":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->emulatorKeysListener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 114
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->button_select:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 116
    .local v13, "select":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    if-eqz v13, :cond_0

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->emulatorKeysListener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 120
    :cond_0
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->button_start:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 121
    .local v14, "start":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->emulatorKeysListener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 122
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->button_back:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 123
    .local v4, "back":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    new-instance v16, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$2;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 138
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->button_menu:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 139
    .local v8, "menu":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    new-instance v16, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$3;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 154
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->button_search:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 155
    .local v12, "search":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    new-instance v16, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$4;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 166
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 167
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const-string v16, "IP"

    const-string v17, "10.0.0.5"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->ip:Ljava/lang/String;

    .line 168
    const-string v16, "port"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->setPort(I)V

    .line 169
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->root:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    .line 169
    invoke-static/range {v16 .. v17}, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher;->animationIn(Landroid/view/View;Landroid/view/WindowManager;)V

    .line 171
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->button_connect:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;

    .line 172
    .local v5, "connect":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
    new-instance v16, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$5;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$5;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V

    .line 182
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->port_indicator:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->portIndicator:Landroid/widget/TextView;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->portIndicator:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->font:Landroid/graphics/Typeface;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 184
    sget v16, Lcom/nostalgiaemulators/framework/R$id;->search_editbox:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->searchBox:Landroid/widget/EditText;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->searchBox:Landroid/widget/EditText;

    move-object/from16 v16, v0

    new-instance v17, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->searchBox:Landroid/widget/EditText;

    move-object/from16 v16, v0

    new-instance v17, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$7;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->dialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->openSelectServerDialog()Landroid/app/Dialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->dialog:Landroid/app/Dialog;

    .line 236
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x4

    .line 547
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->searchMode:Z

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    const/4 v0, 0x1

    .line 552
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 244
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->onPause()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->broadcastReceiver:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;->stop()V

    .line 249
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 367
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->halt()V

    .line 368
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 255
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->onStop()V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->broadcastReceiver:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;->stop()V

    .line 260
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->dialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 261
    return-void
.end method
