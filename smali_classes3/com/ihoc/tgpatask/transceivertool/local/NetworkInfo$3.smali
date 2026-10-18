.class Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$3;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->startBandwidthDetect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;


# direct methods
.method constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$3;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 492
    :try_start_0
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$3;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$002(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$3;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$1502(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;J)J

    .line 498
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$3;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v2, v3, v4}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$1602(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;J)J

    .line 499
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$3;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$000(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, "[NetworkInfo.startBandwidthDetect] detect[%s] bandwidthSvr start"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$3;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$000(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$3;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v4}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$200(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$1800(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;Ljava/lang/String;I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$1702(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;J)J

    .line 501
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$3;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$000(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    const-string v0, "[NetworkInfo.startBandwidthDetect] detect[%s] bandwidthSvr end"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    .line 494
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "[NetworkInfo.startBandwidthDetect] parse ip error:%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
