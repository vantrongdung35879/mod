.class Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->startDelayDetect()V
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

    .line 125
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 128
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[NetworkInfo.startDelayDetect] detect speedSvr start"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$002(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    iput-boolean v1, v2, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_delayDetectMainThreadFlag:Z

    .line 137
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v1}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$000(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v3}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$200(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$300(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;Ljava/lang/String;I)J

    .line 138
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    iput-boolean v0, v1, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->_delayDetectMainThreadFlag:Z

    .line 140
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[NetworkInfo.startDelayDetect] detect speedSvr end"

    invoke-static {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    .line 132
    sget-object v3, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo$1;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;

    invoke-static {v4}, Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;->access$100(Lcom/ihoc/tgpatask/transceivertool/local/NetworkInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    aput-object v2, v5, v0

    const-string v0, "[NetworkInfo.startDelayDetect] parse ip[%s] error:%s"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
