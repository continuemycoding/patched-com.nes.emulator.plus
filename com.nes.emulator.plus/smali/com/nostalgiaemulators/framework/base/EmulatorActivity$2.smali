.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$2;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/controllers/RemoteController$OnRemoteControllerWarningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$2;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZapperCollision()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$2;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    # invokes: Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->showZapperCollisionDialog()V
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->access$1(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    .line 212
    return-void
.end method
