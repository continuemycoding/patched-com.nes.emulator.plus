.class Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$1;
.super Ljava/lang/Object;
.source "RomsFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$1;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$1;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->access$1(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$1;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->searchNew:Z
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->access$2(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;->onRomsFinderStart(Z)V

    .line 257
    return-void
.end method
