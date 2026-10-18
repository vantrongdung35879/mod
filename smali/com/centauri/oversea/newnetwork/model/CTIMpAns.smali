.class public Lcom/centauri/oversea/newnetwork/model/CTIMpAns;
.super Lcom/centauri/http/centaurihttp/CTIHttpAns;
.source "CTIMpAns.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "APMpAns"


# instance fields
.field private beginTime:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private firstsave_present_count:Ljava/lang/String;

.field private mGoodsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/centauri/oversea/data/CTIProductItem;",
            ">;"
        }
    .end annotation
.end field

.field private mpJson:Ljava/lang/String;

.field private mpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mpPresentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mpValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/centauri/http/centaurihttp/CTIHttpAns;-><init>(Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    .line 27
    const-string p1, ""

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->rate:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->firstsave_present_count:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->beginTime:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->endTime:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpJson:Ljava/lang/String;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpValueList:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpPresentList:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpList:Ljava/util/List;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mGoodsList:Ljava/util/List;

    return-void
.end method

.method private progressJson(Ljava/lang/String;)V
    .locals 5

    .line 62
    const-string v0, "product_list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resultData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APMpAns"

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpJson:Ljava/lang/String;

    .line 66
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->resultData:Ljava/lang/String;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    const-string v1, "ret"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->resultCode:I

    .line 69
    iget v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->resultCode:I

    if-nez v1, :cond_1

    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mGoodsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 77
    new-instance v3, Lcom/centauri/oversea/data/CTIProductItem;

    invoke-direct {v3}, Lcom/centauri/oversea/data/CTIProductItem;-><init>()V

    .line 78
    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/centauri/oversea/data/CTIProductItem;->name:Ljava/lang/String;

    .line 79
    const-string v4, "productid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/centauri/oversea/data/CTIProductItem;->productId:Ljava/lang/String;

    .line 80
    const-string v4, "price"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/centauri/oversea/data/CTIProductItem;->price:Ljava/lang/String;

    .line 81
    const-string v4, "num"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/centauri/oversea/data/CTIProductItem;->num:Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mGoodsList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    const-string v0, "rate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->rate:Ljava/lang/String;

    .line 88
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/centauri/oversea/comm/CTICommMethod;->transformStrToList(Ljava/lang/String;Ljava/util/List;)V

    .line 91
    const-string v0, "firstsave_present_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->firstsave_present_count:Ljava/lang/String;

    .line 92
    const-string v0, "present_level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpValueList:Ljava/util/List;

    iget-object v2, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpPresentList:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->transformStrToMpInfoList(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 95
    const-string v0, "begin_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->beginTime:Ljava/lang/String;

    .line 96
    const-string v0, "end_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->endTime:Ljava/lang/String;

    goto :goto_1

    .line 98
    :cond_1
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->resultMsg:Ljava/lang/String;

    .line 99
    const-string v0, "err_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
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

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->resultMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getBeginTime()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->beginTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstsave_present_count()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->firstsave_present_count:Ljava/lang/String;

    return-object v0
.end method

.method public getMpJson()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpJson:Ljava/lang/String;

    return-object v0
.end method

.method public getMpList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpList:Ljava/util/List;

    return-object v0
.end method

.method public getMpPresentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpPresentList:Ljava/util/List;

    return-object v0
.end method

.method public getMpValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpValueList:Ljava/util/List;

    return-object v0
.end method

.method public getProductList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/centauri/oversea/data/CTIProductItem;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mGoodsList:Ljava/util/List;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->rate:Ljava/lang/String;

    return-object v0
.end method

.method protected handleFailure(Lcom/centauri/http/core/Response;)Z
    .locals 1

    .line 57
    const-string p1, "APMpAns"

    const-string v0, "handleFailure(..): request failed."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected handleStop(Lcom/centauri/http/core/Response;)Z
    .locals 1

    .line 51
    const-string p1, "APMpAns"

    const-string v0, "handleFailure(..): request stop."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected handleSuccess(Lcom/centauri/http/core/Response;)Z
    .locals 0

    .line 45
    iget-object p1, p1, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->progressJson(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setBeginTime(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->beginTime:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setFirstsave_present_count(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->firstsave_present_count:Ljava/lang/String;

    return-void
.end method

.method public setMpList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpList:Ljava/util/List;

    return-void
.end method

.method public setMpPresentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpPresentList:Ljava/util/List;

    return-void
.end method

.method public setMpValueList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->mpValueList:Ljava/util/List;

    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIMpAns;->rate:Ljava/lang/String;

    return-void
.end method
