.class Lcom/nostalgiaemulators/framework/ui/widget/HintDialog$1;
.super Ljava/lang/Object;
.source "HintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;-><init>(Landroid/app/Activity;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/widget/HintDialog$1;->this$0:Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/widget/HintDialog$1;->this$0:Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/widget/HintDialog;->dismiss()V

    .line 114
    return-void
.end method
