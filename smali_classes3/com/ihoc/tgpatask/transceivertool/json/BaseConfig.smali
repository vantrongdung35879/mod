.class public Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;
.super Ljava/lang/Object;
.source "BaseConfig.java"


# instance fields
.field private cosDefaultDomain:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private ldns:Z

.field private ldnsDomain:Ljava/lang/String;

.field private qcloudAppid:Ljava/lang/String;

.field private tdmPackage:Ljava/lang/String;

.field private v6Host:Ljava/lang/String;

.field private whiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "com.tdatamaster.tdm.TDataMaster"

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->tdmPackage:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->whiteList:Ljava/util/ArrayList;

    .line 24
    const-string v0, "mustfilled"

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->ldnsDomain:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->cosDefaultDomain:Ljava/lang/String;

    .line 34
    const-string v0, "1258280349"

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->qcloudAppid:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->QCLOUD_URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->cosDefaultDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkDetectValidByWhiteList(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_0

    .line 91
    :cond_3
    const-string v4, "*."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 92
    const-string v4, "*"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 96
    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_5
    return v0
.end method

.method public getCosDefaultDomain()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->cosDefaultDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getLdnsDomain()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->ldnsDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->host:Ljava/lang/String;

    return-object v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->ldnsDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getLdnsSwitch()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->ldns:Z

    return v0
.end method

.method public getQcloudAppid()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->qcloudAppid:Ljava/lang/String;

    return-object v0
.end method

.method public getTdmPackage()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->tdmPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getV6Host()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->v6Host:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->host:Ljava/lang/String;

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->v6Host:Ljava/lang/String;

    return-object v0
.end method

.method public parseJson(Ljava/lang/String;)V
    .locals 13

    .line 40
    const-string v0, "model"

    const-string/jumbo v1, "whitelist"

    const-string v2, "ldnsDomain"

    const-string v3, "cosDefaultDomain"

    const-string v4, "qcloudAppid"

    const-string/jumbo v5, "tdmPackage"

    const-string/jumbo v6, "v6Host"

    const-string v7, "ldns"

    const-string v8, "host"

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "http://"

    const-string v11, "https://"

    const-string v12, ""

    if-eqz p1, :cond_0

    .line 42
    :try_start_1
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->host:Ljava/lang/String;

    .line 44
    :cond_0
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->ldns:Z

    .line 47
    :cond_1
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->v6Host:Ljava/lang/String;

    .line 50
    :cond_2
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 51
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->tdmPackage:Ljava/lang/String;

    .line 53
    :cond_3
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 54
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->qcloudAppid:Ljava/lang/String;

    .line 56
    :cond_4
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 57
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->cosDefaultDomain:Ljava/lang/String;

    .line 59
    :cond_5
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 60
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->ldnsDomain:Ljava/lang/String;

    .line 62
    :cond_6
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 63
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 64
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 66
    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_7
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 70
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->getInstance()Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ihoc/tgpatask/transceivertool/report/ReportBase;->setModel(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 74
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[BaseConfig.parseJson]\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2

    .line 106
    const-string v0, "https://"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/BaseConfig;->host:Ljava/lang/String;

    return-void
.end method
