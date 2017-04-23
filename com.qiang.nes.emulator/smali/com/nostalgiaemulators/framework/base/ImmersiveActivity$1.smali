.class Lcom/nostalgiaemulators/framework/base/ImmersiveActivity$1;
.super Ljava/lang/Object;
.source "ImmersiveActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;

    # invokes: Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->setDecorViewVisibility()V
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->access$0(Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;)V

    .line 54
    return-void
.end method
