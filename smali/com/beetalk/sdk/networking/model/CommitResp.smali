.class public Lcom/beetalk/sdk/networking/model/CommitResp;
.super Lcom/beetalk/sdk/networking/model/BaseResp;
.source "CommitResp.java"


# instance fields
.field private appPointAmount:I

.field private currentCommitTxnId:Ljava/lang/String;

.field private isFreeItem:Z

.field private itemIconUrl:Ljava/lang/String;

.field private itemName:Ljava/lang/String;

.field private rebateCardId:J

.field private remainingDays:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/BaseResp;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->itemName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->itemIconUrl:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->rebateCardId:J

    .line 18
    iput-object v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->currentCommitTxnId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->remainingDays:I

    .line 20
    iput v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->appPointAmount:I

    .line 21
    iput-boolean v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->isFreeItem:Z

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/CommitResp;
    .locals 5

    .line 25
    new-instance v0, Lcom/beetalk/sdk/networking/model/CommitResp;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/model/CommitResp;-><init>()V

    if-nez p0, :cond_0

    .line 27
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->errorCode:I

    .line 28
    sget-object p0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->resultCode:I

    return-object v0

    .line 31
    :cond_0
    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/model/CommitResp;->parseErrorCode(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->errorCode:I

    .line 32
    iget v1, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->errorCode:I

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 35
    sget-object p0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->resultCode:I

    return-object v0

    .line 40
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/networking/model/CommitResp;->parseResultCode(Lorg/json/JSONObject;)I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->resultCode:I

    .line 49
    const-string p0, "item_name"

    const-string v2, ""

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->itemName:Ljava/lang/String;

    .line 50
    const-string p0, "item_icon"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->itemIconUrl:Ljava/lang/String;

    .line 51
    const-string/jumbo p0, "txn_id"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->currentCommitTxnId:Ljava/lang/String;

    .line 52
    const-string p0, "app_point_amount"

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->appPointAmount:I

    .line 53
    const-string p0, "is_free_item"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->isFreeItem:Z

    .line 55
    const-string p0, "rebate_card"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 57
    const-string v1, "rebate_card_id"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->rebateCardId:J

    .line 58
    const-string v1, "remaining_days"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->remainingDays:I

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 42
    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 43
    sget-object p0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/CommitResp;->resultCode:I

    return-object v0
.end method


# virtual methods
.method public getAppPointAmount()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->appPointAmount:I

    return v0
.end method

.method public getCurrentCommitTxnId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->currentCommitTxnId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemIconUrl()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->itemIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 68
    iget v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->resultCode:I

    invoke-static {v0}, Lcom/beetalk/sdk/networking/ResultCode;->getMessageFromCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRebateCardId()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->rebateCardId:J

    return-wide v0
.end method

.method public getRemainingDays()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->remainingDays:I

    return v0
.end method

.method public isError()Z
    .locals 2

    .line 64
    iget v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->resultCode:I

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->SUCCESS:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFreeItem()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/beetalk/sdk/networking/model/CommitResp;->isFreeItem:Z

    return v0
.end method
