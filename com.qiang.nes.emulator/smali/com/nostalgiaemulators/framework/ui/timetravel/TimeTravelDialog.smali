.class public Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;
.super Landroid/app/Dialog;
.source "TimeTravelDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private font:Landroid/graphics/Typeface;

.field private game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

.field private img:Landroid/widget/ImageView;

.field private label:Landroid/widget/TextView;

.field private manager:Lcom/nostalgiaemulators/framework/base/Manager;

.field private max:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nostalgiaemulators/framework/base/Manager;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/nostalgiaemulators/framework/base/Manager;
    .param p3, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    const/16 v8, 0x100

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 52
    const v7, 0x1030010

    invoke-direct {p0, p1, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    iput v9, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->max:I

    .line 53
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    .line 54
    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 55
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->bitmap:Landroid/graphics/Bitmap;

    .line 56
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->font:Landroid/graphics/Typeface;

    .line 58
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 57
    check-cast v2, Landroid/view/LayoutInflater;

    .line 59
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v7, Lcom/nostalgiaemulators/framework/R$layout;->dialog_time_travel:I

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "content":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->setContentView(Landroid/view/View;)V

    .line 62
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->dialog_time_seek:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 61
    check-cast v5, Landroid/widget/SeekBar;

    .line 63
    .local v5, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->dialog_time_wheel_btn_ok:I

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setNextFocusDownId(I)V

    .line 65
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->dialog_time_seek:I

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setNextFocusLeftId(I)V

    .line 66
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->dialog_time_seek:I

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setNextFocusRightId(I)V

    .line 67
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    .line 69
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->dialog_time_btn_cancel:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/Button;

    .line 70
    .local v0, "cancel":Landroid/widget/Button;
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->font:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    new-instance v7, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$1;

    invoke-direct {v7, p0}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$1;-><init>(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setFocusable(Z)V

    .line 78
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->dialog_time_img:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->img:Landroid/widget/ImageView;

    .line 79
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->dialog_time_label:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->label:Landroid/widget/TextView;

    .line 80
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->label:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->font:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/Manager;->getHistoryItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->max:I

    .line 82
    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->max:I

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 83
    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->max:I

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 84
    new-instance v3, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;

    invoke-direct {v3, p0, v5, p1}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog$2;-><init>(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;Landroid/widget/SeekBar;Landroid/content/Context;)V

    .line 102
    .local v3, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->dialog_time_wheel_btn_ok:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 103
    check-cast v4, Landroid/widget/Button;

    .line 105
    .local v4, "ok":Landroid/widget/Button;
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->dialog_time_seek:I

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 106
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->font:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setFocusable(Z)V

    .line 110
    sget v7, Lcom/nostalgiaemulators/framework/R$id;->dialog_time_title:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 109
    check-cast v6, Landroid/widget/TextView;

    .line 111
    .local v6, "title":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->font:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/Manager;->pauseEmulation()Z

    .line 113
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v7, v9}, Lcom/nostalgiaemulators/framework/base/Manager;->renderHistoryScreenshot(Landroid/graphics/Bitmap;I)V

    .line 114
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->img:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;)Lcom/nostalgiaemulators/framework/base/Manager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->max:I

    return v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->label:Landroid/widget/TextView;

    const-string v1, "-%02.2fs"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->max:I

    sub-int/2addr v4, p2

    int-to-float v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->max:I

    sub-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/nostalgiaemulators/framework/base/Manager;->renderHistoryScreenshot(Landroid/graphics/Bitmap;I)V

    .line 122
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 124
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 128
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 132
    return-void
.end method
