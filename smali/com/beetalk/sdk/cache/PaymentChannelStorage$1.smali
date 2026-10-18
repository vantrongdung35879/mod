.class Lcom/beetalk/sdk/cache/PaymentChannelStorage$1;
.super Ljava/lang/Object;
.source "PaymentChannelStorage.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/cache/PaymentChannelStorage;->getPaymentChannels(Landroid/content/Context;ZLcom/garena/pay/android/GGPayRequest;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
        "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/cache/PaymentChannelStorage;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/cache/PaymentChannelStorage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage$1;->this$0:Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ChannelsResp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ">;)",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/ChannelsResp;

    .line 69
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getErrorCode()I

    move-result v0

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 70
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage$1;->this$0:Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->clear()V

    return-object p1

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage$1;->this$0:Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->-$$Nest$fputchannelsResp(Lcom/beetalk/sdk/cache/PaymentChannelStorage;Lcom/beetalk/sdk/networking/model/ChannelsResp;)V

    .line 78
    iget-object v0, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage$1;->this$0:Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->-$$Nest$fputmCreateTime(Lcom/beetalk/sdk/cache/PaymentChannelStorage;J)V

    return-object p1

    .line 74
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage$1;->this$0:Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->clear()V

    return-object v1

    .line 65
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/beetalk/sdk/cache/PaymentChannelStorage$1;->this$0:Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->clear()V

    return-object v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/cache/PaymentChannelStorage$1;->then(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ChannelsResp;

    move-result-object p1

    return-object p1
.end method
