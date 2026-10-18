.class public Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;
.super Ljava/lang/Object;
.source "NetTimeoutHelper.java"


# instance fields
.field public final DEFAULT_TIMEOUT:I

.field public alphaValues:[F

.field private volatile ipLossRate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile ipRtt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeOutMap:Ljava/util/HashMap;
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5208

    .line 20
    iput v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->DEFAULT_TIMEOUT:I

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->timeOutMap:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->ipRtt:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->ipLossRate:Ljava/util/HashMap;

    return-void
.end method

.method private adaptTimeout(Ljava/lang/String;I)I
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->alphaValues:[F

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->readnetworkTimeOutAlpha()V

    .line 150
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->alphaValues:[F

    if-nez v0, :cond_0

    return p2

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->ipRtt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->ipLossRate:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v0

    .line 159
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->alphaValues:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    mul-float v0, v0, v2

    float-to-double v2, v0

    const/4 v0, 0x1

    aget v0, v1, v0

    mul-float p1, p1, v0

    float-to-double v0, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sub-double v0, v4, v0

    mul-double v2, v2, v0

    div-double/2addr v2, v4

    double-to-int p1, v2

    .line 160
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    add-int/2addr p2, p1

    :cond_1
    return p2
.end method

.method private getDefaultConnectTimeout(Ljava/lang/String;)I
    .locals 2

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "4g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "3g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/16 p1, 0x2710

    packed-switch v1, :pswitch_data_0

    const/16 p1, 0x5208

    :pswitch_0
    return p1

    :pswitch_1
    const/16 p1, 0x4268

    return p1

    :sswitch_data_0
    .sparse-switch
        0x694 -> :sswitch_2
        0x6b3 -> :sswitch_1
        0x37af15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readnetworkTimeOutAlpha()V
    .locals 5

    .line 183
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    const-string v1, "CentauriUnipay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x2

    .line 185
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->alphaValues:[F

    .line 186
    const-string v3, "alpha_rtt"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v1, v2

    .line 187
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->alphaValues:[F

    const-string v2, "alpha_lostrate"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const/4 v2, 0x1

    aput v0, v1, v2

    return-void
.end method


# virtual methods
.method public getConnectTimeout(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x5208

    return p1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->timeOutMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->getFileConnectTimeout(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-direct {p0, p2, v0}, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->adaptTimeout(Ljava/lang/String;I)I

    move-result p2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adaptTimeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "before request"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->timeOutMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2

    .line 60
    :cond_2
    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->getDefaultConnectTimeout(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFileConnectTimeout(Ljava/lang/String;)I
    .locals 3

    const-string v0, "network_"

    .line 90
    :try_start_0
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/oversea/comm/CTISPTools;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    invoke-direct {p0, p1}, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->getDefaultConnectTimeout(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getIpLossRate(Ljava/lang/String;)I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->ipLossRate:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->ipLossRate:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getRtt(Ljava/lang/String;)I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->ipRtt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->ipRtt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public saveAlpha(FF)V
    .locals 3

    .line 138
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CentauriUnipay"

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    const-string v1, "alpha_rtt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 141
    const-string p1, "alpha_lostrate"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setConnectTimeout(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "network_"

    .line 71
    iget-object v1, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->timeOutMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :try_start_0
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/centauri/oversea/comm/CTISPTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setIpLossRate(Ljava/lang/String;I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->ipLossRate:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRTT(Ljava/lang/String;I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/NetTimeoutHelper;->ipRtt:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
