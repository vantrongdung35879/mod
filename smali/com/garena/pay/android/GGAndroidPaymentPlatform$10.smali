.class Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"

# interfaces
.implements Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGRedeem(Landroid/content/Context;Lcom/garena/pay/android/data/GGRedeemRequest;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

.field final synthetic val$rebateId:J

.field final synthetic val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;JLcom/beetalk/sdk/cache/RedeemCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 929
    iput-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    iput-wide p2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$rebateId:J

    iput-object p4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultObtained(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 932
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "redeem response: %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    invoke-static {p1}, Lcom/garena/pay/android/helper/NetworkUtils;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 935
    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getErrorCode(Lorg/json/JSONObject;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 936
    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    if-eq v1, v3, :cond_0

    .line 937
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, v2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    return-void

    .line 941
    :cond_0
    const-string v1, "error_not_available"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    .line 942
    iget-wide v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$rebateId:J

    cmp-long p1, v0, v3

    if-gtz p1, :cond_1

    .line 943
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/RedeemCache;->setRedeemTime()V

    .line 945
    :cond_1
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->REDEEM_NOT_AVAILABLE:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, v2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    goto :goto_0

    .line 946
    :cond_2
    const-string v1, "error_already_redeemed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 947
    iget-wide v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$rebateId:J

    cmp-long p1, v0, v3

    if-gtz p1, :cond_3

    .line 948
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/RedeemCache;->setRedeemTime()V

    .line 950
    :cond_3
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ALREADY_REDEEMED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, v2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    goto :goto_0

    .line 952
    :cond_4
    invoke-static {v0}, Lcom/garena/pay/android/helper/NetworkUtils;->parseRedeemResult(Lorg/json/JSONObject;)Lcom/garena/pay/android/data/GGRedeemResponse;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 953
    iget v0, p1, Lcom/garena/pay/android/data/GGRedeemResponse;->result:I

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 954
    iget-wide v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$rebateId:J

    cmp-long v2, v0, v3

    if-gtz v2, :cond_5

    .line 955
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/RedeemCache;->setRedeemTime()V

    .line 957
    :cond_5
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    goto :goto_0

    .line 959
    :cond_6
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, v2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    .line 960
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/RedeemCache;->clearRedeemCache()V

    :goto_0
    return-void
.end method
