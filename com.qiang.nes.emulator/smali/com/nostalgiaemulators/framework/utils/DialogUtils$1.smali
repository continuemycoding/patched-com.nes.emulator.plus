.class Lcom/nostalgiaemulators/framework/utils/DialogUtils$1;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/utils/DialogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;

    .prologue
    .line 51
    check-cast p1, Landroid/app/Dialog;

    .end local p1    # "d":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 52
    .local v0, "window":Landroid/view/Window;
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->getInstance()Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->attachToWindow(Landroid/view/Window;)V

    .line 53
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->getInstance()Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->onResume(Landroid/view/Window;)V

    .line 54
    return-void
.end method
