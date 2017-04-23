.class Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;
.super Ljava/lang/Thread;
.source "WifiServerInfoTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadCastThread"
.end annotation


# instance fields
.field applicationContext:Landroid/content/Context;

.field killTime:J

.field private lock:Ljava/lang/Object;

.field private running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field sendData:[B

.field serverSocket:Ljava/net/DatagramSocket;

.field socketInitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->serverSocket:Ljava/net/DatagramSocket;

    .line 113
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->socketInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->killTime:J

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->lock:Ljava/lang/Object;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->stopSending()V

    return-void
.end method

.method private stopSending()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->socketInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 132
    :try_start_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :cond_0
    :goto_1
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_1

    .line 126
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 159
    :try_start_0
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->serverSocket:Ljava/net/DatagramSocket;

    .line 161
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->serverSocket:Ljava/net/DatagramSocket;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 162
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->socketInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 163
    const-string v5, "com.nostalgiaemulators.framework.remote.wifi.BroadcastThread"

    const-string v6, "Start sending broadcast"

    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, "broadcastAddress":Ljava/net/InetAddress;
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->lock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    :try_start_1
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nostalgiaemulators/framework/utils/Utils;->getBroadcastAddress(Landroid/content/Context;)Ljava/net/InetAddress;

    move-result-object v0

    .line 166
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    const/4 v1, 0x0

    .local v1, "counter":I
    move v2, v1

    .line 173
    .end local v1    # "counter":I
    .local v2, "counter":I
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 207
    const-string v5, "com.nostalgiaemulators.framework.remote.wifi.BroadcastThread"

    const-string v6, "Stop sending"

    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->serverSocket:Ljava/net/DatagramSocket;

    if-eqz v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 219
    .end local v0    # "broadcastAddress":Ljava/net/InetAddress;
    .end local v2    # "counter":I
    :cond_0
    :goto_1
    return-void

    .line 166
    .restart local v0    # "broadcastAddress":Ljava/net/InetAddress;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 209
    .end local v0    # "broadcastAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    .line 210
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "com.nostalgiaemulators.framework.remote.wifi.BroadcastThread"

    const-string v6, ""

    invoke-static {v5, v6, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 213
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->serverSocket:Ljava/net/DatagramSocket;

    if-eqz v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    goto :goto_1

    .line 174
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "broadcastAddress":Ljava/net/InetAddress;
    .restart local v2    # "counter":I
    :cond_1
    :try_start_6
    iget-wide v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->killTime:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->killTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 175
    const-string v5, "com.nostalgiaemulators.framework.remote.wifi.BroadcastThread"

    const-string v6, "killing broadcast thread"

    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 212
    .end local v0    # "broadcastAddress":Ljava/net/InetAddress;
    .end local v2    # "counter":I
    :catchall_1
    move-exception v5

    .line 213
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 214
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->serverSocket:Ljava/net/DatagramSocket;

    if-eqz v6, :cond_2

    .line 215
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    .line 218
    :cond_2
    throw v5

    .line 180
    .restart local v0    # "broadcastAddress":Ljava/net/InetAddress;
    .restart local v2    # "counter":I
    :cond_3
    :try_start_7
    const-string v5, "com.nostalgiaemulators.framework.remote.wifi.BroadcastThread"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "send broadcast "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "counter":I
    .restart local v1    # "counter":I
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 181
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 184
    :try_start_8
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->lock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 185
    :try_start_9
    new-instance v4, Ljava/net/DatagramPacket;

    .line 186
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->sendData:[B

    iget-object v7, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->sendData:[B

    array-length v7, v7

    .line 187
    const v8, 0xfb39

    .line 185
    invoke-direct {v4, v5, v7, v0, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 188
    .local v4, "sendPacket":Ljava/net/DatagramPacket;
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 184
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 200
    .end local v4    # "sendPacket":Ljava/net/DatagramPacket;
    :goto_2
    const-wide/16 v6, 0xbb8

    :try_start_a
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move v2, v1

    .line 202
    .end local v1    # "counter":I
    .restart local v2    # "counter":I
    goto/16 :goto_0

    .line 184
    .end local v2    # "counter":I
    .restart local v1    # "counter":I
    :catchall_2
    move-exception v5

    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 191
    :catch_1
    move-exception v3

    .line 193
    .restart local v3    # "e":Ljava/lang/Exception;
    const-wide/16 v6, 0x3a98

    :try_start_d
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_2

    .line 195
    :catch_2
    move-exception v5

    goto :goto_2

    .line 202
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 203
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_e
    const-string v5, "com.nostalgiaemulators.framework.remote.wifi.BroadcastThread"

    const-string v6, "wtf"

    invoke-static {v5, v6, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move v2, v1

    .end local v1    # "counter":I
    .restart local v2    # "counter":I
    goto/16 :goto_0
.end method

.method public setKillTime(J)V
    .locals 1
    .param p1, "killTime"    # J

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->killTime:J

    .line 119
    return-void
.end method

.method public declared-synchronized update(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->applicationContext:Landroid/content/Context;

    .line 145
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 146
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 147
    .local v1, "model":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "EMUDROID%"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nostalgiaemulators/framework/utils/Utils;->getDeviceType(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 147
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter$BroadCastThread;->sendData:[B

    .line 143
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 143
    .end local v0    # "manufacturer":Ljava/lang/String;
    .end local v1    # "model":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method
