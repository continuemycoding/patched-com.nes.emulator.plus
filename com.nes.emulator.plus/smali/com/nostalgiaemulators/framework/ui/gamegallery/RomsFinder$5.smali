.class Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$5;
.super Ljava/lang/Object;
.source "RomsFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->onRomsFinderFoundZipEntry(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

.field private final synthetic val$n:I

.field private final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$5;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$5;->val$s:Ljava/lang/String;

    iput p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$5;->val$n:I

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$5;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->access$1(Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;)Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$5;->val$s:Ljava/lang/String;

    iget v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$5;->val$n:I

    invoke-interface {v0, v1, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder$OnRomsFinderListener;->onRomsFinderFoundZipEntry(Ljava/lang/String;I)V

    .line 426
    return-void
.end method
