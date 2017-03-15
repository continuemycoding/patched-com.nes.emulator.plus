.class public Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
.super Ljava/lang/Object;
.source "WifiControllerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;
    }
.end annotation


# static fields
.field public static final PACKET_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.remote.wifi.WifiControllerClient"


# instance fields
.field byteBuffer:Ljava/nio/ByteBuffer;

.field private ip:Ljava/net/InetAddress;

.field private keysStates:I

.field lastSendTimestamp:J

.field private port:I

.field private thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->keysStates:I

    .line 39
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->lastSendTimestamp:J

    .line 42
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->ip:Ljava/net/InetAddress;

    .line 43
    iput p2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->port:I

    .line 44
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 45
    iput v2, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->keysStates:I

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendAndroidKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;)I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->port:I

    return v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;I)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendKeyStates(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendTextEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;III)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendCommandEvent(III)V

    return-void
.end method

.method private sendAndroidKeyEvent(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 206
    :try_start_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 207
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    sget-object v6, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ANDROID_KEY_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    invoke-virtual {v6}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ordinal()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 208
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 209
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 210
    new-instance v3, Ljava/net/DatagramPacket;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 211
    const/16 v5, 0x20

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->ip:Ljava/net/InetAddress;

    const v7, 0xcfe0

    .line 210
    invoke-direct {v3, v4, v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .local v3, "sendPacket":Ljava/net/DatagramPacket;
    const/4 v0, 0x0

    .line 215
    .local v0, "clientSocket":Ljava/net/DatagramSocket;
    :try_start_1
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .end local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .local v1, "clientSocket":Ljava/net/DatagramSocket;
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 219
    if-eqz v1, :cond_0

    .line 220
    :try_start_3
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 227
    .end local v1    # "clientSocket":Ljava/net/DatagramSocket;
    .end local v3    # "sendPacket":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    return-void

    .line 218
    .restart local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "sendPacket":Ljava/net/DatagramPacket;
    :catchall_0
    move-exception v4

    .line 219
    :goto_1
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 222
    :cond_1
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 224
    .end local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .end local v3    # "sendPacket":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerClient"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 218
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "sendPacket":Ljava/net/DatagramPacket;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v0    # "clientSocket":Ljava/net/DatagramSocket;
    goto :goto_1
.end method

.method private sendCommandEvent(III)V
    .locals 8
    .param p1, "command"    # I
    .param p2, "param0"    # I
    .param p3, "param1"    # I

    .prologue
    .line 261
    :try_start_0
    const-string v4, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "send command event:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 262
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 264
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    sget-object v6, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->COMMAND_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    invoke-virtual {v6}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ordinal()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 265
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 266
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    invoke-virtual {v4, v5, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 267
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    const/4 v0, 0x0

    .line 271
    .local v0, "clientSocket":Ljava/net/DatagramSocket;
    :try_start_1
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    .end local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .local v1, "clientSocket":Ljava/net/DatagramSocket;
    :try_start_2
    new-instance v3, Ljava/net/DatagramPacket;

    .line 273
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/16 v5, 0x20

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->ip:Ljava/net/InetAddress;

    .line 274
    const v7, 0xcfe0

    .line 272
    invoke-direct {v3, v4, v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 275
    .local v3, "sendPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    if-eqz v1, :cond_0

    .line 279
    :try_start_3
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 286
    .end local v1    # "clientSocket":Ljava/net/DatagramSocket;
    .end local v3    # "sendPacket":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    return-void

    .line 277
    .restart local v0    # "clientSocket":Ljava/net/DatagramSocket;
    :catchall_0
    move-exception v4

    .line 278
    :goto_1
    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 281
    :cond_1
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 283
    .end local v0    # "clientSocket":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerClient"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 277
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "clientSocket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v0    # "clientSocket":Ljava/net/DatagramSocket;
    goto :goto_1
.end method

.method private sendKeyStates(I)V
    .locals 8
    .param p1, "port"    # I

    .prologue
    .line 178
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->lastSendTimestamp:J

    .line 179
    const-string v4, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "send new event:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->keysStates:I

    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 180
    const-string v6, " port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->ip:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 182
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    sget-object v6, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->EMULATOR_KEY_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    invoke-virtual {v6}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ordinal()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 183
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 184
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    iget v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->keysStates:I

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 185
    new-instance v3, Ljava/net/DatagramPacket;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 186
    const/16 v5, 0x20

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->ip:Ljava/net/InetAddress;

    const v7, 0xcfe0

    .line 185
    invoke-direct {v3, v4, v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .local v3, "sendPacket":Ljava/net/DatagramPacket;
    const/4 v0, 0x0

    .line 190
    .local v0, "clientSocket":Ljava/net/DatagramSocket;
    :try_start_1
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .local v1, "clientSocket":Ljava/net/DatagramSocket;
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    if-eqz v1, :cond_0

    .line 195
    :try_start_3
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 202
    .end local v1    # "clientSocket":Ljava/net/DatagramSocket;
    .end local v3    # "sendPacket":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "sendPacket":Ljava/net/DatagramPacket;
    :catchall_0
    move-exception v4

    .line 194
    :goto_1
    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 197
    :cond_1
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 199
    .end local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .end local v3    # "sendPacket":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerClient"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 193
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "sendPacket":Ljava/net/DatagramPacket;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v0    # "clientSocket":Ljava/net/DatagramSocket;
    goto :goto_1
.end method

.method private sendTextEvent(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 231
    :try_start_0
    const-string v5, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "send new text event:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ip:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->ip:Ljava/net/InetAddress;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 234
    .local v4, "textData":[B
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    sget-object v7, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->TEXT_PACKET:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;

    invoke-virtual {v7}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer$PACKET_TYPE;->ordinal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 235
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x4

    array-length v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/4 v0, 0x0

    .line 239
    .local v0, "clientSocket":Ljava/net/DatagramSocket;
    :try_start_1
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    .end local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .local v1, "clientSocket":Ljava/net/DatagramSocket;
    :try_start_2
    new-instance v3, Ljava/net/DatagramPacket;

    .line 241
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/16 v6, 0x20

    iget-object v7, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->ip:Ljava/net/InetAddress;

    .line 242
    const v8, 0xcfe0

    .line 240
    invoke-direct {v3, v5, v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 243
    .local v3, "sendPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 244
    new-instance v3, Ljava/net/DatagramPacket;

    .end local v3    # "sendPacket":Ljava/net/DatagramPacket;
    array-length v5, v4

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->ip:Ljava/net/InetAddress;

    .line 245
    const v7, 0xcfe0

    .line 244
    invoke-direct {v3, v4, v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 246
    .restart local v3    # "sendPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    :try_start_3
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 257
    .end local v1    # "clientSocket":Ljava/net/DatagramSocket;
    .end local v3    # "sendPacket":Ljava/net/DatagramPacket;
    .end local v4    # "textData":[B
    :cond_0
    :goto_0
    return-void

    .line 248
    .restart local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v4    # "textData":[B
    :catchall_0
    move-exception v5

    .line 249
    :goto_1
    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 252
    :cond_1
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 254
    .end local v0    # "clientSocket":Ljava/net/DatagramSocket;
    .end local v4    # "textData":[B
    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "com.nostalgiaemulators.framework.remote.wifi.WifiControllerClient"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 248
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v4    # "textData":[B
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "clientSocket":Ljava/net/DatagramSocket;
    .restart local v0    # "clientSocket":Ljava/net/DatagramSocket;
    goto :goto_1
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->finish()V

    .line 303
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->finish()V

    .line 295
    :cond_0
    new-instance v0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;-><init>(Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    .line 296
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->start()V

    .line 297
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->finish()V

    .line 309
    :cond_0
    return-void
.end method

.method public declared-synchronized sendControllerAndroidKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->sendAndroidKeyEventForce(Landroid/view/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendControllerCommandEvent(III)V
    .locals 1
    .param p1, "command"    # I
    .param p2, "param0"    # I
    .param p3, "param1"    # I

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->sendCommandEventForce(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendControllerEmulatorKeyEvent(II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "keyCode"    # I

    .prologue
    const/4 v1, 0x1

    .line 162
    monitor-enter p0

    if-ne p1, v1, :cond_1

    .line 163
    :try_start_0
    iget v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->keysStates:I

    shl-int/2addr v1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->keysStates:I

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->forceSend()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 165
    :cond_1
    if-nez p1, :cond_0

    .line 166
    :try_start_1
    iget v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->keysStates:I

    shl-int/2addr v1, p2

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->keysStates:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendControllerTextEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->thread:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient$SenderThread;->sendTextEventForce(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
