.class public Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private intent:Landroid/content/Intent;

.field private itemId:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->itemId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 27
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->intent:Landroid/content/Intent;

    .line 33
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .param p1, "itemId"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->itemId:I

    .line 15
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->title:Ljava/lang/String;

    .line 21
    return-void
.end method
