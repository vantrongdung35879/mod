.class public Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;
.super Ljava/lang/Object;
.source "IcmpConfig.java"


# instance fields
.field private freq:I

.field private sendCount:I

.field private sendInterval:I

.field private soTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 13
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->soTimeout:I

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->sendCount:I

    const/16 v0, 0x32

    .line 15
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->sendInterval:I

    const/16 v0, 0x3e8

    .line 16
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->freq:I

    return-void
.end method


# virtual methods
.method public getFreq()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->freq:I

    return v0
.end method

.method public getSendCount()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->sendCount:I

    return v0
.end method

.method public getSendInterval()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->sendInterval:I

    return v0
.end method

.method public getSoTimeout()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->soTimeout:I

    return v0
.end method

.method public parseJson(Lorg/json/JSONObject;)Z
    .locals 5

    .line 20
    const-string v0, "freq"

    const-string v1, "sendInterval"

    const-string v2, "sendCount"

    const-string v3, "soTimeout"

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 21
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->soTimeout:I

    .line 24
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->sendCount:I

    .line 28
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->sendInterval:I

    .line 31
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ihoc/tgpatask/transceivertool/json/IcmpConfig;->freq:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 35
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[IcmpConfig.parseJson]\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
