.class Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$4;
.super Ljava/lang/Object;
.source "CTINetDetectService.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTIHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$4;->this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$4;->this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;->this$0:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->stopSelf()V

    return-void
.end method

.method public onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$4;->this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;->this$0:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->stopSelf()V

    return-void
.end method

.method public onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1$4;->this$1:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;

    iget-object p1, p1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$1;->this$0:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->stopSelf()V

    return-void
.end method
