.class Lcom/centauri/oversea/newnetwork/http/NetworkManager$2;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTIDataReportNotifier;


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

    .line 116
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$2;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkFailure(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    iget-object v0, p2, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p2, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    const-string v0, ""

    .line 137
    :goto_0
    iget-object v1, p2, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    .line 139
    invoke-static {v1}, Lcom/centauri/oversea/comm/CTITools;->getErrorTypeFromException(Ljava/lang/Exception;)I

    move-result v1

    .line 140
    invoke-static {p2}, Lcom/centauri/oversea/comm/CTITools;->getResponseCodeForDataReport(Lcom/centauri/http/core/Response;)I

    move-result v2

    .line 137
    invoke-static {p1, v1, v2, v0, p2}, Lcom/centauri/oversea/newnetwork/http/NetWorker;->sendReportData(Lcom/centauri/http/core/Request;IILjava/lang/String;Lcom/centauri/http/core/Response;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onNetworkSuccess(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    .line 123
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Lcom/centauri/oversea/newnetwork/http/NetWorker;->sendReportData(Lcom/centauri/http/core/Request;IILjava/lang/String;Lcom/centauri/http/core/Response;)V

    :cond_1
    :goto_0
    return-void
.end method
