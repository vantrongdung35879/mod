.class public Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;
.super Ljava/lang/Object;
.source "QueryConditionRet.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/network/bean/IJsonHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet$Key;
    }
.end annotation


# instance fields
.field public code:I

.field public extra:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public needPopup:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->message:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->extra:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 3

    .line 25
    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    const-string p1, "code"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->code:I

    .line 27
    const-string p1, "need_popup"

    invoke-static {v1, p1, v2}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->needPopup:I

    .line 28
    const-string p1, "message"

    invoke-static {v1, p1, v0}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->message:Ljava/lang/String;

    .line 29
    const-string p1, "extra"

    invoke-static {v1, p1, v0}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->extra:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stringify()Ljava/lang/String;
    .locals 3

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    :try_start_0
    const-string v1, "code"

    iget v2, p0, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->code:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string v1, "need_popup"

    iget v2, p0, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->needPopup:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v1, "message"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "extra"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 45
    :catch_0
    const-string/jumbo v0, "{}"

    return-object v0
.end method
