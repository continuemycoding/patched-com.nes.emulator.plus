.class Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$MyUpdateManagerListener;
.super Ljava/lang/Object;
.source "NesEmulatorActivity.java"

# interfaces
.implements Lcom/qiang/framework/listener/UpdateManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyUpdateManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$MyUpdateManagerListener;->this$0:Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoUpdateAvailable()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onUpdateAvailable(Lcom/qiang/framework/recommend/Product;)V
    .locals 1
    .param p1, "product"    # Lcom/qiang/framework/recommend/Product;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$MyUpdateManagerListener;->this$0:Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;

    invoke-static {v0}, Lcom/qiang/framework/helpers/UpdateManager;->start(Landroid/content/Context;)V

    .line 45
    return-void
.end method
