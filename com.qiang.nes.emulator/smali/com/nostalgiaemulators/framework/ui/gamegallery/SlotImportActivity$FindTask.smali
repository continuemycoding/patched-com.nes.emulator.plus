.class Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;
.super Landroid/os/AsyncTask;
.source "SlotImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
        ">;"
    }
.end annotation


# instance fields
.field gameHash:Ljava/lang/String;

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "gameHash"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 167
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->gameHash:Ljava/lang/String;

    .line 168
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 173
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    invoke-static {v6}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    move-result-object v0

    .line 175
    .local v0, "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    const-class v6, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "where checksum=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->gameHash:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 176
    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-virtual {v0, v6, v7}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->selectObjFromDb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 178
    .local v2, "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->isInArchive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    invoke-virtual {v6}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    iget-object v7, v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    .local v3, "gameFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    .line 182
    const-class v6, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WHERE _id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    iget-wide v8, v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->zipfile_id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 182
    invoke-virtual {v0, v6, v7, v8}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->selectObjFromDb(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;

    .line 184
    .local v5, "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    new-instance v4, Ljava/io/File;

    iget-object v6, v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->path:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v4, "zipFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    :try_start_0
    iget-object v6, v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    invoke-static {v4, v6, v3}, Lcom/nostalgiaemulators/framework/utils/Utils;->extractFile(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    .end local v3    # "gameFile":Ljava/io/File;
    .end local v4    # "zipFile":Ljava/io/File;
    .end local v5    # "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    :cond_0
    :goto_0
    return-object v2

    .line 190
    .restart local v3    # "gameFile":Ljava/io/File;
    .restart local v4    # "zipFile":Ljava/io/File;
    .restart local v5    # "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/util/zip/ZipException;
    const-string v6, "com.nostalgiaemulators.framework.ui.gamegallery.SlotImportActivity"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 193
    .end local v1    # "e":Ljava/util/zip/ZipException;
    :catch_1
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "com.nostalgiaemulators.framework.ui.gamegallery.SlotImportActivity"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->doInBackground([Ljava/lang/Void;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 247
    return-void

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 6
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    const/4 v5, 0x2

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    if-eqz p1, :cond_1

    .line 217
    const-string v2, "com.nostalgiaemulators.framework.ui.gamegallery.SlotImportActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "found game "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "gameFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    .line 222
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->getEmulatorActivityClass()Ljava/lang/Class;

    move-result-object v3

    .line 221
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "game"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 224
    const-string v2, "slot"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    invoke-virtual {v2, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->startActivity(Landroid/content/Intent;)V

    .line 235
    .end local v0    # "gameFile":Ljava/io/File;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 236
    return-void

    .line 228
    .restart local v0    # "gameFile":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    invoke-virtual {v2, v5}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->showDialog(I)V

    goto :goto_1

    .line 232
    .end local v0    # "gameFile":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    invoke-virtual {v2, v5}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->showDialog(I)V

    goto :goto_1

    .line 213
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->onPostExecute(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 205
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->showDialog(I)V

    .line 206
    return-void
.end method
