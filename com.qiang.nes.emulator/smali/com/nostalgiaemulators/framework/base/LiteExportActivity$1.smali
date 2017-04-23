.class Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;
.super Landroid/os/AsyncTask;
.source "LiteExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/base/LiteExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field pd:Landroid/app/ProgressDialog;

.field targetPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/LiteExportActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/LiteExportActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/LiteExportActivity;

    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/LiteExportActivity;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->targetPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nostalgiaemulators/framework/base/MigrationManager;->doExport(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 63
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->pd:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 72
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/LiteExportActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/LiteExportActivity;->setResult(I)V

    .line 73
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/LiteExportActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/LiteExportActivity;->finish()V

    .line 74
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->pd:Landroid/app/ProgressDialog;

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "PATH"

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->targetPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/LiteExportActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/nostalgiaemulators/framework/base/LiteExportActivity;->setResult(ILandroid/content/Intent;)V

    .line 87
    .end local v0    # "data":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/LiteExportActivity;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/base/LiteExportActivity;->finish()V

    .line 88
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/LiteExportActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/base/LiteExportActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "sTarget":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v3

    .line 52
    invoke-interface {v3}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_Export"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->targetPath:Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->targetPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 54
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/LiteExportActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->pd:Landroid/app/ProgressDialog;

    .line 55
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->pd:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/LiteExportActivity;

    sget v3, Lcom/nostalgiaemulators/framework/R$string;->export_lite_dialog:I

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/base/LiteExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/LiteExportActivity$1;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 57
    return-void
.end method
