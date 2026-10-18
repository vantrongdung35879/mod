.class Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$1;
.super Ljava/lang/Object;
.source "CTIPayBaseChannel.java"

# interfaces
.implements Lcom/centauri/oversea/business/pay/XCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->init(Lcom/centauri/oversea/business/pay/CTIPayBaseView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyInner(Landroid/os/Message;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public notifyOuterLoginErr()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V

    return-void
.end method

.method public notifyOuterRiskErr(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x479

    if-ne v0, p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$1;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    new-instance v0, Lcom/centauri/oversea/business/pay/CTIResponse;

    const/4 v1, -0x5

    invoke-direct {v0, v1, p2, p3}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$100(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    :cond_0
    return-void
.end method
