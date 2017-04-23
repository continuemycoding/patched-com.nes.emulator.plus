.class public abstract Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;
.super Landroid/app/Activity;
.source "SlotImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;
    }
.end annotation


# static fields
.field private static final NOTFOUND_DIALOG:I = 0x2

.field private static final PROGRESS_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.ui.gamegallery.SlotImportActivity"

.field private static final WRONG_FORMAT_DIALOG:I = 0x3


# instance fields
.field firstRun:Z

.field private gameHash:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->gameHash:Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->firstRun:Z

    .line 49
    return-void
.end method

.method public static getContentName(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 105
    :try_start_0
    const-string v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 107
    .local v7, "nameIndex":I
    if-ltz v7, :cond_0

    .line 108
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    :goto_0
    return-object v2

    .line 115
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 114
    .end local v7    # "nameIndex":I
    :catchall_0
    move-exception v0

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    throw v0
.end method


# virtual methods
.method public abstract getEmulatorActivityClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nostalgiaemulators/framework/base/EmulatorActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmulatorInstance()Lcom/nostalgiaemulators/framework/Emulator;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 58
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 59
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    if-eqz v3, :cond_0

    .line 65
    :try_start_0
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {v4, p0, v3}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->unpackFile(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->gameHash:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "com.nostalgiaemulators.framework.ui.gamegallery.SlotImportActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->showDialog(I)V

    goto :goto_0

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v4, "com.nostalgiaemulators.framework.ui.gamegallery.SlotImportActivity"

    const-string v5, "Extras didn\'t contain data uri"

    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->finish()V

    goto :goto_0

    .line 78
    :cond_1
    const-string v4, "com.nostalgiaemulators.framework.ui.gamegallery.SlotImportActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wrong action:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 128
    :pswitch_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 129
    .local v1, "dialog":Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 130
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->act_import_slot_search_label:I

    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 131
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->act_import_slot_search_title:I

    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 132
    goto :goto_0

    .line 134
    .end local v1    # "dialog":Landroid/app/ProgressDialog;
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 135
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->error:I

    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->act_import_game_ot_found:I

    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$1;

    invoke-direct {v2, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$1;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 147
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 148
    .restart local v0    # "alertDialog":Landroid/app/AlertDialog;
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->error:I

    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->act_import_wrong_format:I

    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$2;

    invoke-direct {v2, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$2;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->firstRun:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->gameHash:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->gameHash:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;Ljava/lang/String;)V

    .line 91
    .local v0, "findTask":Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->firstRun:Z

    .line 97
    .end local v0    # "findTask":Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity$FindTask;
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;->finish()V

    goto :goto_0
.end method
