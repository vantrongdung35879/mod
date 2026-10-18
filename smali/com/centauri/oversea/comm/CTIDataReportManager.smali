.class public Lcom/centauri/oversea/comm/CTIDataReportManager;
.super Ljava/lang/Object;
.source "CTIDataReportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;,
        Lcom/centauri/oversea/comm/CTIDataReportManager$InstanceHolder;
    }
.end annotation


# static fields
.field private static final GROUP_SIZE:I = 0xc

.field public static final NETWORK_REQUEST:Ljava/lang/String; = "sdk.oversea.centauri.networkrequest"

.field public static final PHONE_DEVICE:Ljava/lang/String; = "sdk.oversea.deviceinfo"

.field public static final SDK_CALL_GW20_SDK_CALL:Ljava/lang/String; = "sdk.oversea.call.gw20.sdk.call"

.field public static final SDK_CALL_GW20_SDK_RESPONSE:Ljava/lang/String; = "sdk.oversea.call.gw20.sdk.response"

.field public static final SDK_CALL_GW_SDK_API_VERSION:Ljava/lang/String; = "sdk.oversea.call.gw.api.version"

.field public static final SDK_CALL_GW_SDK_CALL:Ljava/lang/String; = "sdk.oversea.call.gw.sdk.call"

.field public static final SDK_CALL_GW_SDK_INNER_ERROR:Ljava/lang/String; = "sdk.oversea.call.gw.inner.error"

.field public static final SDK_CALL_GW_SDK_RESPONSE:Ljava/lang/String; = "sdk.oversea.call.gw.sdk.response"

.field public static final SDK_CENTAURI_API_CALL:Ljava/lang/String; = "sdk.centauri.api.call"

.field public static final SDK_CENTAURI_API_RESPONSE:Ljava/lang/String; = "sdk.centauri.api.resp"

.field public static final SDK_COMM_NET_TIME:Ljava/lang/String; = "sdk.comm.net.time"

.field public static final SDK_CRASH_RESTORE:Ljava/lang/String; = "sdk.oversea.cash.restore"

.field public static final SDK_FIELD_BILLNO:Ljava/lang/String; = "billno"

.field public static final SDK_FIELD_PRODUCTID:Ljava/lang/String; = "productid"

.field public static final SDK_NETWORK_CALL_RESPONSE:Ljava/lang/String; = "sdk.oversea.network.call.response"

.field public static final SDK_OVERSEA_BOKU_BACK:Ljava/lang/String; = "sdk.oversea.boku.back"

.field public static final SDK_OVERSEA_BOKU_CANCEL:Ljava/lang/String; = "sdk.oversea.boku.cancel"

.field public static final SDK_OVERSEA_BOKU_SHOW:Ljava/lang/String; = "sdk.oversea.boku.show"

.field public static final SDK_OVERSEA_CHANNEL_PAYRESULT:Ljava/lang/String; = "sdk.oversea.channel.payresult"

.field public static final SDK_OVERSEA_CHANNEL_SHOW:Ljava/lang/String; = "sdk.oversea.channel.show"

.field public static final SDK_OVERSEA_COUNTRY_SELECT:Ljava/lang/String; = "sdk.oversea.country.select"

.field public static final SDK_OVERSEA_COUNTRY_SHOW:Ljava/lang/String; = "sdk.oversea.country.show"

.field public static final SDK_OVERSEA_ENTER:Ljava/lang/String; = "sdk.oversea.enter"

.field public static final SDK_OVERSEA_EXIT:Ljava/lang/String; = "sdk.oversea.exit"

.field public static final SDK_OVERSEA_GW_CONSUME_RESULT:Ljava/lang/String; = "sdk.oversea.gw.consume.result"

.field public static final SDK_OVERSEA_GW_REPROVIDE_TIME_CONSUME:Ljava/lang/String; = "sdk.reprovide.oversea.gw.time.consume"

.field public static final SDK_OVERSEA_GW_REPROVIDE_TIME_CONSUME_20:Ljava/lang/String; = "sdk.reprovide.oversea.gw.time.20.consume"

.field public static final SDK_OVERSEA_GW_RESULT:Ljava/lang/String; = "sdk.oversea.gw.result"

.field public static final SDK_OVERSEA_GW_RESULT_20:Ljava/lang/String; = "sdk.oversea.gw.20.result"

.field public static final SDK_OVERSEA_GW_TIME:Ljava/lang/String; = "sdk.oversea.gw.time"

.field public static final SDK_OVERSEA_GW_TIME_20:Ljava/lang/String; = "sdk.oversea.gw.20.time"

.field public static final SDK_OVERSEA_IPDETECT_CONNECT_TIME:Ljava/lang/String; = "sdk.oversea.ip.detect.ip.time"

.field public static final SDK_OVERSEA_IPDETECT_DNS_RESULT:Ljava/lang/String; = "sdk.oversea.ip.detect.dns.result"

.field public static final SDK_OVERSEA_IPDETECT_ERROR:Ljava/lang/String; = "sdk.oversea.ip.detect.error"

.field public static final SDK_OVERSEA_MAIN_BACK:Ljava/lang/String; = "sdk.oversea.main.back"

