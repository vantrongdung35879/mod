.class Lcom/centauri/oversea/newnetwork/http/NetworkManager$1;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTICommonInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/http/NetworkManager;->initNewNetworkModule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$1;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpHostHeaderDomain(Lcom/centauri/http/centaurihttp/CTIHttpRequest;)Ljava/lang/String;
    .locals 2

    .line 99
    instance-of v0, p1, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/centauri/oversea/newnetwork/model/CTIDetectRequest;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/comm/GlobalData;->getHost()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 101
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 106
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getHttpHostHeaderDomain host: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManager"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 112
    const-string v0, "4.05.422a"

    return-object v0
.end method
