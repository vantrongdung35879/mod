.class Lcom/centauri/oversea/newnetwork/http/NetworkManager$6;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTIHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/http/NetworkManager;->getOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

.field final synthetic val$callBack:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$6;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    iput-object p2, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$6;->val$callBack:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$6;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const-string v1, "Fail"

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$6;->val$callBack:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    if-eqz v0, :cond_0

    .line 413
    invoke-interface {v0, p1}, Lcom/centauri/http/centaurihttp/ICTIHttpCallback;->onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    :cond_0
    return-void
.end method

.method public onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$6;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const-string v1, "Stop"

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$6;->val$callBack:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v0, p1}, Lcom/centauri/http/centaurihttp/ICTIHttpCallback;->onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$6;->this$0:Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    const-string v1, "Succ"

    invoke-static {v0, p1, v1}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->access$100(Lcom/centauri/oversea/newnetwork/http/NetworkManager;Lcom/centauri/http/centaurihttp/CTIHttpAns;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetworkManager$6;->val$callBack:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    if-eqz v0, :cond_0

    .line 405
    invoke-interface {v0, p1}, Lcom/centauri/http/centaurihttp/ICTIHttpCallback;->onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V

    :cond_0
    return-void
.end method
