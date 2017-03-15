.class Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$8;
.super Ljava/lang/Object;
.source "RomsFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->onRomsFinderZipPartStart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

.field private final synthetic val$n:I


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$8;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    iput p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$8;->val$n:I

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$8;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->access$1(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;

    move-result-object v0

    iget v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$8;->val$n:I

    invoke-interface {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;->onRomsFinderZipPartStart(I)V

    .line 545
    return-void
.end method
