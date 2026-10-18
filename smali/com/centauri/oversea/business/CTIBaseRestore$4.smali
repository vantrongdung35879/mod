.class Lcom/centauri/oversea/business/CTIBaseRestore$4;
.super Ljava/lang/Object;
.source "CTIBaseRestore.java"

# interfaces
.implements Lcom/centauri/http/centaurihttp/ICTIHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/CTIBaseRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/CTIBaseRestore;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/CTIBaseRestore;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 1

    .line 252
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$408(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    .line 253
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$300(Lcom/centauri/oversea/business/CTIBaseRestore;Z)V

    .line 254
    const-string p1, "APBaseRestore"

    const-string v0, "reProvide onFailure."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 1

    .line 193
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$300(Lcom/centauri/oversea/business/CTIBaseRestore;Z)V

    .line 194
    const-string p1, "APBaseRestore"

    const-string v0, "reProvide onStop."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/centauri/http/centaurihttp/CTIHttpAns;)V
    .locals 8

    .line 200
    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;->getResultCode()I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v1

    const-string v2, "&provideList="

    const-string v3, "&curIndex="

    const-string/jumbo v4, "threadId="

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$400(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v1

    iget-object v5, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v5}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    goto/16 :goto_3

    .line 208
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v3}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$400(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v2}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk.oversea.restore"

    invoke-virtual {v1, v3, v2}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    move-object v2, p1

    check-cast v2, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;

    invoke-virtual {v2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getProvideSdkRet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$500(Lcom/centauri/oversea/business/CTIBaseRestore;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/16 v3, 0x3fa

    if-eq v0, v3, :cond_2

    const/16 v3, 0x472

    if-eq v0, v3, :cond_3

    const/16 v3, 0x1399

    if-eq v0, v3, :cond_3

    const/16 v3, 0x139c

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1771

    if-eq v0, v3, :cond_3

    .line 244
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$408(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    .line 245
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1, v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$300(Lcom/centauri/oversea/business/CTIBaseRestore;Z)V

    goto/16 :goto_2

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    iget-object v0, v0, Lcom/centauri/oversea/business/CTIBaseRestore;->forbiddenPrompts:Ljava/util/List;

    iget-object v3, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v3}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v4}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$400(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v3, v3, Lcom/centauri/oversea/data/CTIPayReceipt;->sku:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 240
    :cond_2
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$408(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    .line 241
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$300(Lcom/centauri/oversea/business/CTIBaseRestore;Z)V

    goto/16 :goto_2

    .line 221
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    iget-boolean v0, v0, Lcom/centauri/oversea/business/CTIBaseRestore;->isNeedVerifyRes:Z

    if-nez v0, :cond_5

    .line 222
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    iget-object p1, p1, Lcom/centauri/oversea/business/CTIBaseRestore;->mChannel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    iget-object p1, p1, Lcom/centauri/oversea/business/CTIBaseRestore;->mChannel:Ljava/lang/String;

    const-string v0, "os_amazon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 223
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$600(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v3}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v4}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$400(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v3, v3, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    invoke-static {v3}, Lcom/centauri/oversea/comm/CTIBase64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&sku="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    .line 224
    invoke-static {v2}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v3}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$400(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v2, v2, Lcom/centauri/oversea/data/CTIPayReceipt;->sku:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :cond_4
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$600(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v2}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$400(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v0, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->sku:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 229
    :cond_5
    instance-of p1, p1, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;

    if-eqz p1, :cond_6

    .line 231
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$600(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getVerifyRes()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$408(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    .line 236
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1, v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$300(Lcom/centauri/oversea/business/CTIBaseRestore;Z)V

    :goto_2
    return-void

    .line 204
    :cond_7
    :goto_3
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$400(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk.oversea.cash.restore"

    invoke-virtual {p1, v1, v0}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$4;->this$0:Lcom/centauri/oversea/business/CTIBaseRestore;

    const/4 v0, -0x1

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->callbackOut(ILjava/lang/String;)V

    return-void
.end method
