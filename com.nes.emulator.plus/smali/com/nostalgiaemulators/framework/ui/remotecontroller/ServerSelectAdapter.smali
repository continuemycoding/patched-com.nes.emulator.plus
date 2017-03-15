.class public Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ServerSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$nostalgiaemulators$framework$utils$Utils$ServerType:[I


# instance fields
.field font:Landroid/graphics/Typeface;


# direct methods
.method static synthetic $SWITCH_TABLE$com$nostalgiaemulators$framework$utils$Utils$ServerType()[I
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;->$SWITCH_TABLE$com$nostalgiaemulators$framework$utils$Utils$ServerType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->values()[Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->mobile:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->tablet:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->tv:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;->$SWITCH_TABLE$com$nostalgiaemulators$framework$utils$Utils$ServerType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "objs":Ljava/util/List;, "Ljava/util/List<Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;>;"
    sget v0, Lcom/nostalgiaemulators/framework/R$layout;->row_server_select_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 42
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;->font:Landroid/graphics/Typeface;

    .line 43
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 49
    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    check-cast v1, Landroid/view/LayoutInflater;

    .line 50
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/nostalgiaemulators/framework/R$layout;->row_server_select_item:I

    .line 51
    const/4 v6, 0x0

    .line 50
    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;

    .line 56
    .local v2, "item":Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;
    sget v5, Lcom/nostalgiaemulators/framework/R$id;->row_select_server_label1:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 55
    check-cast v3, Landroid/widget/TextView;

    .line 57
    .local v3, "label1":Landroid/widget/TextView;
    iget-object v5, v2, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->desc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    sget v5, Lcom/nostalgiaemulators/framework/R$id;->row_select_server_label2:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 59
    check-cast v4, Landroid/widget/TextView;

    .line 61
    .local v4, "label2":Landroid/widget/TextView;
    iget-object v5, v2, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->sessionDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v5, v2, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->sessionDescription:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    sget v5, Lcom/nostalgiaemulators/framework/R$id;->row_select_server_icon:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/ImageView;

    .line 68
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-static {}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;->$SWITCH_TABLE$com$nostalgiaemulators$framework$utils$Utils$ServerType()[I

    move-result-object v5

    iget-object v6, v2, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->type:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    invoke-virtual {v6}, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 80
    :goto_1
    return-object p2

    .line 63
    .end local v0    # "icon":Landroid/widget/ImageView;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 70
    .restart local v0    # "icon":Landroid/widget/ImageView;
    :pswitch_0
    sget v5, Lcom/nostalgiaemulators/framework/R$drawable;->ic_mobile:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 73
    :pswitch_1
    sget v5, Lcom/nostalgiaemulators/framework/R$drawable;->ic_tablet:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 76
    :pswitch_2
    sget v5, Lcom/nostalgiaemulators/framework/R$drawable;->ic_tv:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
