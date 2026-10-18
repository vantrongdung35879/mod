.class public Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;
.super Lcom/centauri/http/centaurihttp/CTIHttpAns;
.source "CTIOverSeaCommAns.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "APOverSeaCommAns"


# instance fields
.field private billno:Ljava/lang/String;

.field private currency_amt:Ljava/lang/String;

.field private currency_type:Ljava/lang/String;

.field private info:Lorg/json/JSONObject;

.field private infoMsg:Ljava/lang/String;

.field private mallMpInfo:Ljava/lang/String;

.field private num:Ljava/lang/String;

.field private offer_name:Ljava/lang/String;

.field private order_info:Ljava/lang/String;

.field private product_name:Ljava/lang/String;

.field private provideSdkRet:Ljava/lang/String;

.field private verifyRes:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    .line 41
    const-string p1, ""

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->verifyRes:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->infoMsg:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->mallMpInfo:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->provideSdkRet:Ljava/lang/String;

    return-void
.end method

.method private analyseGetKey(Lorg/json/JSONObject;)V
    .locals 7

    .line 174
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    const-string v0, "ret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    const-string v0, "key_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v1, "key_info_len"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->getBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/http/centaurikey/CTIToolAES;->doDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {p1}, Lcom/centauri/oversea/comm/CTITools;->kv2Map(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 189
    const-string v0, "key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 190
    const-string v0, "cryptkey"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 191
    const-string v0, "cryptkeytime"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getCentauriHttpRequest()Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOpenIDFromRequest()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getCentauriHttpRequest()Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getOfferIDFromRequest()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->saveKeyInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    const-string p1, "APOverSeaCommAns"

    const-string v0, "get_key retCode is not equals zero."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private analyseInfo(Lorg/json/JSONObject;)V
    .locals 3

    .line 203
    const-string v0, "session_token"

    const-string v1, "mp_info"

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 208
    :cond_0
    :try_start_0
    const-string v2, "ret"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultCode:I

    .line 209
    iget v2, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultCode:I

    if-nez v2, :cond_4

    .line 211
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    invoke-static {}, Lcom/centauri/oversea/TestConfig;->getCurTestMpInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/centauri/oversea/TestConfig;->getCurTestMpInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 218
    :goto_0
    const-string v2, "buycurrency"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->mallMpInfo:Ljava/lang/String;

    .line 224
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/centauri/oversea/comm/GlobalData;->setNetToken(Ljava/lang/String;)V

    .line 228
    :cond_3
    const-string v0, "rsp_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->infoMsg:Ljava/lang/String;

    goto :goto_1

    .line 232
    :cond_4
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultMsg:Ljava/lang/String;

    .line 233
    const-string v0, "complete_err_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->setMsgErrCode(Ljava/lang/String;)V

    .line 234
    const-string v0, "err_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "unipay_pay_busy"

    invoke-static {v1, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method private analyseOrder(Lorg/json/JSONObject;)V
    .locals 5

    .line 254
    const-string v0, "ret"

    .line 0
    const-string v1, "name=order&result="

    .line 254
    const-string v2, "sdk.oversea.network.call.response"

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 259
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&info="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultCode:I

    .line 263
    iget v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultCode:I

    if-nez v0, :cond_1

    .line 265
    const-string v0, "rsp_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->orderHandleMsg(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 268
    :cond_1
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultMsg:Ljava/lang/String;

    .line 269
    const-string v0, "complete_err_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->setMsgErrCode(Ljava/lang/String;)V

    .line 270
    const-string v0, "err_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 271
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "unipay_pay_busy"

    invoke-static {v1, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultMsg:Ljava/lang/String;

    goto :goto_1

    .line 255
    :cond_2
    :goto_0
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object p1

    const-string v0, "name=order&result=null"

    invoke-virtual {p1, v2, v0}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private analyseProvider(Lorg/json/JSONObject;)V
    .locals 5

    .line 287
    const-string v0, "ret"

    .line 0
    const-string v1, "name=provide&result="

    .line 287
    const-string v2, "sdk.oversea.network.call.response"

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 292
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&info="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultCode:I

    .line 297
    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->parseProvideRspMsg(Lorg/json/JSONObject;)V

    .line 301
    iget v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultCode:I

    if-eqz v0, :cond_2

    .line 302
    const-string v0, "complete_err_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->setMsgErrCode(Ljava/lang/String;)V

    .line 303
    const-string v0, "err_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultMsg:Ljava/lang/String;

    .line 306
    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "unipay_pay_busy"

    invoke-static {v1, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultMsg:Ljava/lang/String;

    goto :goto_1

    .line 288
    :cond_1
    :goto_0
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object p1

    const-string v0, "name=provide&result=null"

    invoke-virtual {p1, v2, v0}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "analyseProvider Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APOverSeaCommAns"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string p1, ""

    return-object p1

    .line 165
    :cond_0
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getCentauriHttpRequest()Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object p1

    check-cast p1, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;

    invoke-virtual {p1}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->getDecodeKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/http/centaurikey/CTIToolAES;->doDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private orderHandleMsg(Lorg/json/JSONObject;)V
    .locals 11

    .line 338
    const-string/jumbo v0, "user_name"

    const-string v1, "offer_name"

    const-string v2, "product_name"

    const-string v3, "num"

    const-string v4, "currency_type"

    const-string v5, "currency_amt"

    const-string v6, "info"

    const-string v7, "billno"

    const-string v8, "order_info"

    .line 0
    const-string v9, "orderHandleMsg info:"

    .line 338
    :try_start_0
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 339
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->order_info:Ljava/lang/String;

    .line 342
    :cond_0
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 343
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->billno:Ljava/lang/String;

    .line 346
    :cond_1
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 347
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->info:Lorg/json/JSONObject;

    .line 349
    const-string v6, "APOverSeaCommAns"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->info:Lorg/json/JSONObject;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/centauri/oversea/comm/GlobalData;->setUserName(Ljava/lang/String;)V

    .line 351
    iget-object v6, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->info:Lorg/json/JSONObject;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 352
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v6

    iget-object v7, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->info:Lorg/json/JSONObject;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/centauri/oversea/comm/GlobalData;->setUserName(Ljava/lang/String;)V

    .line 356
    :cond_2
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->currency_amt:Ljava/lang/String;

    .line 360
    :cond_3
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->currency_type:Ljava/lang/String;

    .line 364
    :cond_4
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 365
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->num:Ljava/lang/String;

    .line 368
    :cond_5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 369
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/centauri/oversea/comm/CTITools;->urlDecode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->product_name:Ljava/lang/String;

    .line 372
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 373
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/centauri/oversea/comm/CTITools;->urlDecode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->offer_name:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 377
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method

.method private parseProvideRspMsg(Lorg/json/JSONObject;)V
    .locals 5

    .line 384
    const-string v0, "sdk_ret"

    const-string/jumbo v1, "verify_res"

    .line 0
    const-string v2, "parseProvideRspMsg: "

    .line 384
    :try_start_0
    const-string v3, "rsp_msg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 385
    const-string v3, "APOverSeaCommAns"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->verifyRes:Ljava/lang/String;

    .line 391
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 392
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->provideSdkRet:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private progressJson(Ljava/lang/String;)V
    .locals 8

    .line 134
    const-string v0, "provide"

    const-string v1, "order"

    const-string v2, "info"

    const-string v3, "get_key"

    .line 0
    const-string v4, "CMD: "

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->getCentauriHttpRequest()Lcom/centauri/http/centaurihttp/CTIHttpRequest;

    move-result-object v5

    const-string v6, "overseas_cmd"

    invoke-virtual {v5, v6}, Lcom/centauri/http/centaurihttp/CTIHttpRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    const-string v6, "APOverSeaCommAns"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", resultData: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->analyseGetKey(Lorg/json/JSONObject;)V

    .line 143
    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->analyseInfo(Lorg/json/JSONObject;)V

    .line 147
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->analyseOrder(Lorg/json/JSONObject;)V

    .line 151
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 152
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->analyseProvider(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setMsgErrCode(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->msgErrorCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->currency_amt:Ljava/lang/String;

    return-object v0
.end method

.method public getBillno()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->billno:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentType()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->currency_type:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lorg/json/JSONObject;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->info:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getInfoMsg()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->infoMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getMallMpInfo()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->mallMpInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->num:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->offer_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderInfo()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->order_info:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->product_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvideSdkRet()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->provideSdkRet:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyRes()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->verifyRes:Ljava/lang/String;

    return-object v0
.end method

.method protected handleFailure(Lcom/centauri/http/core/Response;)Z
    .locals 1

    .line 120
    const-string p1, "APOverSeaCommAns"

    const-string v0, "handleFailure(..): request failed."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected handleStop(Lcom/centauri/http/core/Response;)Z
    .locals 1

    .line 127
    const-string p1, "APOverSeaCommAns"

    const-string v0, "handleStop(..): request stop."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected handleSuccess(Lcom/centauri/http/core/Response;)Z
    .locals 0

    .line 113
    iget-object p1, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->progressJson(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setResultCode(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultCode:I

    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommAns;->resultMsg:Ljava/lang/String;

    return-void
.end method
