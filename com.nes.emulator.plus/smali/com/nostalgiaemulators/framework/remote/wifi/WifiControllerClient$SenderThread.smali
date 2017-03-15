.class Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;
.super Ljava/lang/Thread;
.source "WifiControllerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SenderThread"
.end annotation


# instance fields
.field private final DELAY:I

.field private commandEvent:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private counter:I

.field private keyFifo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private needsSend:Z

.field private volatile running:Z

.field private textEvent:Ljava/lang/String;

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;


# direct methods
.method private constructor <init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 131
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->keyFifo:Ljava/util/LinkedList;

    .line 132
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->textEvent:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->commandEvent:Landroid/util/Pair;

    .line 134
    const/16 v0, 0x14

    iput v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->DELAY:I

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->needsSend:Z

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;-><init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->running:Z

    .line 110
    return-void
.end method

.method public forceSend()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->needsSend:Z

    .line 106
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 52
    const-string v2, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerClient"

    const-string v3, "Wifi client thread start"

    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    iget-boolean v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->running:Z

    if-nez v2, :cond_0

    .line 101
    const-string v2, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerClient"

    const-string v3, "Wifi client thread stop"

    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void

    .line 55
    :cond_0
    iget-boolean v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->needsSend:Z

    if-eqz v2, :cond_5

    .line 56
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->keyFifo:Ljava/util/LinkedList;

    monitor-enter v3

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->keyFifo:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 59
    .local v0, "event":Landroid/view/KeyEvent;
    :goto_1
    if-nez v0, :cond_4

    .line 56
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    # getter for: Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->port:I
    invoke-static {v3}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->access$1(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;)I

    move-result v3

    # invokes: Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendKeyStates(I)V
    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->access$2(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;I)V

    .line 67
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->textEvent:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 68
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->textEvent:Ljava/lang/String;

    monitor-enter v3

    .line 69
    :try_start_1
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->textEvent:Ljava/lang/String;

    # invokes: Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendTextEvent(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->access$3(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->textEvent:Ljava/lang/String;

    .line 68
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->commandEvent:Landroid/util/Pair;

    if-eqz v2, :cond_2

    .line 75
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->commandEvent:Landroid/util/Pair;

    monitor-enter v3

    .line 76
    :try_start_2
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->commandEvent:Landroid/util/Pair;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 77
    .local v1, "params":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->commandEvent:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 78
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 77
    # invokes: Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendCommandEvent(III)V
    invoke-static {v4, v5, v6, v2}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->access$4(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;III)V

    .line 79
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->commandEvent:Landroid/util/Pair;

    .line 75
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    .end local v1    # "params":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    iput-boolean v7, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->needsSend:Z

    .line 84
    iput v7, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->counter:I

    .line 90
    .end local v0    # "event":Landroid/view/KeyEvent;
    :goto_2
    iget v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->counter:I

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_3

    .line 91
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->needsSend:Z

    .line 95
    :cond_3
    const-wide/16 v2, 0x14

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    goto :goto_0

    .line 60
    .restart local v0    # "event":Landroid/view/KeyEvent;
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    # invokes: Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendAndroidKeyEvent(Landroid/view/KeyEvent;)V
    invoke-static {v2, v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->access$0(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;Landroid/view/KeyEvent;)V

    .line 61
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->keyFifo:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "event":Landroid/view/KeyEvent;
    check-cast v0, Landroid/view/KeyEvent;

    .restart local v0    # "event":Landroid/view/KeyEvent;
    goto :goto_1

    .line 56
    .end local v0    # "event":Landroid/view/KeyEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 68
    .restart local v0    # "event":Landroid/view/KeyEvent;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 75
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 87
    .end local v0    # "event":Landroid/view/KeyEvent;
    :cond_5
    iget v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->counter:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->counter:I

    goto :goto_2
.end method

.method public sendAndroidKeyEventForce(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->keyFifo:Ljava/util/LinkedList;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->keyFifo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->needsSend:Z

    .line 118
    return-void

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendCommandEventForce(III)V
    .locals 5
    .param p1, "command"    # I
    .param p2, "param0"    # I
    .param p3, "param1"    # I

    .prologue
    .line 126
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 127
    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->commandEvent:Landroid/util/Pair;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->needsSend:Z

    .line 129
    return-void
.end method

.method public sendTextEventForce(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->textEvent:Ljava/lang/String;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->needsSend:Z

    .line 123
    return-void
.end method
