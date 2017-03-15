.class public Lcom/nostalgiaemulators/framework/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# static fields
.field private static listener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/nostalgiaemulators/framework/utils/DialogUtils$1;

    invoke-direct {v0}, Lcom/nostalgiaemulators/framework/utils/DialogUtils$1;-><init>()V

    sput-object v0, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->listener:Landroid/content/DialogInterface$OnShowListener;

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static dismiss(Landroid/app/Dialog;)V
    .locals 1
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 33
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static show(Landroid/app/Dialog;Z)V
    .locals 1
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "cancelable"    # Z

    .prologue
    .line 43
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->listener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 44
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 46
    return-void
.end method
