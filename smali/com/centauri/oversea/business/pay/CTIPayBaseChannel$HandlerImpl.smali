.class public Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;
.super Ljava/lang/Object;
.source "CTIPayBaseChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-boolean v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dropMessage:Z

    const/4 v1, 0x1

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "msgErrCode"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v4, -0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 161
    :pswitch_1
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "payToBePaid"

    invoke-virtual {v0, v3, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$400(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Landroid/os/Message;)V

    goto/16 :goto_4

    .line 244
    :pswitch_2
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v0, "loginInvalid"

    invoke-virtual {p1, v0, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "login expired"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$000(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V

    goto/16 :goto_4

    .line 237
    :pswitch_3
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string/jumbo v2, "unknown"

    invoke-virtual {p1, v2, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "payUnknown"

    invoke-static {p1, v2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    new-instance v2, Lcom/centauri/oversea/business/pay/CTIResponse;

    const-string/jumbo v3, "unknow result,check later"

    invoke-direct {v2, v4, v0, v3}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$100(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    goto/16 :goto_4

    .line 156
    :pswitch_4
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "payErr"

    invoke-virtual {v0, v3, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$400(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Landroid/os/Message;)V

    goto/16 :goto_4

    .line 166
    :pswitch_5
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v2, "paySucc"

    invoke-virtual {v0, v2, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "paySuccess"

    invoke-static {v0, v2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->isSdkProvide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    .line 170
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$500(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;I)V

    goto/16 :goto_4

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$300(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V

    .line 173
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->provide(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_3

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getNum()I

    move-result p1

    goto :goto_0

    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    :goto_0
    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$500(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;I)V

    goto/16 :goto_4

    .line 196
    :pswitch_6
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "postpayErr"

    invoke-virtual {v0, v3, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "postPayErr"

    invoke-static {v0, v2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_4

    .line 199
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getNum()I

    move-result p1

    goto :goto_1

    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 198
    :goto_1
    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$500(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;I)V

    goto/16 :goto_4

    .line 202
    :pswitch_7
    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v2, v2, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->isErrorConsume()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 203
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v2, "errorConsume"

    invoke-virtual {p1, v2, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/centauri/oversea/comm/CTICommMethod;->isConfigShowErrDialog(Landroid/content/Context;)Z

    move-result p1

    .line 208
    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showErrDialog is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 211
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v2, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideRetMes()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/centauri/oversea/business/pay/CTIResponse;

    iget-object v5, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v5, v5, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    .line 213
    invoke-virtual {v5}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideRetMes()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {p1, v2, v3}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$600(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    goto/16 :goto_4

    .line 216
    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    new-instance v2, Lcom/centauri/oversea/business/pay/CTIResponse;

    iget-object v3, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideSdkRet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v5, v5, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    .line 217
    invoke-virtual {v5}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideRetMes()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v0, v5}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {p1, v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$100(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Lcom/centauri/oversea/business/pay/CTIResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    new-instance v2, Lcom/centauri/oversea/business/pay/CTIResponse;

    iget-object v3, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    .line 221
    invoke-virtual {v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideRetMes()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v0, v3}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {p1, v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$100(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    goto/16 :goto_4

    .line 225
    :cond_6
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v2, "postpaySucc"

    invoke-virtual {v0, v2, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "postPaySuccess"

    invoke-static {v0, v2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_7

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getNum()I

    move-result p1

    goto :goto_2

    :cond_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    :goto_2
    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$500(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;I)V

    goto/16 :goto_4

    .line 180
    :pswitch_8
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->isErrorConsume()Z

    move-result v0

    const-string v2, "&receipt="

    const-string v3, "provideErr"

    if-eqz v0, :cond_8

    .line 181
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "msg=errorConsume&billno="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v4, v4, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getBillNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v2, v2, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideReceipt()Lcom/centauri/oversea/data/CTIPayReceipt;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->postPay()V

    goto/16 :goto_4

    .line 184
    :cond_8
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "msg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&billno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v5, v5, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v5}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getBillNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v2, v2, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideReceipt()Lcom/centauri/oversea/data/CTIPayReceipt;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v2, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideReceipt()Lcom/centauri/oversea/data/CTIPayReceipt;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->onSaveReceipt(Lcom/centauri/oversea/data/CTIPayReceipt;)V

    .line 187
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$400(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Landroid/os/Message;)V

    goto/16 :goto_4

    .line 191
    :pswitch_9
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v0, "provideSucc"

    invoke-virtual {p1, v0, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "provideSuccess"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->postPay()V

    goto/16 :goto_4

    .line 143
    :pswitch_a
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v2, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, v2, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->pay(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto/16 :goto_4

    .line 146
    :pswitch_b
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "orderErr"

    invoke-virtual {v0, v3, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$400(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Landroid/os/Message;)V

    goto/16 :goto_4

    .line 151
    :pswitch_c
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v0, "orderSucc"

    invoke-virtual {p1, v0, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "orderSuccess"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v2, v2, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getMInfo()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->pay(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto/16 :goto_4

    .line 129
    :pswitch_d
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "prepayErr"

    invoke-virtual {v0, v3, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$400(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Landroid/os/Message;)V

    goto/16 :goto_4

    .line 134
    :pswitch_e
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v2, "prepaySucc"

    invoke-virtual {v0, v2, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "prepaySuccess"

    invoke-static {v0, v2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->needOrder()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 137
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->order(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 139
    :cond_9
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->pay(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto/16 :goto_4

    .line 119
    :pswitch_f
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "initErr"

    invoke-virtual {v0, v3, v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$400(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Landroid/os/Message;)V

    goto :goto_4

    .line 124
    :pswitch_10
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object p1, p1, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const-string v0, "initSucc"

    invoke-virtual {p1, v0, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "initSuccess"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->prePay()V

    goto :goto_4

    .line 113
    :pswitch_11
    const-string/jumbo p1, "show_loading"

    invoke-static {p1}, Lcom/centauri/oversea/comm/MTimer;->start(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$300(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V

    .line 115
    invoke-static {p1}, Lcom/centauri/oversea/comm/MTimer;->stop(Ljava/lang/String;)J

    .line 116
    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->init()V

    goto :goto_4

    .line 231
    :pswitch_12
    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    invoke-static {v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "payCancel"

    invoke-static {v2, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    iget-object v2, v2, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "cancel"

    invoke-virtual {v2, v4, v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->this$0:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

    new-instance v3, Lcom/centauri/oversea/business/pay/CTIResponse;

    .line 234
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_a

    iget v4, p1, Landroid/os/Message;->arg1:I

    goto :goto_3

    :cond_a
    const/4 v4, -0x2

    :goto_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v3, v4, v0, p1}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {v2, v3}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->access$100(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    :cond_b
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xbc9
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sendEmptyMessage(I)V
    .locals 1

    .line 99
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 100
    iput p1, v0, Landroid/os/Message;->what:I

    .line 101
    invoke-virtual {p0, v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->handleMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->handleMessage(Landroid/os/Message;)Z

    return-void
.end method
