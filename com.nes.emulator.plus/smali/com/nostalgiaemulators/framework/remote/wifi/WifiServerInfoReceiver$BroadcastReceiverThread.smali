.class Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;
.super Ljava/lang/Thread;
.source "WifiServerInfoReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastReceiverThread"
.end annotation


# instance fields
.field protected running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field serverSocket:Ljava/net/DatagramSocket;

.field socketInitLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;


# direct methods
.method private constructor <init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;)V
    .locals 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    .line 132
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->socketInitLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;-><init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    const/16 v0, 0x12c

    new-array v12, v0, [B

    .line 137
    .local v12, "recvBuf":[B
    new-instance v13, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$SendHandler;

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;->listener:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;

    invoke-direct {v13, v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$SendHandler;-><init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;)V

    .line 140
    .local v13, "sendHandler":Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$SendHandler;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v6

    .line 141
    .local v6, "channel":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {v6}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    .line 142
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 143
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "0.0.0.0"

    .line 144
    const v3, 0xfb39

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 143
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 145
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 146
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->socketInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 147
    const-string v0, "com.nostalgiaemulators.framework.remote.wifi.BroadcastReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start listening broadcast:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    const-string v0, "com.nostalgiaemulators.framework.remote.wifi.BroadcastReceiverService"

    const-string v1, "Stop listening"

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 195
    .end local v6    # "channel":Ljava/nio/channels/DatagramChannel;
    :cond_1
    :goto_1
    return-void

    .line 151
    .restart local v6    # "channel":Ljava/nio/channels/DatagramChannel;
    :cond_2
    :try_start_1
    new-instance v11, Ljava/net/DatagramPacket;

    .line 152
    array-length v0, v12

    .line 151
    invoke-direct {v11, v12, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 153
    .local v11, "packet":Ljava/net/DatagramPacket;
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v11}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 154
    const-string v0, "com.nostalgiaemulators.framework.remote.wifi.BroadcastReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recive from:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 157
    .local v7, "data":Ljava/lang/String;
    const-string v0, "%"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "items":[Ljava/lang/String;
    array-length v0, v9

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 160
    const/4 v0, 0x0

    aget-object v0, v9, v0

    .line 161
    const-string v1, "EMUDROID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 163
    .local v10, "msg":Landroid/os/Message;
    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->this$0:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

    .line 164
    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v9, v3

    .line 165
    const/4 v4, 0x3

    aget-object v4, v9, v4

    const/4 v5, 0x2

    aget-object v5, v9, v5

    invoke-static {v5}, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->valueOf(Ljava/lang/String;)Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;-><init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;Ljava/net/InetAddress;Ljava/lang/String;Ljava/lang/String;Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;)V

    .line 163
    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    invoke-virtual {v13, v10}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$SendHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 170
    .end local v7    # "data":Ljava/lang/String;
    .end local v9    # "items":[Ljava/lang/String;
    .end local v10    # "msg":Landroid/os/Message;
    .end local v11    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v8

    .line 171
    .local v8, "e":Ljava/net/SocketTimeoutException;
    :try_start_2
    const-string v0, "com.nostalgiaemulators.framework.remote.wifi.BroadcastReceiverService"

    const-string v1, "timeout"

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 185
    .end local v6    # "channel":Ljava/nio/channels/DatagramChannel;
    .end local v8    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v8

    .line 186
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "com.nostalgiaemulators.framework.remote.wifi.BroadcastReceiverService"

    const-string v1, ""

    invoke-static {v0, v1, v8}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_1

    .line 173
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "channel":Ljava/nio/channels/DatagramChannel;
    :catch_2
    move-exception v8

    .line 174
    .local v8, "e":Ljava/net/SocketException;
    :try_start_4
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "com.nostalgiaemulators.framework.remote.wifi.BroadcastReceiverService"

    const-string v1, "socket close"

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 188
    .end local v6    # "channel":Ljava/nio/channels/DatagramChannel;
    .end local v8    # "e":Ljava/net/SocketException;
    :catchall_0
    move-exception v0

    .line 189
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_3

    .line 191
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 194
    :cond_3
    throw v0

    .line 178
    .restart local v6    # "channel":Ljava/nio/channels/DatagramChannel;
    :catch_3
    move-exception v8

    .line 179
    .local v8, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v0, "com.nostalgiaemulators.framework.remote.wifi.BroadcastReceiverService"

    const-string v1, ""

    invoke-static {v0, v1, v8}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public startListening()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->stopListening()V

    .line 110
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->start()V

    .line 111
    return-void
.end method

.method public stopListening()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->socketInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 124
    :try_start_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverThread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :cond_0
    :goto_1
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    goto :goto_0
.end method