.field public static final SDK_OVERSEA_MAIN_SHOW:Ljava/lang/String; = "sdk.oversea.main.show"

.field public static final SDK_OVERSEA_REPROVIDE_INFO:Ljava/lang/String; = "sdk.oversea.reprovide.info"

.field public static final SDK_OVERSEA_SYSTEM_LANGUAGE:Ljava/lang/String; = "sdk.oversea.sys.lang"

.field public static final SDK_RESTORE:Ljava/lang/String; = "sdk.oversea.restore"

.field public static final SDK_WEBVIEW_END:Ljava/lang/String; = "sdk.webview.end"

.field public static final SDK_WEBVIEW_ERROR:Ljava/lang/String; = "sdk.webview.err"

.field public static final SDK_WEBVIEW_LOAD:Ljava/lang/String; = "sdk.webview.onfinish"

.field public static final TAG:Ljava/lang/String; = "APDataReportManager"


# instance fields
.field private dataCount:I

.field private reportData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->reportData:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->dataCount:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->reportData:Ljava/util/ArrayList;

    .line 88
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/centauri/oversea/comm/CTIDataReportManager;->loadDataId(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/centauri/oversea/comm/CTIDataReportManager$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/centauri/oversea/comm/CTIDataReportManager;-><init>()V

    return-void
.end method

.method private getDataId()I
    .locals 2

    .line 115
    iget v0, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->dataCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->dataCount:I

    const/16 v1, 0x7530

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->dataCount:I

    .line 119
    :cond_0
    iget v0, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->dataCount:I

    return v0
.end method

.method public static instance()Lcom/centauri/oversea/comm/CTIDataReportManager;
    .locals 1

    .line 98
    sget-object v0, Lcom/centauri/oversea/comm/CTIDataReportManager$InstanceHolder;->instance:Lcom/centauri/oversea/comm/CTIDataReportManager;

    return-object v0
.end method

.method private loadDataId(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 104
    const-string v0, "dataCount"

    invoke-static {p1, v0}, Lcom/centauri/oversea/comm/CTISPTools;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->dataCount:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getLogRecord(Ljava/util/ArrayList;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 150
    iget-object v1, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->reportData:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 157
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->reportData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    iget-object v2, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->reportData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    iget-object v2, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->reportData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 161
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 162
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 163
    rem-int/lit8 v3, v2, 0xc

    if-nez v3, :cond_1

    .line 164
    div-int/lit8 v3, v2, 0xc

    goto :goto_0

    :cond_1
    div-int/lit8 v3, v2, 0xc

    add-int/lit8 v3, v3, 0x1

    .line 166
    :goto_0
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v4

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sGD.openID="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|3="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object v7, v4, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|7=0|13="

    .line 171
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {p0}, Lcom/centauri/oversea/comm/CTIDataReportManager;->getDataId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|24="

    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|26="

    .line 174
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/centauri/oversea/comm/GlobalData;->pf:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|29="

    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/centauri/oversea/comm/GlobalData;->getNetToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|31=androidoversea_v4.05.422a|37="

    .line 176
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v7, v4, Lcom/centauri/oversea/comm/GlobalData;->sessionID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|43="

    .line 178
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/centauri/oversea/comm/GlobalData;->sessionType:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v4, "&"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    const/16 v10, 0xc

    if-ge v8, v10, :cond_5

    mul-int/lit8 v10, v7, 0xc

    add-int/2addr v10, v8

    if-lt v10, v2, :cond_2

    goto/16 :goto_4

    .line 189
    :cond_2
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;

    if-eqz v10, :cond_4

    .line 191
    const-string v11, "record"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v11, v10, Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;->extend:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x3

    const-string/jumbo v13, "|8="

    if-nez v11, :cond_3

    .line 194
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;->extend:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "&currency="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/centauri/oversea/comm/GlobalData;->getCurrencyInGw()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v12}, Lcom/centauri/oversea/comm/CTITools;->urlEncode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 196
    :cond_3
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "currency="

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/centauri/oversea/comm/GlobalData;->getCurrencyInGw()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v12}, Lcom/centauri/oversea/comm/CTITools;->urlEncode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :goto_3
    const-string/jumbo v11, "|21="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v10, Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;->format:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v11, "|38="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;->times:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 206
    :cond_5
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 207
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 211
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "num="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "report Content="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_7
    return v3

    :cond_8
    :goto_5
    return v0
.end method

.method public declared-synchronized insertData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "extend===="

    const-string v1, "format===="

    monitor-enter p0

    .line 130
    :try_start_0
    const-string v2, "APDataReportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "APDataReportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;

    invoke-direct {v0}, Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;-><init>()V

    .line 135
    iput-object p1, v0, Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;->format:Ljava/lang/String;

    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 137
    iput-object p2, v0, Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;->extend:Ljava/lang/String;

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->reportData:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public saveDataId(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 110
    const-string v0, "dataCount"

    iget v1, p0, Lcom/centauri/oversea/comm/CTIDataReportManager;->dataCount:I

    invoke-static {p1, v0, v1}, Lcom/centauri/oversea/comm/CTISPTools;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
