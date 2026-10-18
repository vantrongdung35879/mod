.class Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGLoadEventConfigs(Landroid/content/Context;Ljava/lang/String;ZLcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activeOnly:Z

.field final synthetic val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 461
    iput-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    iput-object p2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$version:Ljava/lang/String;

    iput-object p3, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$activeOnly:Z

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

    .line 461
    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 464
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_0

    .line 467
    const-string p1, "getRebateIdList request timeout"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_REQUEST_TIME_OUT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v3, "Connection Timed Out"

    invoke-direct {v1, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v2, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;->onEventResultObtained(ILjava/util/List;Ljava/lang/Exception;)V

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 472
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    .line 471
    invoke-interface {v0, v1, v2, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;->onEventResultObtained(ILjava/util/List;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-object v2

    .line 477
    :cond_2
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;

    if-eqz p1, :cond_5

    .line 478
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->getErrorCode()I

    move-result v0

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v0, v3, :cond_5

    .line 479
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    if-eqz v0, :cond_4

    .line 481
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->getErrorCode()I

    move-result v1

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->TOO_MANY_REQUESTS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 482
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->getErrorCode()I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->getResultCode()I

    move-result v1

    :goto_1
    new-instance v3, Lcom/garena/pay/android/exception/GGException;

    .line 483
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/garena/pay/android/GGErrorCode;->getErrorFromCode(I)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    .line 480
    invoke-interface {v0, v1, v2, v3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;->onEventResultObtained(ILjava/util/List;Ljava/lang/Exception;)V

    :cond_4
    return-object v2

    :cond_5
    if-nez p1, :cond_7

    .line 487
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    if-eqz p1, :cond_6

    .line 488
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/Exception;

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    .line 489
    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-interface {p1, v0, v2, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;->onEventResultObtained(ILjava/util/List;Ljava/lang/Exception;)V

    :cond_6
    return-object v2

    .line 493
    :cond_7
    iget-object v0, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->events:Ljava/util/List;

    .line 494
    iget-object v3, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->response:Ljava/lang/String;

    .line 495
    iget-object v4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$version:Ljava/lang/String;

    iget-object v5, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 496
    iget-object v4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PreferenceHelper;

    move-result-object v4

    const-string v5, "KEY_EVENT_CONFIG_VERSION"

    iget-object v6, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->version:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/beetalk/sdk/cache/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PreferenceHelper;

    move-result-object v4

    iget-object p1, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->version:Ljava/lang/String;

    invoke-virtual {v4, p1, v3}, Lcom/beetalk/sdk/cache/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 499
    :cond_8
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PreferenceHelper;

    move-result-object v0

    iget-object p1, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->version:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, p1, v3}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-static {v3}, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;

    move-result-object p1

    iget-object v0, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->events:Ljava/util/List;

    .line 502
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "response = "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_b

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 507
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beetalk/sdk/networking/model/LessIsMoreEvent;

    .line 508
    iget-boolean v5, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$activeOnly:Z

    if-eqz v5, :cond_a

    .line 509
    iget-wide v5, v1, Lcom/beetalk/sdk/networking/model/LessIsMoreEvent;->end_time:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_9

    iget-wide v5, v1, Lcom/beetalk/sdk/networking/model/LessIsMoreEvent;->start_time:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_a

    goto :goto_3

    .line 512
    :cond_a
    iget-object v5, v1, Lcom/beetalk/sdk/networking/model/LessIsMoreEvent;->configs:Ljava/util/List;

    if-eqz v5, :cond_9

    .line 513
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 517
    :cond_b
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    if-eqz v0, :cond_c

    .line 518
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Ljava/lang/Exception;

    sget-object v4, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    .line 519
    invoke-virtual {v4}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-interface {v0, v1, p1, v3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;->onEventResultObtained(ILjava/util/List;Ljava/lang/Exception;)V

    :cond_c
    return-object v2
.end method
