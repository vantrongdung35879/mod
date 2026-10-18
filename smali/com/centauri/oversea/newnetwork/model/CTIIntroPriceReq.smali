.class public Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;
.super Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;
.source "CTIIntroPriceReq.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "APIntroPriceReq"


# instance fields
.field private _channel:Ljava/lang/String;

.field private _pList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->_pList:Ljava/util/List;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->_channel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected constructParam()V
    .locals 3

    .line 47
    const-string v0, "cmd"

    const-string v1, "query_user_eligibility"

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "query_type"

    const-string v1, "all"

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "channel"

    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->_channel:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const-string v1, "offer_id"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    const-string v1, "openid"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openKey:Ljava/lang/String;

    const-string v1, "openkey"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->pf:Ljava/lang/String;

    const-string v1, "pf"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->pfKey:Ljava/lang/String;

    const-string v1, "pfkey"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->sessionID:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->sessionType:Ljava/lang/String;

    const-string v1, "session_type"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "encrypt_msg"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "msg_len"

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->_pList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->_pList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "productid"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected initUrl()V
    .locals 3

    .line 22
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    .line 23
    const-string v1, "release"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/cgi-bin/iap_query.fcg"

    const-string v2, "https"

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0, v2, v1}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->setCentauriHttpURL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->setCentauriHttpURL(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setChannel(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->_channel:Ljava/lang/String;

    return-object p0
.end method

.method public setQueryProductList(Ljava/util/List;)Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->_pList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public setUp()Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->initUrl()V

    .line 76
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIIntroPriceReq;->constructParam()V

    return-object p0
.end method
