.class Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;
.super Landroid/os/Handler;
.source "CTINetDetectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;->this$0:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object p1

    new-instance v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$4;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$4;-><init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;)V

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->dataReport(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    .line 138
    const-string p1, "APNetDetectService"

    const-string/jumbo v0, "waiting for finish"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$3;

    invoke-direct {v1, p0, p1}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$3;-><init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 93
    :cond_2
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object p1

    const-string v0, "sdk.oversea.ip.detect.error"

    const-string v1, "error"

    invoke-virtual {p1, v0, v1}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object p1

    new-instance v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$2;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$2;-><init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;)V

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->dataReport(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    goto :goto_0

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;-><init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method
