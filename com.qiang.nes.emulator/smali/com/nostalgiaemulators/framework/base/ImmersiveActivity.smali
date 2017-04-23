.class public Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;
.super Landroid/app/Activity;
.source "ImmersiveActivity.java"


# instance fields
.field decorView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->setDecorViewVisibility()V

    return-void
.end method

.method private setDecorViewVisibility()V
    .locals 2

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 33
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isImmersiveModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->decorView:Landroid/view/View;

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->decorView:Landroid/view/View;

    .line 48
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->setDecorViewVisibility()V

    .line 49
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->decorView:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity$1;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity$1;-><init>(Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->setDecorViewVisibility()V

    .line 63
    return-void
.end method
