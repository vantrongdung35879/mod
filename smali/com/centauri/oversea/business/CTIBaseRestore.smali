.class public abstract Lcom/centauri/oversea/business/CTIBaseRestore;
.super Ljava/lang/Object;
.source "CTIBaseRestore.java"


# static fields
.field protected static final DEFAULT_RET_MSG:Ljava/lang/String; = ""

.field private static final SUB_OVERDUE_TIME:I = 0x5265c00

.field private static final TAG:Ljava/lang/String; = "APBaseRestore"


# instance fields
.field private consumeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private curIndex:I

.field protected forbiddenPrompts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected isNeedVerifyRes:Z

.field protected mChannel:Ljava/lang/String;

.field private mReProvideObserver:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

.field private outCallback:Lcom/centauri/oversea/newapi/response/ICTICallback;

.field private provideList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/centauri/oversea/data/CTIPayReceipt;",
            ">;"
        }
    .end annotation
.end field

.field protected provideSdkRetMap:Ljava/util/HashMap;
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->curIndex:I

    .line 44
    iput-boolean v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->isNeedVerifyRes:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->consumeList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->forbiddenPrompts:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideSdkRetMap:Ljava/util/HashMap;

    .line 189
    new-instance v0, Lcom/centauri/oversea/business/CTIBaseRestore$4;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/CTIBaseRestore$4;-><init>(Lcom/centauri/oversea/business/CTIBaseRestore;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->mReProvideObserver:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/oversea/business/CTIBaseRestore;Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->startReProvide(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/centauri/oversea/business/CTIBaseRestore;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/centauri/oversea/business/CTIBaseRestore;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->subPurchaseFilter(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/centauri/oversea/business/CTIBaseRestore;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->reProvide(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/centauri/oversea/business/CTIBaseRestore;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->curIndex:I

    return p0
.end method

.method static synthetic access$408(Lcom/centauri/oversea/business/CTIBaseRestore;)I
    .locals 2

    .line 35
    iget v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->curIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->curIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/centauri/oversea/business/CTIBaseRestore;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->saveProvideSdkRet(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->consumeList:Ljava/util/List;

    return-object p0
.end method

.method private postProvide(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 160
    new-instance v0, Lcom/centauri/oversea/business/CTIBaseRestore$3;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/CTIBaseRestore$3;-><init>(Lcom/centauri/oversea/business/CTIBaseRestore;)V

    invoke-virtual {p0, p1, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->postProvide(Ljava/util/List;Lcom/centauri/oversea/newapi/response/ICTICallback;)V

    return-void
.end method

.method private reProvide(Z)V
    .locals 12

    .line 121
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideList:Ljava/util/List;

    const-string v1, "curIndex = "

    const-string v2, "APBaseRestore"

    if-nez v0, :cond_0

    const/4 p1, -0x1

    .line 122
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->callbackOut(ILjava/lang/String;)V

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->curIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " provideList is null "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v0, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->payChannel:Ljava/lang/String;

    const-string v3, "os_garena"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 129
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->postProvide(Ljava/util/List;)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 133
    iget p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->curIndex:I

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto :goto_0

    .line 138
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->curIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " provideList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " productid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideList:Ljava/util/List;

    iget v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->curIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v0, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->sku:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideList:Ljava/util/List;

    iget v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->curIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Lcom/centauri/oversea/data/CTIPayReceipt;

    .line 143
    new-instance p1, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    invoke-direct {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->build()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object v9

    .line 144
    invoke-static {}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->singleton()Lcom/centauri/oversea/newnetwork/http/NetworkManager;

    move-result-object v0

    iget-object v3, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->mChannel:Ljava/lang/String;

    iget-object v6, v10, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    iget-object v8, v10, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt_sig:Ljava/lang/String;

    iget-object v11, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->mReProvideObserver:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    const/4 v1, 0x1

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v11}, Lcom/centauri/oversea/newnetwork/http/NetworkManager;->provide(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/data/CTIPayReceipt;Lcom/centauri/http/centaurihttp/ICTIHttpCallback;)V

    return-void

    .line 134
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->consumeList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->postProvide(Ljava/util/List;)V

    return-void
.end method

.method private saveProvideSdkRet(Ljava/lang/String;)V
    .locals 4

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    iget v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->curIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideList:Ljava/util/List;

    iget v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->curIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v0, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->sku:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveProvideSdkRet,key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "APBaseRestore"

    invoke-static {v3, v2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->provideSdkRetMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startReProvide(Landroid/content/Context;)V
    .locals 2

    .line 73
    const-string v0, "1"

    sget-object v1, Lcom/centauri/oversea/comm/GlobalData;->subscribeClearCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "CentauriUnipay_pp"

    invoke-static {v0}, Lcom/centauri/oversea/comm/CTISPTools;->clear(Ljava/lang/String;)V

    .line 76
    :cond_0
    new-instance v0, Lcom/centauri/oversea/business/CTIBaseRestore$2;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/CTIBaseRestore$2;-><init>(Lcom/centauri/oversea/business/CTIBaseRestore;)V

    invoke-virtual {p0, p1, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->getPurchaseList(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;)V

    return-void
.end method

.method private subPurchaseFilter(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/centauri/oversea/data/CTIPayReceipt;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/centauri/oversea/data/CTIPayReceipt;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/centauri/oversea/data/CTIPayReceipt;

    .line 112
    iget-object v2, v1, Lcom/centauri/oversea/data/CTIPayReceipt;->orderId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/centauri/oversea/comm/CTIMD5;->toMd5([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CentauriUnipay_pp"

    invoke-static {v3, v2}, Lcom/centauri/oversea/comm/CTISPTools;->getLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public callbackOut(ILjava/lang/String;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->outCallback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0, p1, p2}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/CTIBaseRestore;->dispose()V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->outCallback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    .line 270
    iput-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->mReProvideObserver:Lcom/centauri/http/centaurihttp/ICTIHttpCallback;

    return-void
.end method

.method public abstract getPurchaseList(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;)V
.end method

.method public abstract init(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/ICallback;)V
.end method

.method public abstract postProvide(Ljava/util/List;Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/centauri/oversea/newapi/response/ICTICallback;",
            ")V"
        }
    .end annotation
.end method

.method public restore(Landroid/content/Context;Ljava/lang/String;Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    .locals 0

    .line 52
    iput-object p2, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->mChannel:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->outCallback:Lcom/centauri/oversea/newapi/response/ICTICallback;

    const/4 p2, 0x0

    .line 54
    iput p2, p0, Lcom/centauri/oversea/business/CTIBaseRestore;->curIndex:I

    .line 56
    new-instance p2, Lcom/centauri/oversea/business/CTIBaseRestore$1;

    invoke-direct {p2, p0, p1}, Lcom/centauri/oversea/business/CTIBaseRestore$1;-><init>(Lcom/centauri/oversea/business/CTIBaseRestore;Landroid/content/Context;)V

    invoke-virtual {p0, p1, p2}, Lcom/centauri/oversea/business/CTIBaseRestore;->init(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/ICallback;)V

    return-void
.end method
