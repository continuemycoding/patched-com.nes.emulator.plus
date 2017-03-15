.class Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;
.super Ljava/lang/Object;
.source "SlotSelectionActivity.java"

# interfaces
.implements Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;

.field private final synthetic val$afterEraseClickListener:Landroid/view/View$OnClickListener;

.field private final synthetic val$dateS:Ljava/lang/String;

.field private final synthetic val$message:Landroid/widget/TextView;

.field private final synthetic val$screenshot:Landroid/widget/ImageView;

.field private final synthetic val$slotInfo:Lcom/nostalgiaemulators/framework/SlotInfo;

.field private final synthetic val$slotView:Landroid/view/View;

.field private final synthetic val$timeS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;Lcom/nostalgiaemulators/framework/SlotInfo;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$slotInfo:Lcom/nostalgiaemulators/framework/SlotInfo;

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$slotView:Landroid/view/View;

    iput-object p4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$afterEraseClickListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$message:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$screenshot:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$dateS:Ljava/lang/String;

    iput-object p8, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$timeS:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;)V
    .locals 18
    .param p1, "item"    # Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;

    .prologue
    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->getItemId()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 116
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$slotInfo:Lcom/nostalgiaemulators/framework/SlotInfo;

    iget-object v7, v15, Lcom/nostalgiaemulators/framework/SlotInfo;->path:Ljava/lang/String;

    .line 117
    .local v7, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v8, "savestate":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "fn":Ljava/lang/String;
    const-string v15, "."

    invoke-virtual {v2, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 120
    .local v3, "index":I
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 122
    if-lez v3, :cond_0

    .line 123
    const/4 v15, 0x0

    invoke-virtual {v2, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v9, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ".png"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v9, "screenshot":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 128
    .end local v9    # "screenshot":Ljava/io/File;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$slotView:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$slotView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$afterEraseClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$message:Landroid/widget/TextView;

    const-string v16, "EMPTY"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$message:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$screenshot:Landroid/widget/ImageView;

    .line 133
    const v16, 0x106000d

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "savestate":Ljava/io/File;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;->getItemId()I

    move-result v15

    if-nez v15, :cond_2

    .line 137
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v10, "sendIntent":Landroid/content/Intent;
    const-string v15, "android.intent.action.SEND"

    invoke-virtual {v10, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;
    invoke-static {v15}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;)Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    move-result-object v15

    iget-object v15, v15, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-virtual {v15}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->getCleanName()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;
    invoke-static {v15}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;)Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 142
    sget v16, Lcom/nostalgiaemulators/framework/R$string;->send_slot_message:I

    .line 141
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "msgFormat":Ljava/lang/String;
    const/4 v15, 0x5

    new-array v0, v15, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    .line 145
    aput-object v6, v16, v15

    const/4 v15, 0x1

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$dateS:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v16, v15

    const/4 v15, 0x2

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$timeS:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v16, v15

    const/4 v15, 0x3

    .line 148
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v17

    .line 149
    invoke-interface/range {v17 .. v17}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v15

    const/16 v17, 0x4

    .line 150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;
    invoke-static {v15}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;)Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->getApplication()Landroid/app/Application;

    move-result-object v15

    check-cast v15, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 151
    invoke-virtual {v15}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getStoreUrl()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v16, v17

    .line 144
    move-object/from16 v0, v16

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;
    invoke-static {v15}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;)Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 154
    sget v16, Lcom/nostalgiaemulators/framework/R$string;->send_slot_subject:I

    .line 153
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 155
    .local v12, "subjectFormat":Ljava/lang/String;
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 156
    aput-object v6, v15, v16

    const/16 v16, 0x1

    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v17

    .line 157
    invoke-interface/range {v17 .. v17}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 155
    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, "subject":Ljava/lang/String;
    const-string v15, "android.intent.extra.TEXT"

    invoke-virtual {v10, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v15, "android.intent.extra.SUBJECT"

    invoke-virtual {v10, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;
    invoke-static {v15}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;)Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    move-result-object v15

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->val$slotInfo:Lcom/nostalgiaemulators/framework/SlotInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;

    move-object/from16 v17, v0

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;
    invoke-static/range {v17 .. v17}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;)Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    move-object/from16 v17, v0

    .line 163
    invoke-static/range {v15 .. v17}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->createPackFile(Landroid/app/Activity;Lcom/nostalgiaemulators/framework/SlotInfo;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)Ljava/io/File;

    move-result-object v13

    .line 166
    .local v13, "tempFile":Ljava/io/File;
    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    .line 167
    .local v14, "uri":Landroid/net/Uri;
    const-string v15, "android.intent.extra.STREAM"

    invoke-virtual {v10, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    const-string v15, "application/octet-stream"

    invoke-virtual {v10, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;
    invoke-static {v15}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;)Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    move-result-object v15

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;

    move-object/from16 v16, v0

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;
    invoke-static/range {v16 .. v16}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity$3;)Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 174
    sget v17, Lcom/nostalgiaemulators/framework/R$string;->send_slot:I

    .line 173
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 171
    move-object/from16 v0, v16

    invoke-static {v10, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "msgFormat":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v10    # "sendIntent":Landroid/content/Intent;
    .end local v11    # "subject":Ljava/lang/String;
    .end local v12    # "subjectFormat":Ljava/lang/String;
    .end local v13    # "tempFile":Ljava/io/File;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 176
    .restart local v4    # "message":Ljava/lang/String;
    .restart local v5    # "msgFormat":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v10    # "sendIntent":Landroid/content/Intent;
    .restart local v11    # "subject":Ljava/lang/String;
    .restart local v12    # "subjectFormat":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    const-string v15, "com.nostalgiaemulators.framework.ui.gamegallery.SlotSelectionActivity"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
