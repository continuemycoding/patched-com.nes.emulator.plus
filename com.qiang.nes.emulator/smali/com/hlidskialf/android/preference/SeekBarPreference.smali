.class public Lcom/hlidskialf/android/preference/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final androidns:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field hack:Z

.field private mContext:Landroid/content/Context;

.field private mDefault:I

.field private mDialogMessage:Ljava/lang/String;

.field private mMax:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mShowText:Z

.field private mSplashText:Landroid/widget/TextView;

.field private mSuffix:Ljava/lang/String;

.field private mValue:I

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValue:I

    .line 27
    iput-boolean v3, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mShowText:Z

    .line 96
    iput-boolean v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->hack:Z

    .line 31
    iput-object p1, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mContext:Landroid/content/Context;

    .line 33
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "dialogMessage"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    .line 34
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSuffix:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSuffix:Ljava/lang/String;

    const-string v1, "[hack]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iput-boolean v3, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->hack:Z

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSuffix:Ljava/lang/String;

    .line 41
    :cond_0
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mDefault:I

    .line 42
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "max"

    const/16 v2, 0x64

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mMax:I

    .line 44
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValue:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 84
    iget-object v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 85
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x6

    .line 49
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 53
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    .line 54
    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    .line 59
    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 61
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v2, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 67
    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 68
    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 70
    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {p0}, Lcom/hlidskialf/android/preference/SeekBarPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mDefault:I

    invoke-virtual {p0, v2}, Lcom/hlidskialf/android/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v2

    iput v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValue:I

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 76
    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValue:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 77
    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seek"    # Landroid/widget/SeekBar;
    .param p2, "value"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 100
    iget-boolean v1, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->hack:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSuffix:Ljava/lang/String;

    if-nez v2, :cond_2

    .end local v0    # "t":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lcom/hlidskialf/android/preference/SeekBarPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0, p2}, Lcom/hlidskialf/android/preference/SeekBarPreference;->persistInt(I)Z

    .line 105
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hlidskialf/android/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 106
    return-void

    .line 100
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 101
    .restart local v0    # "t":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restore"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 90
    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/hlidskialf/android/preference/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mDefault:I

    invoke-virtual {p0, v0}, Lcom/hlidskialf/android/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValue:I

    .line 94
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_1
    return-void

    .line 91
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValue:I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 109
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 112
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mMax:I

    .line 116
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mValue:I

    .line 124
    iget-object v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/hlidskialf/android/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 126
    :cond_0
    return-void
.end method
