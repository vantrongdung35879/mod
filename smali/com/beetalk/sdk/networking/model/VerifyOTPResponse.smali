.class public final Lcom/beetalk/sdk/networking/model/VerifyOTPResponse;
.super Lcom/beetalk/sdk/networking/model/BaseResp;
.source "VerifyOTPResponse.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/BaseResp;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/VerifyOTPResponse;
    .locals 1

    .line 28
    new-instance v0, Lcom/beetalk/sdk/networking/model/VerifyOTPResponse;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/model/VerifyOTPResponse;-><init>()V

    .line 29
    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/model/VerifyOTPResponse;->populateStatusCode(Lorg/json/JSONObject;)V

    return-object v0
.end method
