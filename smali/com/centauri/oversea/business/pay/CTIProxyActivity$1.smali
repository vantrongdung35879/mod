.class Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;
.super Ljava/lang/Object;
.source "CTIProxyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/pay/CTIProxyActivity;->callBackSuccess(Lcom/centauri/oversea/business/pay/CTIResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

.field final synthetic val$response:Lcom/centauri/oversea/business/pay/CTIResponse;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/pay/CTIProxyActivity;Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    iput-object p2, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->val$response:Lcom/centauri/oversea/business/pay/CTIResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    invoke-static {}, Lcom/centauri/oversea/business/CTIPayManager;->instance()Lcom/centauri/oversea/business/CTIPayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-static {v1}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->access$000(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->val$response:Lcom/centauri/oversea/business/pay/CTIResponse;

    invoke-virtual {v0, v1, v2}, Lcom/centauri/oversea/business/CTIPayManager;->callBackSuccess(ILcom/centauri/oversea/business/pay/CTIResponse;)V

    .line 117
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->val$response:Lcom/centauri/oversea/business/pay/CTIResponse;

    iget-boolean v0, v0, Lcom/centauri/oversea/business/pay/CTIResponse;->needShowSuccess:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->access$100(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)Lcom/centauri/oversea/comm/MUIManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->access$100(Lcom/centauri/oversea/business/pay/CTIProxyActivity;)Lcom/centauri/oversea/comm/MUIManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/comm/MUIManager;->successToast(Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIProxyActivity$1;->this$0:Lcom/centauri/oversea/business/pay/CTIProxyActivity;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIProxyActivity;->finish()V

    return-void
.end method
