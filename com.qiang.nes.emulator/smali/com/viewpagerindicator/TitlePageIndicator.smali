.class public Lcom/viewpagerindicator/TitlePageIndicator;
.super Landroid/view/View;
.source "TitlePageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;,
        Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;,
        Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;,
        Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle:[I = null

.field private static final BOLD_FADE_PERCENTAGE:F = 0.05f

.field private static final EMPTY_TITLE:Ljava/lang/String; = ""

.field private static final INVALID_POINTER:I = -0x1

.field private static final SELECTION_FADE_PERCENTAGE:F = 0.25f


# instance fields
.field private mActivePointerId:I

.field private mBoldText:Z

.field private final mBounds:Landroid/graphics/Rect;

.field private mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

.field private mClipPadding:F

.field private mColorSelected:I

.field private mColorText:I

.field private mCurrentPage:I

.field private mFooterIndicatorHeight:F

.field private mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field private mFooterIndicatorUnderlinePadding:F

.field private mFooterLineHeight:F

.field private mFooterPadding:F

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mLinePosition:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageOffset:F

.field private final mPaintFooterIndicator:Landroid/graphics/Paint;

.field private final mPaintFooterLine:Landroid/graphics/Paint;

.field private final mPaintText:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mScrollState:I

.field private mTitlePadding:F

.field private mTopPadding:F

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle()[I
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/viewpagerindicator/TitlePageIndicator;->$SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->values()[Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v1}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Triangle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v1}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Underline:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v1}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/viewpagerindicator/TitlePageIndicator;->$SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle:[I

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    sget v0, Lcom/viewpagerindicator/R$attr;->vpiTitlePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 160
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 122
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    .line 126
    new-instance v25, Landroid/graphics/Path;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    .line 127
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    .line 128
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    .line 131
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    .line 144
    const/high16 v25, -0x40800000    # -1.0f

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 145
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->isInEditMode()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 216
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 165
    .local v23, "res":Landroid/content/res/Resources;
    sget v25, Lcom/viewpagerindicator/R$color;->default_title_indicator_footer_color:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 166
    .local v9, "defaultFooterColor":I
    sget v25, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_line_height:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 167
    .local v13, "defaultFooterLineHeight":F
    sget v25, Lcom/viewpagerindicator/R$integer;->default_title_indicator_footer_indicator_style:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 168
    .local v11, "defaultFooterIndicatorStyle":I
    sget v25, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_indicator_height:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 169
    .local v10, "defaultFooterIndicatorHeight":F
    sget v25, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_indicator_underline_padding:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 170
    .local v12, "defaultFooterIndicatorUnderlinePadding":F
    sget v25, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_footer_padding:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 171
    .local v14, "defaultFooterPadding":F
    sget v25, Lcom/viewpagerindicator/R$integer;->default_title_indicator_line_position:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 172
    .local v15, "defaultLinePosition":I
    sget v25, Lcom/viewpagerindicator/R$color;->default_title_indicator_selected_color:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    .line 173
    .local v17, "defaultSelectedColor":I
    sget v25, Lcom/viewpagerindicator/R$bool;->default_title_indicator_selected_bold:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 174
    .local v16, "defaultSelectedBold":Z
    sget v25, Lcom/viewpagerindicator/R$color;->default_title_indicator_text_color:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    .line 175
    .local v18, "defaultTextColor":I
    sget v25, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_text_size:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    .line 176
    .local v19, "defaultTextSize":F
    sget v25, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_title_padding:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    .line 177
    .local v20, "defaultTitlePadding":F
    sget v25, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_clip_padding:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 178
    .local v8, "defaultClipPadding":F
    sget v25, Lcom/viewpagerindicator/R$dimen;->default_title_indicator_top_padding:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    .line 181
    .local v21, "defaultTopPadding":F
    sget-object v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator:[I

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    move/from16 v3, p3

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 184
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_footerLineHeight:I

    move/from16 v0, v25

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    .line 185
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_footerIndicatorStyle:I

    move/from16 v0, v25

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 186
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_footerIndicatorHeight:I

    move/from16 v0, v25

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    .line 187
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_footerIndicatorUnderlinePadding:I

    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    .line 188
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_footerPadding:I

    move/from16 v0, v25

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    .line 189
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_linePosition:I

    move/from16 v0, v25

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;->fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLinePosition:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    .line 190
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_topPadding:I

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    .line 191
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_titlePadding:I

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    .line 192
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_clipPadding:I

    move/from16 v0, v25

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    .line 193
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_selectedColor:I

    move/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    .line 194
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_android_textColor:I

    move/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    .line 195
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_selectedBold:I

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    .line 197
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_android_textSize:I

    move/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v24

    .line 198
    .local v24, "textSize":F
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_footerColor:I

    move/from16 v0, v25

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v22

    .line 199
    .local v22, "footerColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    sget v25, Lcom/viewpagerindicator/R$styleable;->TitlePageIndicator_android_background:I

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 208
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 209
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/viewpagerindicator/TitlePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 215
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v7}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mTouchSlop:I

    goto/16 :goto_0
.end method

.method private calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "index"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 700
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 701
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 702
    .local v1, "title":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 703
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 704
    return-object v0
.end method

.method private calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v8, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 675
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v7

    .line 676
    .local v7, "width":I
    div-int/lit8 v3, v7, 0x2

    .line 677
    .local v3, "halfWidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v1, :cond_0

    .line 688
    return-object v5

    .line 678
    :cond_0
    invoke-direct {p0, v4, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v0

    .line 679
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v8, v9

    .line 680
    .local v6, "w":I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v9

    .line 681
    .local v2, "h":I
    int-to-float v8, v3

    int-to-float v9, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    sub-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 682
    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v6

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 683
    const/4 v8, 0x0

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 684
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 685
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private clipViewOnTheLeft(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "curViewBound"    # Landroid/graphics/Rect;
    .param p2, "curViewWidth"    # F
    .param p3, "left"    # I

    .prologue
    .line 661
    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 662
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 663
    return-void
.end method

.method private clipViewOnTheRight(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "curViewBound"    # Landroid/graphics/Rect;
    .param p2, "curViewWidth"    # F
    .param p3, "right"    # I

    .prologue
    .line 648
    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 649
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 650
    return-void
.end method

.method private getTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 864
    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 865
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 866
    const-string v0, ""

    .line 868
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getClipPadding()F
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    return v0
.end method

.method public getFooterColor()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFooterIndicatorHeight()F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    return v0
.end method

.method public getFooterIndicatorPadding()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    return v0
.end method

.method public getFooterIndicatorStyle()Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public getFooterLineHeight()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    return v0
.end method

.method public getLinePosition()Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mLinePosition:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTitlePadding()F
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    return v0
.end method

.method public getTopPadding()F
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isSelectedBold()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 732
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 43
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 355
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v15

    .line 361
    .local v15, "count":I
    if-eqz v15, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_2

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 371
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/viewpagerindicator/TitlePageIndicator;->calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v12

    .line 372
    .local v12, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 375
    .local v13, "boundsSize":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    if-lt v4, v13, :cond_3

    .line 376
    add-int/lit8 v4, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 380
    :cond_3
    add-int/lit8 v16, v15, -0x1

    .line 381
    .local v16, "countMinusOne":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v24, v4, v6

    .line 382
    .local v24, "halfWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getLeft()I

    move-result v29

    .line 383
    .local v29, "left":I
    move/from16 v0, v29

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    add-float v31, v4, v6

    .line 384
    .local v31, "leftClip":F
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v42

    .line 385
    .local v42, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getHeight()I

    move-result v25

    .line 386
    .local v25, "height":I
    add-int v35, v29, v42

    .line 387
    .local v35, "right":I
    move/from16 v0, v35

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    sub-float v37, v4, v6

    .line 389
    .local v37, "rightClip":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v34, v0

    .line 391
    .local v34, "page":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    float-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v6, v8

    if-gtz v4, :cond_9

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    move/from16 v33, v0

    .line 397
    .local v33, "offsetPercent":F
    :goto_1
    const/high16 v4, 0x3e800000    # 0.25f

    cmpg-float v4, v33, v4

    if-gtz v4, :cond_a

    const/16 v21, 0x1

    .line 398
    .local v21, "currentSelected":Z
    :goto_2
    const v4, 0x3d4ccccd    # 0.05f

    cmpg-float v4, v33, v4

    if-gtz v4, :cond_b

    const/16 v19, 0x1

    .line 399
    .local v19, "currentBold":Z
    :goto_3
    const/high16 v4, 0x3e800000    # 0.25f

    sub-float v4, v4, v33

    const/high16 v6, 0x3e800000    # 0.25f

    div-float v39, v4, v6

    .line 402
    .local v39, "selectedPercent":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Rect;

    .line 403
    .local v17, "curPageBound":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    int-to-float v0, v4

    move/from16 v18, v0

    .line 404
    .local v18, "curPageWidth":F
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, v31

    if-gez v4, :cond_4

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/Rect;FI)V

    .line 408
    :cond_4
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v37

    if-lez v4, :cond_5

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/Rect;FI)V

    .line 414
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    if-lez v4, :cond_6

    .line 415
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v28, v4, -0x1

    .local v28, "i":I
    :goto_4
    if-gez v28, :cond_c

    .line 433
    .end local v28    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v0, v16

    if-ge v4, v0, :cond_7

    .line 434
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    add-int/lit8 v28, v4, 0x1

    .restart local v28    # "i":I
    :goto_5
    move/from16 v0, v28

    if-lt v0, v15, :cond_e

    .line 453
    .end local v28    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    ushr-int/lit8 v14, v4, 0x18

    .line 454
    .local v14, "colorTextAlpha":I
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_6
    move/from16 v0, v28

    if-lt v0, v15, :cond_10

    .line 494
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    move/from16 v23, v0

    .line 495
    .local v23, "footerLineHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    move/from16 v22, v0

    .line 496
    .local v22, "footerIndicatorLineHeight":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mLinePosition:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    sget-object v6, Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;->Top:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    if-ne v4, v6, :cond_8

    .line 497
    const/16 v25, 0x0

    .line 498
    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .line 499
    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    .line 503
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 504
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v23, v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v42

    int-to-float v6, v0

    move/from16 v0, v25

    int-to-float v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v23, v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 509
    move/from16 v0, v25

    int-to-float v4, v0

    sub-float v26, v4, v23

    .line 510
    .local v26, "heightMinusLine":F
    invoke-static {}, Lcom/viewpagerindicator/TitlePageIndicator;->$SWITCH_TABLE$com$viewpagerindicator$TitlePageIndicator$IndicatorStyle()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v6}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 512
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    sub-float v6, v26, v22

    move/from16 v0, v24

    invoke-virtual {v4, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    add-float v6, v24, v22

    move/from16 v0, v26

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    sub-float v6, v24, v22

    move/from16 v0, v26

    invoke-virtual {v4, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 394
    .end local v14    # "colorTextAlpha":I
    .end local v17    # "curPageBound":Landroid/graphics/Rect;
    .end local v18    # "curPageWidth":F
    .end local v19    # "currentBold":Z
    .end local v21    # "currentSelected":Z
    .end local v22    # "footerIndicatorLineHeight":F
    .end local v23    # "footerLineHeight":F
    .end local v26    # "heightMinusLine":F
    .end local v28    # "i":I
    .end local v33    # "offsetPercent":F
    .end local v39    # "selectedPercent":F
    :cond_9
    add-int/lit8 v34, v34, 0x1

    .line 395
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    sub-float v33, v4, v6

    .restart local v33    # "offsetPercent":F
    goto/16 :goto_1

    .line 397
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 398
    .restart local v21    # "currentSelected":Z
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 416
    .restart local v17    # "curPageBound":Landroid/graphics/Rect;
    .restart local v18    # "curPageWidth":F
    .restart local v19    # "currentBold":Z
    .restart local v28    # "i":I
    .restart local v39    # "selectedPercent":F
    :cond_c
    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 418
    .local v11, "bound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, v31

    if-gez v4, :cond_d

    .line 419
    iget v4, v11, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int v41, v4, v6

    .line 421
    .local v41, "w":I
    move/from16 v0, v41

    int-to-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v11, v4, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/Rect;FI)V

    .line 423
    add-int/lit8 v4, v28, 0x1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/graphics/Rect;

    .line 425
    .local v36, "rightBound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v4, v6

    move-object/from16 v0, v36

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_d

    .line 426
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v41

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v11, Landroid/graphics/Rect;->left:I

    .line 427
    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v41

    iput v4, v11, Landroid/graphics/Rect;->right:I

    .line 415
    .end local v36    # "rightBound":Landroid/graphics/Rect;
    .end local v41    # "w":I
    :cond_d
    add-int/lit8 v28, v28, -0x1

    goto/16 :goto_4

    .line 435
    .end local v11    # "bound":Landroid/graphics/Rect;
    :cond_e
    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 437
    .restart local v11    # "bound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v37

    if-lez v4, :cond_f

    .line 438
    iget v4, v11, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int v41, v4, v6

    .line 440
    .restart local v41    # "w":I
    move/from16 v0, v41

    int-to-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v11, v4, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/Rect;FI)V

    .line 442
    add-int/lit8 v4, v28, -0x1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/graphics/Rect;

    .line 444
    .local v30, "leftBound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v4, v6

    move-object/from16 v0, v30

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_f

    .line 445
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v11, Landroid/graphics/Rect;->left:I

    .line 446
    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v41

    iput v4, v11, Landroid/graphics/Rect;->right:I

    .line 434
    .end local v30    # "leftBound":Landroid/graphics/Rect;
    .end local v41    # "w":I
    :cond_f
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_5

    .line 456
    .end local v11    # "bound":Landroid/graphics/Rect;
    .restart local v14    # "colorTextAlpha":I
    :cond_10
    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 458
    .restart local v11    # "bound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->left:I

    move/from16 v0, v29

    if-le v4, v0, :cond_11

    iget v4, v11, Landroid/graphics/Rect;->left:I

    move/from16 v0, v35

    if-lt v4, v0, :cond_12

    :cond_11
    iget v4, v11, Landroid/graphics/Rect;->right:I

    move/from16 v0, v29

    if-le v4, v0, :cond_15

    iget v4, v11, Landroid/graphics/Rect;->right:I

    move/from16 v0, v35

    if-ge v4, v0, :cond_15

    .line 459
    :cond_12
    move/from16 v0, v28

    move/from16 v1, v34

    if-ne v0, v1, :cond_16

    const/16 v20, 0x1

    .line 460
    .local v20, "currentPage":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 463
    .local v5, "pageTitle":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    if-eqz v20, :cond_17

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    :goto_8
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    if-eqz v20, :cond_13

    if-eqz v21, :cond_13

    .line 469
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    int-to-float v6, v14

    mul-float v6, v6, v39

    float-to-int v6, v6

    sub-int v6, v14, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 473
    :cond_13
    add-int/lit8 v4, v13, -0x1

    move/from16 v0, v28

    if-ge v0, v4, :cond_14

    .line 474
    add-int/lit8 v4, v28, 0x1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/graphics/Rect;

    .line 476
    .restart local v36    # "rightBound":Landroid/graphics/Rect;
    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v4, v6

    move-object/from16 v0, v36

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_14

    .line 477
    iget v4, v11, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int v41, v4, v6

    .line 478
    .restart local v41    # "w":I
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v41

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v11, Landroid/graphics/Rect;->left:I

    .line 479
    iget v4, v11, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v41

    iput v4, v11, Landroid/graphics/Rect;->right:I

    .line 482
    .end local v36    # "rightBound":Landroid/graphics/Rect;
    .end local v41    # "w":I
    :cond_14
    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v8, v4

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float/2addr v9, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 485
    if-eqz v20, :cond_15

    if-eqz v21, :cond_15

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    ushr-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    mul-float v6, v6, v39

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 488
    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v8, v4

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float/2addr v9, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 454
    .end local v5    # "pageTitle":Ljava/lang/CharSequence;
    .end local v20    # "currentPage":Z
    :cond_15
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6

    .line 459
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 463
    .restart local v5    # "pageTitle":Ljava/lang/CharSequence;
    .restart local v20    # "currentPage":Z
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 521
    .end local v5    # "pageTitle":Ljava/lang/CharSequence;
    .end local v11    # "bound":Landroid/graphics/Rect;
    .end local v20    # "currentPage":Z
    .restart local v22    # "footerIndicatorLineHeight":F
    .restart local v23    # "footerLineHeight":F
    .restart local v26    # "heightMinusLine":F
    :pswitch_1
    if-eqz v21, :cond_0

    move/from16 v0, v34

    if-ge v0, v13, :cond_0

    .line 525
    move/from16 v0, v34

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/graphics/Rect;

    .line 526
    .local v40, "underlineBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v40

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    add-float v38, v4, v6

    .line 527
    .local v38, "rightPlusPadding":F
    move-object/from16 v0, v40

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    sub-float v32, v4, v6

    .line 528
    .local v32, "leftMinusPadding":F
    sub-float v27, v26, v22

    .line 530
    .local v27, "heightMinusLineMinusIndicator":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v38

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v6, v6, v39

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 793
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 797
    .local v3, "measuredWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 798
    .local v1, "heightSpecMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_1

    .line 800
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v0, v4

    .line 810
    .local v0, "height":F
    :cond_0
    :goto_0
    float-to-int v2, v0

    .line 812
    .local v2, "measuredHeight":I
    invoke-virtual {p0, v3, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    .line 813
    return-void

    .line 803
    .end local v0    # "height":F
    .end local v2    # "measuredHeight":I
    :cond_1
    iget-object v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 804
    iget-object v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 805
    iget-object v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    add-float v0, v4, v5

    .line 806
    .restart local v0    # "height":F
    iget-object v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    sget-object v5, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    if-eq v4, v5, :cond_0

    .line 807
    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    add-float/2addr v0, v4

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 755
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mScrollState:I

    .line 757
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 760
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 764
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 765
    iput p2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPageOffset:F

    .line 766
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 768
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 771
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 775
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mScrollState:I

    if-nez v0, :cond_0

    .line 776
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 777
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 783
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 817
    move-object v0, p1

    check-cast v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    .line 818
    .local v0, "savedState":Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 819
    iget v1, v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 820
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->requestLayout()V

    .line 821
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 825
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 826
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 827
    .local v0, "savedState":Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    .line 828
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 545
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 546
    const/16 v17, 0x1

    .line 636
    :goto_0
    return v17

    .line 548
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v17

    if-nez v17, :cond_2

    .line 549
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v2, v0, 0xff

    .line 553
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 636
    :cond_3
    :goto_1
    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    .line 555
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 560
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 561
    .local v3, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    .line 562
    .local v16, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v5, v16, v17

    .line 564
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 565
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 566
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    .line 570
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 571
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 573
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto/16 :goto_1

    .line 582
    .end local v3    # "activePointerIndex":I
    .end local v5    # "deltaX":F
    .end local v16    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    .line 584
    .local v4, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v15

    .line 585
    .local v15, "width":I
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v17, v18

    .line 586
    .local v7, "halfWidth":F
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x40c00000    # 6.0f

    div-float v14, v17, v18

    .line 587
    .local v14, "sixthWidth":F
    sub-float v9, v7, v14

    .line 588
    .local v9, "leftThird":F
    add-float v13, v7, v14

    .line 589
    .local v13, "rightThird":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 591
    .local v6, "eventX":F
    cmpg-float v17, v6, v9

    if-gez v17, :cond_7

    .line 592
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    if-lez v17, :cond_a

    .line 593
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_6

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 596
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 598
    :cond_7
    cmpl-float v17, v6, v13

    if-lez v17, :cond_9

    .line 599
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 600
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_8

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 603
    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 607
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_a

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;->onCenterItemClick(I)V

    .line 613
    .end local v4    # "count":I
    .end local v6    # "eventX":F
    .end local v7    # "halfWidth":F
    .end local v9    # "leftThird":F
    .end local v13    # "rightThird":F
    .end local v14    # "sixthWidth":F
    .end local v15    # "width":I
    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mIsDragging:Z

    .line 614
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 619
    :pswitch_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 620
    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    .line 621
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 626
    .end local v8    # "index":I
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v12

    .line 627
    .local v12, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 628
    .local v11, "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v11, v0, :cond_b

    .line 629
    if-nez v12, :cond_c

    const/4 v10, 0x1

    .line 630
    .local v10, "newPointerIndex":I
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    .line 632
    .end local v10    # "newPointerIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 629
    :cond_c
    const/4 v10, 0x0

    goto :goto_2

    .line 553
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setClipPadding(F)V
    .locals 0
    .param p1, "clipPadding"    # F

    .prologue
    .line 335
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mClipPadding:F

    .line 336
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 337
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 745
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 749
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCurrentPage:I

    .line 750
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 751
    return-void
.end method

.method public setFooterColor(I)V
    .locals 1
    .param p1, "footerColor"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 227
    return-void
.end method

.method public setFooterIndicatorHeight(F)V
    .locals 0
    .param p1, "footerTriangleHeight"    # F

    .prologue
    .line 244
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    .line 245
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 246
    return-void
.end method

.method public setFooterIndicatorPadding(F)V
    .locals 0
    .param p1, "footerIndicatorPadding"    # F

    .prologue
    .line 253
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterPadding:F

    .line 254
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 255
    return-void
.end method

.method public setFooterIndicatorStyle(Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;)V
    .locals 0
    .param p1, "indicatorStyle"    # Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    .line 263
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 264
    return-void
.end method

.method public setFooterLineHeight(F)V
    .locals 2
    .param p1, "footerLineHeight"    # F

    .prologue
    .line 234
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    .line 235
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mFooterLineHeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 237
    return-void
.end method

.method public setLinePosition(Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;)V
    .locals 0
    .param p1, "linePosition"    # Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mLinePosition:Lcom/viewpagerindicator/TitlePageIndicator$LinePosition;

    .line 272
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 273
    return-void
.end method

.method public setOnCenterItemClickListener(Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/viewpagerindicator/TitlePageIndicator$OnCenterItemClickListener;

    .line 741
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 788
    return-void
.end method

.method public setSelectedBold(Z)V
    .locals 0
    .param p1, "selectedBold"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mBoldText:Z

    .line 290
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 291
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1, "selectedColor"    # I

    .prologue
    .line 280
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorSelected:I

    .line 281
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 282
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mColorText:I

    .line 300
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 301
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .prologue
    .line 308
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 309
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 310
    return-void
.end method

.method public setTitlePadding(F)V
    .locals 0
    .param p1, "titlePadding"    # F

    .prologue
    .line 317
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTitlePadding:F

    .line 318
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 319
    return-void
.end method

.method public setTopPadding(F)V
    .locals 0
    .param p1, "topPadding"    # F

    .prologue
    .line 326
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mTopPadding:F

    .line 327
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 328
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 341
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 342
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 721
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 715
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 716
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 719
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 720
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 725
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 726
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    .line 727
    return-void
.end method
