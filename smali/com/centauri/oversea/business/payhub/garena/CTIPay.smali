.class public Lcom/centauri/oversea/business/payhub/garena/CTIPay;
.super Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;
.source "CTIPay.java"


# static fields
.field public static final PAYMENT_REQUEST_ID:I = 0x1232

.field private static final TAG:Ljava/lang/String; = "CTIPay"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mPayResponseCallback:Lcom/garena/pay/android/GGPayResponseCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;-><init>()V

    .line 45
    new-instance v0, Lcom/centauri/oversea/business/payhub/garena/CTIPay$1;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/payhub/garena/CTIPay$1;-><init>(Lcom/centauri/oversea/business/payhub/garena/CTIPay;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->mPayResponseCallback:Lcom/garena/pay/android/GGPayResponseCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/centauri/oversea/business/payhub/garena/CTIPay;IILjava/lang/Object;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void
.end method

.method private sendMesUIH(IILjava/lang/Object;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 269
    iput p1, v0, Landroid/os/Message;->what:I

    .line 270
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 271
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 273
    const-string p3, "msgErrCode"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 275
    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public static url2Map(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    const-string v0, "\\="

    const-string/jumbo v1, "url2Map"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 63
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    const-string v3, "\\&"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    .line 69
    const-string v4, ""

    move-object v5, v4

    const/4 v6, 0x0

    :goto_0
    :try_start_1
    array-length v7, p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ge v6, v7, :cond_2

    .line 74
    :try_start_2
    aget-object v7, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v4, v7, v3

    .line 75
    aget-object v7, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v5, v7, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    :catch_0
    :try_start_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 89
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const-string/jumbo p0, "url\u540e\u53c2\u6570\u4e3a\u7a7a"

    invoke-static {v1, p0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v2
.end method


# virtual methods
.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    .line 247
    sget-object v0, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Garena payHelper handleActivityResult requestCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1232

    if-ne p1, v0, :cond_0

    .line 251
    invoke-static {p3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->onActivityResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lcom/beetalk/sdk/GGPlatform;->handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected needOrder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pay(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 108
    const-string v3, "oneTimePromoPoints"

    const-string v4, "promo"

    const-string v5, "price"

    const-string v6, "iconurl"

    const-string v7, "description"

    const-string v8, "garena_channelid"

    const-string v0, "rebateId"

    const-string v9, "roleId"

    const-string v10, "serverId"

    const-string v11, "promopoints"

    .line 0
    const-string v12, "GarenaPay params oneTimePromoPoints = "

    const-string v13, "GarenaPay params promopoints = "

    const-string v14, "GarenaPay params price = "

    const-string v15, "GarenaPay params iconurl = "

    move-object/from16 p2, v12

    const-string v12, "GarenaPay params appPoints = "

    move-object/from16 v16, v13

    const-string v13, "GarenaPay params productid = "

    move-object/from16 v17, v14

    const-string v14, "GarenaPay params description"

    move-object/from16 v18, v15

    const-string v15, "country:"

    move-object/from16 v19, v12

    const-string v12, "language:"

    move-object/from16 v20, v13

    const-string v13, "rebateId:"

    move-object/from16 v21, v14

    const-string/jumbo v14, "virtual name:"

    move-object/from16 v22, v3

    const-string v3, "roleid:"

    move-object/from16 v23, v11

    const-string v11, "serverId:"

    move-object/from16 v24, v4

    const-string v4, "extras:"

    move-object/from16 v25, v5

    const-string v5, "appid = "

    move-object/from16 v26, v6

    const-string v6, "GGPlatform.getAppId() = "

    .line 108
    iput-object v2, v1, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->mActivity:Landroid/app/Activity;

    .line 110
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->checkSessionValidity()Z

    move-result v27

    const-string/jumbo v2, "unipay_pay_error_tip"

    if-nez v27, :cond_0

    .line 111
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xbda

    invoke-direct {v1, v2, v2, v0}, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v27, v2

    .line 117
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v28, v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v29, v8

    const/16 v8, 0x80

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 119
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 120
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v7

    .line 121
    sget-object v8, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->TAG:Ljava/lang/String;

    move-object/from16 v30, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v30, v15

    .line 123
    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "CENTAURI.APP_SDK_ASSIGN_ID"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    :goto_0
    sget-object v6, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v5, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    invoke-direct {v5}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;-><init>()V

    .line 128
    invoke-virtual {v5, v7}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setAppId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    .line 129
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v7

    invoke-virtual {v7}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setBuyerId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    .line 130
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v7

    invoke-virtual {v7}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setToken(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    .line 131
    iget-object v7, v1, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v7}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getExtra()Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    move-result-object v7

    invoke-virtual {v7}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object v7

    .line 132
    invoke-static {v7}, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->url2Map(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 133
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setServerId(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setRoleId(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setPlatform(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    .line 140
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "CENTAURI.VIRTUAL_CURRENCY_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v3, -0x1

    .line 144
    :try_start_1
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 145
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 148
    :try_start_2
    sget-object v6, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-wide v6, v3

    .line 152
    :goto_1
    sget-object v0, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v9, "local"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 157
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v11, "TW"

    const-string/jumbo v13, "zh"

    if-eqz v10, :cond_3

    goto :goto_4

    .line 161
    :cond_3
    :try_start_3
    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 162
    array-length v10, v9

    const/4 v14, 0x2

    if-ne v10, v14, :cond_6

    const/4 v10, 0x0

    .line 163
    aget-object v10, v9, v10

    .line 164
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_2

    :cond_4
    move-object v13, v10

    .line 167
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 168
    aget-object v9, v9, v10

    .line 169
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    move-object v11, v9

    .line 172
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v10, v30

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 174
    :cond_6
    const-string v9, "local info is error"

    invoke-static {v0, v9}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_4
    new-instance v9, Ljava/util/Locale;

    invoke-direct {v9, v13, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setLocale(Ljava/util/Locale;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    .line 180
    invoke-virtual {v5, v2}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setVirtualCurrencyName(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    cmp-long v2, v6, v3

    if-eqz v2, :cond_7

    .line 182
    invoke-virtual {v5, v6, v7}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setRebateId(J)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    :cond_7
    move-object/from16 v2, v29

    .line 186
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 187
    const-string v3, "GarenaPay"

    const-string v4, "channelid settled"

    invoke-static {v3, v4}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v3, "false"

    move-object/from16 v4, v28

    .line 190
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v7, ""

    if-eqz v6, :cond_8

    .line 191
    :try_start_4
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v4, v7

    :goto_5
    move-object/from16 v6, v26

    .line 193
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 194
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_6

    :cond_9
    move-object v6, v7

    :goto_6
    move-object/from16 v9, v25

    .line 196
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 197
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :cond_a
    move-object/from16 v9, v24

    .line 199
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 200
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_b
    move-object/from16 v9, v23

    .line 202
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v11, "0"

    if-eqz v10, :cond_c

    .line 203
    :try_start_5
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_7

    :cond_c
    move-object v10, v11

    .line 205
    :goto_7
    const-string v12, "appPoints"

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 206
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_8

    :cond_d
    move-object v9, v11

    :goto_8
    move-object/from16 v12, v22

    .line 208
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 209
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 216
    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v13, v21

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v13, v20

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v13}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object v13

    invoke-virtual {v13}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getProductID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v13, v19

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v13, v18

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v13, v17

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v13, v16

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v13, p2

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/garena/pay/android/data/GGPayment$Denomination;

    iget-object v12, v1, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    .line 224
    invoke-virtual {v12}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object v12

    invoke-virtual {v12}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getProductID()Ljava/lang/String;

    move-result-object v30

    .line 225
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const-string/jumbo v9, "true"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 226
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v35

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v28, v0

    move-object/from16 v29, v4

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    invoke-direct/range {v28 .. v36}, Lcom/garena/pay/android/data/GGPayment$Denomination;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    .line 228
    invoke-virtual {v5}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->build()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v3

    iget-object v4, v1, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->mPayResponseCallback:Lcom/garena/pay/android/GGPayResponseCallback;

    .line 229
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v7, 0x1232

    move-object/from16 v8, v27

    move-object/from16 v2, p1

    move-object v5, v0

    .line 228
    :try_start_6
    invoke-static/range {v2 .. v7}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->processPaymentWithChannelItem(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;Lcom/garena/pay/android/data/GGPayment$Denomination;Ljava/lang/String;I)V

    goto :goto_9

    :cond_f
    move-object/from16 v8, v27

    .line 232
    invoke-virtual {v5}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->build()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v0

    iget-object v2, v1, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->mPayResponseCallback:Lcom/garena/pay/android/GGPayResponseCallback;

    const/16 v3, 0x1232

    move-object/from16 v4, p1

    invoke-static {v4, v0, v2, v3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->processPayment(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_9
    return-void

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v8, v27

    .line 236
    :goto_a
    sget-object v2, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GRN Pay Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xbd7

    invoke-direct {v1, v2, v2, v0}, Lcom/centauri/oversea/business/payhub/garena/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void
.end method
