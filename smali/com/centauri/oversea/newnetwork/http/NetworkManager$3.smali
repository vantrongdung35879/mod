.class Lcom/centauri/oversea/newnetwork/http/NetworkManager$3;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTIHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/http/NetworkManager;->initReq(Lcom/centauri/oversea/newapi/params/InitParams;Lcom/centauri/oversea/newapi/response/NotifyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

.field final synthetic val$callBack:Lcom/centauri/oversea/newapi/response/NotifyCallback;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/oversea/newapi/response/NotifyCallback;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$3;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    iput-object p2, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$3;->val$callBack:Lcom/centauri/oversea/newapi/response/NotifyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$3;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const-string v1, "Fail"

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$3;->val$callBack:Lcom/centauri/oversea/newapi/response/NotifyCallback;

    if-eqz p1, :cond_0

    .line 230
    invoke-interface {p1}, Lcom/centauri/oversea/newapi/response/NotifyCallback;->onFinish()V

    :cond_0
    return-void
.end method

.method public onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$3;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const-string v1, "Stop"

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$3;->val$callBack:Lcom/centauri/oversea/newapi/response/NotifyCallback;

    if-eqz p1, :cond_0

    .line 238
    invoke-interface {p1}, Lcom/centauri/oversea/newapi/response/NotifyCallback;->onFinish()V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$3;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const-string v1, "Succ"

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$3;->val$callBack:Lcom/centauri/oversea/newapi/response/NotifyCallback;

    if-eqz p1, :cond_0

    .line 222
    invoke-interface {p1}, Lcom/centauri/oversea/newapi/response/NotifyCallback;->onFinish()V

    :cond_0
    return-void
.end method
