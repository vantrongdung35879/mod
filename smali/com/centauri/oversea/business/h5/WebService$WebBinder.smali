.class Lcom/centauri/oversea/business/h5/WebService$WebBinder;
.super Lcom/centauri/oversea/business/h5/IWebInterface$Stub;
.source "WebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/h5/WebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebBinder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/centauri/oversea/business/h5/IWebInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(IILjava/lang/String;)V
    .locals 2

    .line 42
    sget-object v0, Lcom/centauri/oversea/business/h5/WebService;->MainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 43
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 44
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 45
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public queryCacheIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/DnsManager;->singleton()Lcom/centauri/oversea/newnetwork/http/DnsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/newnetwork/http/DnsManager;->queryIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    const-string p1, ""

    return-object p1
.end method
