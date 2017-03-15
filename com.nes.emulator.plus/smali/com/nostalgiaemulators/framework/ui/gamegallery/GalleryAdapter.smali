.class public Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;,
        Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;
    }
.end annotation


# static fields
.field private static final ADS_INTERVAL:I = 0x14

.field public static final SORT_BY_INSERT_DATE:I = 0x1

.field public static final SORT_BY_LAST_PLAYED:I = 0x3

.field public static final SORT_BY_MOST_PLAYED:I = 0x2

.field public static final SORT_BY_NAME:I


# instance fields
.field private adsColor:I

.field private adsView:Landroid/view/View;

.field alphaIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field arrows:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field filter:Ljava/lang/String;

.field private filterGames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;",
            ">;"
        }
    .end annotation
.end field

.field private font:Landroid/graphics/Typeface;

.field private games:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private insertDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;"
        }
    .end annotation
.end field

.field lastArrow:Landroid/widget/ImageView;

.field private lastPlayedDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mainColor:I

.field private nameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;"
        }
    .end annotation
.end field

.field private playedCountComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;"
        }
    .end annotation
.end field

.field sections:[Ljava/lang/Character;

.field private sortType:I

.field private sumRuns:I

.field private withAds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "withAds"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->arrows:Landroid/util/SparseArray;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->alphaIndexer:Ljava/util/HashMap;

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->withAds:Z

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->games:Ljava/util/ArrayList;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    .line 161
    iput-object v3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->lastArrow:Landroid/widget/ImageView;

    .line 177
    const-string v1, ""

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filter:Ljava/lang/String;

    .line 204
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$1;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$1;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;)V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->nameComparator:Ljava/util/Comparator;

    .line 211
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$2;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$2;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;)V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->insertDateComparator:Ljava/util/Comparator;

    .line 226
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$3;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$3;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;)V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->lastPlayedDateComparator:Ljava/util/Comparator;

    .line 243
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$4;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$4;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;)V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->playedCountComparator:Ljava/util/Comparator;

    .line 250
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sumRuns:I

    .line 329
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sortType:I

    .line 72
    iput-boolean p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->withAds:Z

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->context:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->font:Landroid/graphics/Typeface;

    .line 76
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 75
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 77
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/nostalgiaemulators/framework/R$layout;->row_ads_list:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->adsView:Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->adsView:Landroid/view/View;

    .line 79
    sget v2, Lcom/nostalgiaemulators/framework/R$id;->row_game_item_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, "label":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nostalgiaemulators/framework/R$color;->main_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->mainColor:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nostalgiaemulators/framework/R$color;->ads_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->adsColor:I

    .line 83
    return-void
.end method

