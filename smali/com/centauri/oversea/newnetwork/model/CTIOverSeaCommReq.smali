.class public Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
.super Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;
.source "CTIOverSeaCommReq.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "APOverSeaCommReq"


# instance fields
.field private amt:Ljava/lang/String;

.field private billno:Ljava/lang/String;

.field private buy_quantity:Ljava/lang/String;

.field private channelExtra:Ljava/lang/String;

.field private currency_type:Ljava/lang/String;

.field private infoType:Ljava/lang/String;

.field private isReProvide:Z

.field private num:Ljava/lang/String;

.field private payAmount:Ljava/lang/String;

.field private payCurrencyType:Ljava/lang/String;

.field private pay_method:Ljava/lang/String;

.field private provideParams:Lcom/centauri/oversea/data/CTIPayReceipt;

.field private receipt:Ljava/lang/String;

.field private receipt_openid:Ljava/lang/String;

.field private receipt_sign:Ljava/lang/String;

.field private service_code:Ljava/lang/String;

.field private userip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->infoType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->isReProvide:Z

    return-void
.end method


# virtual methods
.method protected constructParam()V
    .locals 7

    .line 177
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    if-nez v0, :cond_0

    .line 178
    const-string v0, "APOverSeaCommReq"

    const-string v1, "Request is null !!!"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->constructParam()V

    .line 183
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string v1, "openid"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->pf:Ljava/lang/String;

    const-string v2, "pf"

    invoke-virtual {p0, v2, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->pfKey:Ljava/lang/String;

    const-string v2, "pfkey"

    invoke-virtual {p0, v2, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    const-string/jumbo v2, "zoneid"

    invoke-virtual {p0, v2, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "format"

    const-string v2, "json"

    invoke-virtual {p0, v0, v2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "key_len"

    const-string v2, "newkey"

    invoke-virtual {p0, v0, v2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v3

    iget-object v3, v3, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    .line 189
    invoke-virtual {v0, v2, v3}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->readKeyTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_time"

    invoke-virtual {p0, v2, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getNetToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "session_token"

    invoke-virtual {p0, v2, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->goodsZoneID:Ljava/lang/String;

    const-string v2, "goods_zoneid"

    invoke-virtual {p0, v2, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    const-string v2, ""

    if-eqz v0, :cond_2

    .line 195
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/centauri/oversea/comm/GDPR;->getDeviceGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v3, "xg_mid"

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0, v3, v2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/centauri/oversea/comm/GDPR;->getDeviceGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_2
    :goto_0
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openKey:Ljava/lang/String;

    const-string v1, "openkey"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->sessionID:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->sessionType:Ljava/lang/String;

    const-string v1, "session_type"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "sdkversion"

    const-string v1, "androidoversea_v4.05.422a"

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->buy_quantity:Ljava/lang/String;

    const-string v1, "buy_quantity"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->infoType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v3, "type"

    if-nez v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->infoType:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->mType:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->drmInfo:Ljava/lang/String;

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 231
    const-string/jumbo v0, "version=3.0"

    goto :goto_2

    .line 233
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&version=3.0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_2
    const-string v3, "drm_info"

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->currency_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 239
    const-string v0, "currency_type"

    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->currency_type:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_6
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->country:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 243
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->country:Ljava/lang/String;

    const-string v3, "country"

    invoke-virtual {p0, v3, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_7
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->service_code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 247
    const-string v0, "service_code"

    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->service_code:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_8
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->userip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 251
    const-string/jumbo v0, "userip"

    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->userip:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_9
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->reserve:Ljava/lang/String;

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "_goods_zoneid="

    const-string v5, "&"

    if-nez v3, :cond_a

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/centauri/oversea/comm/CTITools;->getCentuarimds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->goodsZoneID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 258
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/centauri/oversea/comm/CTITools;->getCentuarimds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v3, v3, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->goodsZoneID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_3
    const-string v3, "Extend reserv"

    invoke-static {v3, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :try_start_0
    const-string v3, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v3, "extend"

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    :goto_4
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->pay_method:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 270
    const-string v0, "pay_method"

    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->pay_method:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_b
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->productID:Ljava/lang/String;

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 275
    const-string v3, "productid"

    invoke-virtual {p0, v3, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_c
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->amt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "amt"

    if-nez v0, :cond_d

    .line 279
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->amt:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    iget-object v4, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->payAmount:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 285
    const-string v4, "gw_amt="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->payAmount:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_e
    iget-object v4, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->payCurrencyType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 290
    const-string v4, "gw_currency="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->payCurrencyType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_f
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v4

    iget-object v4, v4, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    const-string v6, "dev"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 295
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v4

    iget-object v4, v4, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    const-string/jumbo v6, "test"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 296
    :cond_10
    const-string v4, "sandbox=true&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_11
    iget-object v4, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->pay_method:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "os_doku"

    iget-object v6, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->pay_method:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 301
    const-string v4, "from=doku_sdk&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_12
    iget-object v4, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->channelExtra:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 306
    iget-object v4, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->channelExtra:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_13
    iget-object v4, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v4, v4, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->extra:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string/jumbo v5, "wf_info"

    if-eqz v4, :cond_14

    .line 312
    invoke-virtual {p0, v5, v2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 314
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/centauri/oversea/comm/CTITools;->urlEncode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_5
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->cmd:Ljava/lang/String;

    const-string v4, "order"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 320
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->mType:Ljava/lang/String;

    .line 321
    const-string/jumbo v4, "unimonth"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-object v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->mType:Ljava/lang/String;

    .line 322
    const-string v4, "month"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 323
    :cond_15
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    iget-boolean v0, v0, Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;->isAutoPay:Z

    if-eqz v0, :cond_16

    const-string v0, "2"

    goto :goto_6

    :cond_16
    const-string v0, "0"

    :goto_6
    const-string v4, "producttype"

    invoke-virtual {p0, v4, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_17
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->cmd:Ljava/lang/String;

    const-string v4, "provide"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 331
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->provideParams:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v0, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_amt:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->provideParams:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v3, v3, Lcom/centauri/oversea/data/CTIPayReceipt;->first_currency_type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->provideParams:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v3, v3, Lcom/centauri/oversea/data/CTIPayReceipt;->second_currency_type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "locale"

    invoke-virtual {p0, v3, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{\"country_code\":\""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"currency_code\":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"lang_code\":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    const-string v3, "device_locale"

    invoke-virtual {p0, v3, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->billno:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 340
    const-string v0, "billno"

    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->billno:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_18
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->receipt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 343
    const-string v0, "receipt"

    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->receipt:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_19
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->receipt_openid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 346
    const-string v0, "receipt_openid"

    iget-object v3, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->receipt_openid:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_1a
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->num:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->receipt_sign:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 350
    const-string v0, "receipt_sign"

    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->receipt_sign:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->receipt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/centauri/oversea/comm/CTIMD5;->toMd5([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sig"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_1b
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 355
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v1, "receipt_offer_id"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_1c
    iget-boolean v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->isReProvide:Z

    const-string v1, "action"

    if-eqz v0, :cond_1d

    .line 360
    const-string v0, "reprovide"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 362
    :cond_1d
    invoke-virtual {p0, v1, v4}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_1e
    :goto_7
    sget-boolean v0, Lcom/centauri/oversea/comm/GDPR;->ifCollect:Z

    if-eqz v0, :cond_20

    .line 368
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 369
    invoke-static {v0}, Lcom/centauri/oversea/comm/GDPR;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string/jumbo v4, "wifi_ssid"

    if-eqz v3, :cond_1f

    .line 371
    invoke-virtual {p0, v4, v2}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 373
    :cond_1f
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_8
    const-string v1, "device_guid"

    invoke-static {v0}, Lcom/centauri/oversea/comm/GDPR;->getDeviceGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "device_type"

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "device_name"

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v0, "device"

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "device_product"

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string/jumbo v0, "sys_version"

    invoke-static {}, Lcom/centauri/oversea/comm/GDPR;->getSysVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->NetTimeout()Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->getRtt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtt"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->NetTimeout()Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->getIpLossRate(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loss_rate"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->addHttpEncodeParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getChannelExtra()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->channelExtra:Ljava/lang/String;

    return-object v0
.end method

.method public setAmt(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->amt:Ljava/lang/String;

    return-object p0
.end method

.method public setBillNO(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->billno:Ljava/lang/String;

    return-object p0
.end method

.method public setBuyQuantity(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->buy_quantity:Ljava/lang/String;

    return-object p0
.end method

.method public setChannelExtra(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->channelExtra:Ljava/lang/String;

    return-object p0
.end method

.method public setCmd(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->cmd:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrencyType(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->currency_type:Ljava/lang/String;

    return-object p0
.end method

.method public setInfoType(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->infoType:Ljava/lang/String;

    return-object p0
.end method

.method public setIsReProvide(Z)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->isReProvide:Z

    return-object p0
.end method

.method public setNum(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->num:Ljava/lang/String;

    return-object p0
.end method

.method public setPayAmount(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->payAmount:Ljava/lang/String;

    return-object p0
.end method

.method public setPayCurrencyType(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->payCurrencyType:Ljava/lang/String;

    return-object p0
.end method

.method public setPayMethod(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->pay_method:Ljava/lang/String;

    return-object p0
.end method

.method public setProvideParams(Lcom/centauri/oversea/data/CTIPayReceipt;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->provideParams:Lcom/centauri/oversea/data/CTIPayReceipt;

    return-object p0
.end method

.method public setReceipt(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->receipt:Ljava/lang/String;

    return-object p0
.end method

.method public setReceiptOpenID(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->receipt_openid:Ljava/lang/String;

    return-object p0
.end method

.method public setReceiptSign(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->receipt_sign:Ljava/lang/String;

    return-object p0
.end method

.method public setRequest(Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->request:Lcom/centauri/oversea/newnetwork/http/NetworkReqParams;

    return-object p0
.end method

.method public setServiceCode(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->service_code:Ljava/lang/String;

    return-object p0
.end method

.method public setUp()Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->initUrl()V

    .line 170
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->constructParam()V

    .line 171
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->ifChangeKey()Z

    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIOverSeaCommReq;->userip:Ljava/lang/String;

    return-object p0
.end method
