.class Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog$2;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;-><init>(Landroid/content/Context;IIIIIII[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog$2;->this$0:Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog$2;->this$0:Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/tipsdialog/TipsDialog;->prevTip()V

    .line 89
    return-void
.end method
