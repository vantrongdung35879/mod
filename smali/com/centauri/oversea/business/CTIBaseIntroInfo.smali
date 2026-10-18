.class public abstract Lcom/centauri/oversea/business/CTIBaseIntroInfo;
.super Ljava/lang/Object;
.source "CTIBaseIntroInfo.java"


# static fields
.field protected static final RET_ERR:I = -0x1

.field protected static final RET_OK:I


# instance fields
.field protected channel:Ljava/lang/String;

.field protected productIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->channel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->productIdMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public abstract getIntroInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/newapi/response/InfoCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected queryServerInfo(Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->productIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->channel:Ljava/lang/String;

    iget-object v2, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo;->productIdMap:Ljava/util/HashMap;

    new-instance v3, Lcom/centauri/oversea/business/CTIBaseIntroInfo$1;

    invoke-direct {v3, p0, p1}, Lcom/centauri/oversea/business/CTIBaseIntroInfo$1;-><init>(Lcom/centauri/oversea/business/CTIBaseIntroInfo;Lcom/centauri/oversea/newapi/response/ICTICallback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->introPriceReq(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 30
    const-string v1, "queryServerInfo productId is null !!!"

    invoke-interface {p1, v0, v1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    return-void
.end method
