.class Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$1;
.super Ljava/lang/Object;
.source "SlotImportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->finish()V

    .line 142
    return-void
.end method
