.class public Lcom/nostalgiaemulators/framework/ui/preferences/SeekBarVibrationPreference;
.super Lcom/nostalgiaemulators/framework/ui/preferences/ControllableSeekBarPreference;
.source "SeekBarVibrationPreference.java"


# instance fields
.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/preferences/ControllableSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/SeekBarVibrationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    const-string v1, "vibrator"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/SeekBarVibrationPreference;->vibrator:Landroid/os/Vibrator;

    .line 34
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/SeekBarVibrationPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/ui/preferences/ControllableSeekBarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 40
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/SeekBarVibrationPreference;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 41
    return-void
.end method
