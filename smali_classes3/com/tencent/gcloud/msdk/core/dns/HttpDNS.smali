.class public Lcom/tencent/gcloud/msdk/core/dns/HttpDNS;
.super Ljava/lang/Object;
.source "HttpDNS.java"


# static fields
.field private static volatile isInit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndInit()V
    .locals 7

    .line 28
    sget-boolean v0, Lcom/tencent/gcloud/msdk/core/dns/HttpDNS;->isInit:Z

    if-nez v0, :cond_0

    .line 29
    const-string v0, "http dns init"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/tencent/itop/httpdns/Resolver;->getInstance()Lcom/tencent/itop/httpdns/Resolver;

    move-result-object v1

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v0, "MSDK_GAME_ID"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x7d3

    const/16 v4, 0x3e8

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/itop/httpdns/Resolver;->initWithTDM(Landroid/content/Context;Ljava/lang/String;IZI)V

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/tencent/gcloud/msdk/core/dns/HttpDNS;->isInit:Z

    :cond_0
    return-void
.end method

.method public static resolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "domainUrl"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dns resolve:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/tencent/gcloud/msdk/core/dns/HttpDNS;->checkAndInit()V

    .line 21
    invoke-static {}, Lcom/tencent/itop/httpdns/Resolver;->getInstance()Lcom/tencent/itop/httpdns/Resolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/itop/httpdns/Resolver;->getAddrByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DNS resolve result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 23
    const-string v0, "HttpDns"

    const-string v1, ""

    const-string v2, "5.36.007"

    invoke-static {v2, v0, v1, v1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->reportPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
