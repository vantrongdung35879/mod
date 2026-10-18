.class public Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;
.super Ljava/lang/Object;
.source "PopupsInfoRet.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/network/bean/IJsonHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet$Key;
    }
.end annotation


# instance fields
.field public code:I

.field public message:Ljava/lang/String;

.field public popupsStr:Ljava/lang/String;

.field public serverTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 3

    .line 25
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    const-string p1, "code"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;->code:I

    .line 27
    const-string p1, "message"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;->message:Ljava/lang/String;

    .line 28
    const-string p1, "server_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;->serverTime:J

    .line 29
    const-string p1, "popups"

    const-string v1, "[]"

    invoke-static {v0, p1, v1}, Lcom/itop/gcloud/msdk/popup/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;->popupsStr:Ljava/lang/String;
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
    .locals 4

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    :try_start_0
    const-string v1, "code"

    iget v2, p0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;->code:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string v1, "message"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "server_time"

    iget-wide v2, p0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;->serverTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    const-string v1, "popups"

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;->popupsStr:Ljava/lang/String;

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
