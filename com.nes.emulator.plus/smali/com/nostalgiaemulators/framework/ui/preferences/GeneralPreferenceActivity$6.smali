.class Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$6;
.super Ljava/lang/Object;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initInputMethodPreference(Landroid/preference/Preference;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$6;->val$activity:Landroid/app/Activity;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 321
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$6;->val$activity:Landroid/app/Activity;

    .line 322
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 323
    const-string v2, "input_method"

    .line 322
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 321
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 325
    .local v0, "imeManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 335
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$6;->val$activity:Landroid/app/Activity;

    .line 331
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->pref_keyboard_cannot_change_input_method:I

    .line 332
    const/4 v3, 0x1

    .line 329
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
