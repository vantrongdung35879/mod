.class Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1$1;
.super Ljava/lang/Object;
.source "CTINetDetectService.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTIHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1$1;->this$2:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1$1;->this$2:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;->this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;->this$0:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-static {p1}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->access$000(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1$1;->this$2:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;->this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;->this$0:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-static {p1}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->access$000(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 1

    .line 71
    check-cast p1, Lcom/centauri/oversea/newnetwork/model/CTIDetectAns;

    .line 72
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1$1;->this$2:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$1;->this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;->this$0:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-static {v0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->access$000(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/model/CTIDetectAns;->getDetuctMsg()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