.method private filterGames()V
    .locals 18

    .prologue
    .line 253
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 255
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sortType:I

    packed-switch v11, :pswitch_data_0

    .line 270
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filter:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "containsFilter":Ljava/lang/String;
    const/16 v8, 0x30

    .line 272
    .local v8, "lastLetter":C
    const/4 v4, 0x0

    .line 273
    .local v4, "counter":I
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sumRuns:I

    .line 275
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->games:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 308
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 310
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sortType:I

    if-nez v11, :cond_1

    .line 311
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v6, v11, :cond_9

    .line 321
    .end local v6    # "i":I
    :cond_1
    invoke-super/range {p0 .. p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 322
    return-void

    .line 257
    .end local v3    # "containsFilter":Ljava/lang/String;
    .end local v4    # "counter":I
    .end local v8    # "lastLetter":C
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->games:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->nameComparator:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 260
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->games:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->insertDateComparator:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 263
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->games:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->playedCountComparator:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 266
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->games:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->lastPlayedDateComparator:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 275
    .restart local v3    # "containsFilter":Ljava/lang/String;
    .restart local v4    # "counter":I
    .restart local v8    # "lastLetter":C
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 276
    .local v5, "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    iget v11, v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->runCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sumRuns:I

    if-le v11, v13, :cond_6

    iget v11, v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->runCount:I

    :goto_3
    move-object/from16 v0, p0

    iput v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sumRuns:I

    .line 278
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->withAds:Z

    if-eqz v11, :cond_3

    .line 279
    rem-int/lit8 v11, v4, 0x14

    if-nez v11, :cond_3

    .line 280
    new-instance v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;)V

    .line 281
    .local v7, "item":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;
    sget-object v11, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;->ADDS:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    iput-object v11, v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->type:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    .line 282
    iput-char v8, v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->firstLetter:C

    .line 283
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v4, v4, 0x1

    .line 288
    .end local v7    # "item":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;
    :cond_3
    invoke-virtual {v5}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->getCleanName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "name":Ljava/lang/String;
    const/4 v10, 0x1

    .line 291
    .local v10, "secondCondition":Z
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sortType:I

    const/4 v13, 0x3

    if-eq v11, v13, :cond_4

    .line 292
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sortType:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_5

    .line 293
    :cond_4
    iget-wide v14, v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->lastGameTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_7

    const/4 v10, 0x1

    .line 296
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filter:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x0

    .line 297
    :goto_5
    and-int/2addr v11, v10

    if-eqz v11, :cond_0

    .line 298
    new-instance v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;)V

    .line 299
    .restart local v7    # "item":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;
    sget-object v11, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;->NORMAL:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    iput-object v11, v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->type:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    .line 300
    iput-object v5, v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 301
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    iput-char v11, v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->firstLetter:C

    .line 302
    iget-char v8, v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->firstLetter:C

    .line 303
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 276
    .end local v7    # "item":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "secondCondition":Z
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sumRuns:I

    goto :goto_3

    .line 293
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "secondCondition":Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 296
    :cond_8
    const/4 v11, 0x1

    goto :goto_5

    .line 312
    .end local v5    # "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "secondCondition":Z
    .restart local v6    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;

    .line 313
    .restart local v7    # "item":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;
    iget-char v2, v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->firstLetter:C

    .line 315
    .local v2, "ch":C
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 316
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addGames(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "newGames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames()V

    .line 199
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->games:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1

    .line 192
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 193
    .local v0, "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->games:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->games:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 99
    :cond_0
    if-gez p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .param p1, "section"    # I

    .prologue
    const/4 v3, 0x0

    .line 339
    :try_start_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sections:[Ljava/lang/Character;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 340
    .local v0, "ch":Ljava/lang/Character;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 342
    .local v2, "pos":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 350
    .end local v0    # "ch":Ljava/lang/Character;
    .end local v2    # "pos":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 346
    .restart local v0    # "ch":Ljava/lang/Character;
    .restart local v2    # "pos":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 349
    .end local v0    # "ch":Ljava/lang/Character;
    .end local v2    # "pos":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;

    .line 357
    .local v3, "item":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;
    iget-char v4, v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->firstLetter:C

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 359
    .local v0, "ch":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sections:[Ljava/lang/Character;

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 367
    const/4 v2, 0x1

    .end local v2    # "i":I
    :cond_0
    return v2

    .line 360
    .restart local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sections:[Ljava/lang/Character;

    aget-object v1, v4, v2

    .line 362
    .local v1, "ch1":Ljava/lang/Character;
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 374
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 375
    .local v1, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Character;

    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sections:[Ljava/lang/Character;

    .line 376
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sections:[Ljava/lang/Character;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 377
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sections:[Ljava/lang/Character;

    new-instance v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$5;

    invoke-direct {v3, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$5;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sections:[Ljava/lang/Character;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sections:[Ljava/lang/Character;

    return-object v2

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sections:[Ljava/lang/Character;

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sections:[Ljava/lang/Character;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v11, 0x40a00000    # 5.0f

    const/4 v10, 0x0

    .line 113
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;

    .line 115
    .local v4, "item":Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;
    if-nez p2, :cond_0

    .line 116
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/nostalgiaemulators/framework/R$layout;->row_game_list:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 119
    :cond_0
    iget-object v3, v4, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 121
    .local v3, "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->row_game_item_name:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 120
    check-cast v5, Landroid/widget/TextView;

    .line 123
    .local v5, "name":Landroid/widget/TextView;
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->game_item_arrow:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 122
    check-cast v1, Landroid/widget/ImageView;

    .line 125
    .local v1, "arrowIcon":Landroid/widget/ImageView;
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->game_item_bck:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 124
    check-cast v2, Landroid/widget/ImageView;

    .line 127
    .local v2, "bck":Landroid/widget/ImageView;
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->row_game_item_progressBar:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 126
    check-cast v6, Landroid/widget/ProgressBar;

    .line 128
    .local v6, "runIndicator":Landroid/widget/ProgressBar;
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->font:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sumRuns:I

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 131
    iget-object v7, v4, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$RowItem;->type:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    sget-object v8, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;->NORMAL:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    if-ne v7, v8, :cond_2

    .line 132
    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->getCleanName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;->ADDS:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    if-ne v7, v8, :cond_1

    .line 135
    sget v7, Lcom/nostalgiaemulators/framework/R$drawable;->ic_next_arrow:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 137
    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->mainColor:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->mainColor:I

    invoke-virtual {v5, v11, v10, v10, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 139
    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 142
    :cond_1
    sget v7, Lcom/nostalgiaemulators/framework/R$drawable;->game_item_small_bck:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    sget-object v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;->NORMAL:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    :goto_0
    return-object p2

    .line 146
    :cond_2
    sget v7, Lcom/nostalgiaemulators/framework/R$string;->todays_top_apps:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->adsColor:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->adsColor:I

    invoke-virtual {v5, v11, v10, v10, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 149
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 150
    sget v7, Lcom/nostalgiaemulators/framework/R$drawable;->ads_icon:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    sget v7, Lcom/nostalgiaemulators/framework/R$drawable;->ic_ads_next:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->context:Landroid/content/Context;

    .line 153
    sget v8, Lcom/nostalgiaemulators/framework/R$anim;->arow_right_anim:I

    .line 152
    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 154
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    sget-object v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;->ADDS:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter$ROW_TYPE;

    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames()V

    .line 393
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filter:Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames()V

    .line 182
    return-void
.end method

.method public setGames(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "games":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->games:Ljava/util/ArrayList;

    .line 186
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->games:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames()V

    .line 188
    return-void
.end method

.method public setSelected(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 164
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->arrows:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 166
    .local v1, "icon":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 167
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->lastArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->lastArrow:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->context:Landroid/content/Context;

    .line 171
    sget v3, Lcom/nostalgiaemulators/framework/R$anim;->arow_right_anim:I

    .line 170
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 172
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 173
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->lastArrow:Landroid/widget/ImageView;

    .line 175
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method

.method public setSortType(I)V
    .locals 0
    .param p1, "sortType"    # I

    .prologue
    .line 332
    iput p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->sortType:I

    .line 333
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryAdapter;->filterGames()V

    .line 334
    return-void
.end method
