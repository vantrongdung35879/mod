.class Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;->getPaymentChannelList(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

.field final synthetic val$paymentRequest:Lcom/garena/pay/android/data/GGPayment;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;Lcom/garena/pay/android/data/GGPayment;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    iput-object p2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$paymentRequest:Lcom/garena/pay/android/data/GGPayment;

    iput-object p3, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 301
    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 304
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Connection Timed Out"

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Response was null or not correct"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    :goto_0
    return-object v1

    .line 312
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/ChannelsResp;

    if-eqz p1, :cond_2

    .line 313
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getErrorCode()I

    move-result v0

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 314
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/garena/pay/android/GGErrorCode;->getErrorFromCode(I)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    .line 315
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    new-instance v2, Lcom/garena/pay/android/exception/GGException;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    return-object v1

    :cond_2
    if-eqz p1, :cond_5

    .line 318
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$paymentRequest:Lcom/garena/pay/android/data/GGPayment;

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment;->isConvertGooglePlayPrices()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    invoke-static {v0, p1, v2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->-$$Nest$smlocalizeChannelDenominations(Landroid/app/Activity;Ljava/util/List;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;)V

    goto :goto_1

    .line 325
    :cond_4
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    :goto_1
    return-object v1

    .line 319
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "parse response error"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    return-object v1
.end method
