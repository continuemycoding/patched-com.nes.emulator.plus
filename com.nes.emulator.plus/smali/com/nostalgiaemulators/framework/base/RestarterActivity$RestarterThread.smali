.class Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;
.super Ljava/lang/Thread;
.source "RestarterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/base/RestarterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestarterThread"
.end annotation


# instance fields
.field private cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field intent:Landroid/content/Intent;

.field pid:I

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/RestarterActivity;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/base/RestarterActivity;ILandroid/content/Intent;)V
    .locals 2
    .param p2, "pid"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->this$0:Lcom/nostalgiaemulators/framework/base/RestarterActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    iput-object p3, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->intent:Landroid/content/Intent;

    .line 79
    iput p2, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->pid:I

    .line 80
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 88
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_0
    iget v4, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->pid:I

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 96
    const-wide/16 v4, 0x12c

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 101
    :goto_1
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->this$0:Lcom/nostalgiaemulators/framework/base/RestarterActivity;

    invoke-virtual {v4}, Lcom/nostalgiaemulators/framework/base/RestarterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 102
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    check-cast v0, Landroid/app/ActivityManager;

    .line 103
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x0

    .line 105
    .local v3, "killed":Z
    :cond_0
    :goto_2
    if-eqz v3, :cond_2

    .line 126
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    .line 127
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_5

    .line 128
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->intent:Landroid/content/Intent;

    const-string v5, "isAfterRestart"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->this$0:Lcom/nostalgiaemulators/framework/base/RestarterActivity;

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/nostalgiaemulators/framework/base/RestarterActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    :cond_1
    :goto_3
    return-void

    .line 107
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v3, 0x1

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 117
    :goto_4
    if-nez v3, :cond_0

    .line 119
    const-wide/16 v4, 0x1e

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 121
    :catch_0
    move-exception v4

    goto :goto_2

    .line 110
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 111
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v6, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->pid:I

    if-ne v5, v6, :cond_3

    .line 112
    const/4 v3, 0x0

    .line 113
    goto :goto_4

    .line 132
    .end local v1    # "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_5
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->this$0:Lcom/nostalgiaemulators/framework/base/RestarterActivity;

    invoke-virtual {v4}, Lcom/nostalgiaemulators/framework/base/RestarterActivity;->finish()V

    goto :goto_3

    .line 90
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "killed":Z
    :catch_1
    move-exception v4

    goto :goto_0

    .line 98
    :catch_2
    move-exception v4

    goto :goto_1
.end method
