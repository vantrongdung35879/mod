.class Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendPkg"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

.field private udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method private constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;)V
    .locals 0

    .line 373
    invoke-direct {p0, p1}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 382
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_udpDetectLossThreadSendFlag:Z

    .line 383
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$600(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$600(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    const/4 v2, 0x0

    .line 385
    :goto_0
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$700(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v3, :cond_1

    .line 386
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$800(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 387
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v7}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$700(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    aput-object v2, v4, v6

    aput-object v7, v4, v5

    const-string v1, "[NetworkInfo.SendPkg] interrupt[%s] delaySvr thread, stop send pkg,has send %d[%d] pkgs"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 392
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 393
    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$908(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)J

    const-wide/16 v3, 0x5

    .line 394
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 396
    sget-object v4, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v7}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v1

    aput-object v3, v5, v6

    const-string v3, "[%s]send pkg fail:%s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    :cond_1
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v7, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v7}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$700(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    aput-object v2, v4, v6

    aput-object v7, v4, v5

    const-string v1, "[NetworkInfo.SendPkg] nomal done [%s] delaySvr thread, done send pkg,has send %d[%d] pkgs"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    iput-boolean v6, v0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_udpDetectLossThreadSendFlag:Z

    return-void
.end method

.method setUdpSocket(Ljava/net/DatagramSocket;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$SendPkg;->udpSocket:Ljava/net/DatagramSocket;

    return-void
.end method
