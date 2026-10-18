.class public Lcom/gcloud/nettool/NetworkRunnerTracert;
.super Ljava/lang/Object;
.source "NetworkRunnerTracert.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "NetTool"


# instance fields
.field private trace_ip:Ljava/lang/String;

.field private trace_maxhops:I

.field private trace_ping_count:I

.field private trace_ping_pkgsize:I

.field private trace_ping_timeout:I

.field private trace_tag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "maxhops",
            "count"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, -0x1

    .line 15
    iput p3, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_tag:I

    const/16 p3, 0x1e

    .line 16
    iput p3, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_maxhops:I

    const/4 p3, 0x2

    .line 17
    iput p3, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ping_count:I

    const/4 p3, 0x1

    .line 18
    iput p3, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ping_timeout:I

    const/16 p3, 0x38

    .line 19
    iput p3, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ping_pkgsize:I

    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Add Tracert task, ["

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] IP:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", maxhops:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cnt:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timeout:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "NetTool"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput p1, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_tag:I

    .line 25
    iput-object p2, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ip:Ljava/lang/String;

    if-lez p6, :cond_0

    .line 28
    iput p6, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ping_count:I

    :cond_0
    if-lez p4, :cond_1

    .line 31
    iput p4, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ping_timeout:I

    :cond_1
    if-lez p5, :cond_2

    .line 34
    iput p5, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_maxhops:I

    :cond_2
    return-void
.end method

.method private doNotify(IILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "ret",
            "ip",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/gcloud/nettool/NetworkRunner;->Instance:Lcom/gcloud/nettool/NetworkRunner;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gcloud/nettool/NetworkRunner;->onTracert(IILjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ip:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ip:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 46
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 50
    :goto_1
    iget v5, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_maxhops:I

    add-int/2addr v5, v2

    if-ge v3, v5, :cond_4

    const/4 v5, 0x0

    .line 53
    :try_start_1
    iget-object v6, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ip:Ljava/lang/String;

    iget v7, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ping_timeout:I

    iget v8, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ping_count:I

    iget v9, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ping_pkgsize:I

    invoke-static {v6, v7, v8, v9, v3}, Lcom/gcloud/nettool/NetworkPingHelper;->runPing(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    move-object v6, v5

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_0

    goto/16 :goto_6

    .line 63
    :cond_0
    invoke-static {v6}, Lcom/gcloud/nettool/NetworkPingHelper;->parseRttPingResult(Ljava/lang/String;)Lcom/gcloud/nettool/NetworkPingResult;

    move-result-object v6

    .line 65
    iget-object v7, v6, Lcom/gcloud/nettool/NetworkPingResult;->RemoteIP:Ljava/lang/String;

    const/4 v8, 0x2

    const/4 v9, 0x3

    const-string v10, "%d_%s_%d"

    if-eqz v7, :cond_3

    iget-object v7, v6, Lcom/gcloud/nettool/NetworkPingResult;->RemoteIP:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_4

    .line 68
    :cond_1
    iget-object v7, v6, Lcom/gcloud/nettool/NetworkPingResult;->RemoteIP:Ljava/lang/String;

    iget-object v11, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ip:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 73
    :try_start_2
    iget-object v7, v6, Lcom/gcloud/nettool/NetworkPingResult;->RemoteIP:Ljava/lang/String;

    iget v11, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ping_timeout:I

    iget v12, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ping_pkgsize:I

    invoke-static {v7, v11, v2, v12, v1}, Lcom/gcloud/nettool/NetworkPingHelper;->runPing(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    nop

    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_4

    .line 79
    invoke-static {v5}, Lcom/gcloud/nettool/NetworkPingHelper;->parseRttPingResult(Ljava/lang/String;)Lcom/gcloud/nettool/NetworkPingResult;

    move-result-object v5

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v6, v6, Lcom/gcloud/nettool/NetworkPingResult;->RemoteIP:Ljava/lang/String;

    iget v5, v5, Lcom/gcloud/nettool/NetworkPingResult;->RttUS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v1

    aput-object v6, v9, v2

    aput-object v5, v9, v8

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 91
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v6, Lcom/gcloud/nettool/NetworkPingResult;->RemoteIP:Ljava/lang/String;

    iget v6, v6, Lcom/gcloud/nettool/NetworkPingResult;->RttUS:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v1

    aput-object v5, v7, v2

    aput-object v6, v7, v8

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 67
    :cond_3
    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v1

    const-string v5, "0.0.0.0"

    aput-object v5, v7, v2

    aput-object v6, v7, v8

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    :goto_6
    const/4 v2, 0x0

    :goto_7
    if-eqz v4, :cond_5

    .line 97
    iget v1, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_tag:I

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ip:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/gcloud/nettool/NetworkRunnerTracert;->doNotify(IILjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_8

    :cond_5
    if-eqz v2, :cond_6

    .line 99
    iget v2, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_tag:I

    iget-object v3, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ip:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/gcloud/nettool/NetworkRunnerTracert;->doNotify(IILjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_8

    .line 101
    :cond_6
    iget v1, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_tag:I

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/gcloud/nettool/NetworkRunnerTracert;->trace_ip:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/gcloud/nettool/NetworkRunnerTracert;->doNotify(IILjava/lang/String;Ljava/util/ArrayList;)V

    :goto_8
    return-void
.end method
