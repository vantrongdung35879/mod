.class public Lcom/gcloud/nettool/NetworkRunnerPing;
.super Ljava/lang/Object;
.source "NetworkRunnerPing.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "NetTool"


# instance fields
.field private ping_count:I

.field private ping_ip:Ljava/lang/String;

.field private ping_pkgsize:I

.field private ping_tag:I

.field private ping_timeout:I


# direct methods
.method public constructor <init>(ILjava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "ip",
            "port",
            "timeout",
            "count"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p3, 0xa

    .line 14
    iput p3, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_count:I

    .line 15
    iput p3, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_timeout:I

    const/16 p3, 0x38

    .line 16
    iput p3, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_pkgsize:I

    const/4 p3, -0x1

    .line 17
    iput p3, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_tag:I

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Add Ping task, ["

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] IP:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timeout:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cnt:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "NetTool"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iput p1, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_tag:I

    .line 23
    iput-object p2, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_ip:Ljava/lang/String;

    if-lez p5, :cond_0

    .line 25
    iput p5, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_count:I

    :cond_0
    if-lez p4, :cond_1

    .line 28
    iput p4, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_timeout:I

    :cond_1
    return-void
.end method

.method private doNotify(IIIIIIILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "ret",
            "send",
            "recv",
            "minUS",
            "maxUS",
            "avgUS",
            "ip"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/gcloud/nettool/NetworkRunner;->Instance:Lcom/gcloud/nettool/NetworkRunner;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/gcloud/nettool/NetworkRunner;->onPing(IIIIIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_ip:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_ip:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 45
    :try_start_1
    iget-object v1, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_ip:Ljava/lang/String;

    iget v2, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_timeout:I

    iget v3, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_count:I

    iget v4, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_pkgsize:I

    invoke-static {v1, v2, v3, v4, v0}, Lcom/gcloud/nettool/NetworkPingHelper;->runPing(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    goto :goto_1

    :catch_1
    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v4, 0x7

    .line 50
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetTool"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    .line 53
    iget v3, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_tag:I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_ip:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/gcloud/nettool/NetworkRunnerPing;->doNotify(IIIIIIILjava/lang/String;)V

    goto :goto_3

    .line 55
    :cond_0
    invoke-static {v1}, Lcom/gcloud/nettool/NetworkPingHelper;->parsePingResult(Ljava/lang/String;)Lcom/gcloud/nettool/NetworkPingResult;

    move-result-object v1

    .line 57
    iget v2, v1, Lcom/gcloud/nettool/NetworkPingResult;->PingRet:I

    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    .line 59
    :cond_1
    iget v0, v1, Lcom/gcloud/nettool/NetworkPingResult;->PingRet:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x6

    const/4 v4, 0x6

    goto :goto_2

    :cond_2
    const/16 v0, 0xe

    const/16 v4, 0xe

    .line 65
    :goto_2
    iget v3, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_tag:I

    iget v5, v1, Lcom/gcloud/nettool/NetworkPingResult;->SendCnt:I

    iget v6, v1, Lcom/gcloud/nettool/NetworkPingResult;->RecvCnt:I

    iget v7, v1, Lcom/gcloud/nettool/NetworkPingResult;->MinUS:I

    iget v8, v1, Lcom/gcloud/nettool/NetworkPingResult;->MaxUS:I

    iget v9, v1, Lcom/gcloud/nettool/NetworkPingResult;->AvgUS:I

    iget-object v10, p0, Lcom/gcloud/nettool/NetworkRunnerPing;->ping_ip:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/gcloud/nettool/NetworkRunnerPing;->doNotify(IIIIIIILjava/lang/String;)V

    :goto_3
    return-void
.end method
