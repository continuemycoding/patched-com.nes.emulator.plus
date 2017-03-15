.class public Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;
.super Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;
.source "TouchControllerSettingsActivity.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;


# instance fields
.field gameHash:Ljava/lang/String;

.field private gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

.field lastGameScreenshot:Landroid/graphics/Bitmap;

.field mtLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->gameHash:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v3, Lcom/nostalgiaemulators/framework/R$layout;->controler_layout:I

    invoke-virtual {p0, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->setContentView(I)V

    .line 55
    new-instance v3, Lcom/nostalgiaemulators/framework/base/GameMenu;

    invoke-direct {v3, p0, p0}, Lcom/nostalgiaemulators/framework/base/GameMenu;-><init>(Landroid/app/Activity;Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;)V

    iput-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    .line 56
    sget v3, Lcom/nostalgiaemulators/framework/R$id;->touch_layer:I

    invoke-virtual {p0, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iput-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->mtLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 57
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 59
    .local v0, "font":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 60
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->mtLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 61
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->button_start:I

    invoke-virtual {v3, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 60
    check-cast v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;

    .line 62
    .local v2, "start":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->mtLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    .line 63
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->button_select:I

    invoke-virtual {v3, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 62
    check-cast v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;

    .line 64
    .local v1, "select":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;
    invoke-virtual {v2, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    .end local v1    # "select":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;
    .end local v2    # "start":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;
    :cond_0
    return-void
.end method

.method public onGameMenuClosed(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 0
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 125
    return-void
.end method

.method public onGameMenuCreate(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 0
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 112
    return-void
.end method

.method public onGameMenuItemSelected(Lcom/nostalgiaemulators/framework/base/GameMenu;Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;)V
    .locals 1
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;
    .param p2, "item"    # Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .prologue
    .line 129
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity$1;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public onGameMenuOpened(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 0
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 121
    return-void
.end method

.method public onGameMenuPrepare(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 2
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 116
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->act_tcs_reset:I

    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->ic_restart:I

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 117
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 138
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->openGameMenu()V

    .line 140
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->mtLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->saveEditElements()V

    .line 102
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->mtLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->stopEditMode()V

    .line 104
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->lastGameScreenshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->lastGameScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->lastGameScreenshot:Landroid/graphics/Bitmap;

    .line 108
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onResume()V

    .line 76
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_0

    .line 77
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->setRequestedOrientation(I)V

    .line 80
    :cond_0
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->mtLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    sget-object v6, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    invoke-virtual {v5, v6}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->setEditMode(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;)V

    .line 81
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    move-result-object v0

    .line 82
    .local v0, "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    const-class v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 83
    const-string v6, "where lastGameTime!=0 ORDER BY lastGameTime DESC LIMIT 1"

    .line 82
    invoke-virtual {v0, v5, v6}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->selectObjFromDb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 84
    .local v1, "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    const/4 v2, 0x0

    .line 85
    .local v2, "gfxProfile":Lcom/nostalgiaemulators/framework/GfxProfile;
    iput-object v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->lastGameScreenshot:Landroid/graphics/Bitmap;

    .line 87
    if-eqz v1, :cond_1

    .line 88
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 89
    iget-object v6, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    const/4 v7, 0x0

    .line 88
    invoke-static {v5, v6, v7}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getSlot(Ljava/lang/String;Ljava/lang/String;I)Lcom/nostalgiaemulators/framework/SlotInfo;

    move-result-object v3

    .line 90
    .local v3, "info":Lcom/nostalgiaemulators/framework/SlotInfo;
    iget-object v5, v3, Lcom/nostalgiaemulators/framework/SlotInfo;->screenShot:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->lastGameScreenshot:Landroid/graphics/Bitmap;

    .line 93
    .end local v3    # "info":Lcom/nostalgiaemulators/framework/SlotInfo;
    :cond_1
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getLastGfxProfile(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v2

    .line 94
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->mtLayer:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->lastGameScreenshot:Landroid/graphics/Bitmap;

    .line 95
    if-nez v2, :cond_2

    .line 94
    :goto_0
    invoke-virtual {v5, v6, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->setLastgameScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 96
    return-void

    .line 95
    :cond_2
    iget-object v4, v2, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public openGameMenu()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->open(Z)V

    .line 149
    return-void
.end method

.method public openOptionsMenu()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->open(Z)V

    .line 154
    return-void
.end method
