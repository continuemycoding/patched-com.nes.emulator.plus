.class Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$1;
.super Ljava/lang/Object;
.source "BaseGameGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->showSelectLanguageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

.field private final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 172
    const-string v0, "en"

    .line 173
    .local v0, "lang":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 174
    const-string v0, "vi"

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "language"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 180
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->changeLanguage()V

    .line 184
    return-void
.end method
