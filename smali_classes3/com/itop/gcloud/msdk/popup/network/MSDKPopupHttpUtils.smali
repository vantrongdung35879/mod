.class public Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;
.super Ljava/lang/Object;
.source "MSDKPopupHttpUtils.java"


# static fields
.field private static final maxTimes:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doGet(ILandroid/net/Uri;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;
    .locals 7

    .line 66
    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils;->doGet(Landroid/net/Uri;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;

    move-result-object v0

    .line 67
    iget v1, v0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->status:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->status:I

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->content:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->content:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v3, v5, v2

    .line 68
    const-string v2, "doGet(%d) failed, status: %d, msg: %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    if-lt p0, v4, :cond_1

    .line 73
    const-string p0, "doGet, The number of failures exceeds the limit!"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return-object v0

    :cond_1
    add-int/2addr p0, v1

    .line 77
    invoke-static {p0, p1}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->doGet(ILandroid/net/Uri;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static doGet(Landroid/net/Uri;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-static {v0, p0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->doGet(ILandroid/net/Uri;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method private static doPost(ILandroid/net/Uri;Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;
    .locals 7

    .line 88
    invoke-static {p1, p2}, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils;->doPost(Landroid/net/Uri;Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;

    move-result-object v0

    .line 89
    iget v1, v0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->status:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->status:I

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->content:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->content:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v3, v5, v2

    .line 90
    const-string v2, "doPost(%d) failed, status: %d, msg: %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    if-lt p0, v4, :cond_1

    .line 95
    const-string p0, "doPost, The number of failures exceeds the limit!"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return-object v0

    :cond_1
    add-int/2addr p0, v1

    .line 99
    invoke-static {p0, p1, p2}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->doPost(ILandroid/net/Uri;Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static doPost(Landroid/net/Uri;Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-static {v0, p0, p1}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->doPost(ILandroid/net/Uri;Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;

    move-result-object p0

    return-object p0
.end method

.method private static downloadFile(ILandroid/net/Uri;Ljava/io/File;)Z
    .locals 2

    .line 114
    invoke-static {p1, p2}, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils;->downloadFile(Landroid/net/Uri;Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    .line 116
    const-string p0, "downloadFile, The number of failures exceeds the limit!"

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/2addr p0, v1

    .line 120
    invoke-static {p0, p1, p2}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->downloadFile(ILandroid/net/Uri;Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static downloadFile(Landroid/net/Uri;Ljava/io/File;)Z
    .locals 1

    const/4 v0, 0x1

    .line 110
    invoke-static {v0, p0, p1}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->downloadFile(ILandroid/net/Uri;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static downloadFile(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->downloadFile(Landroid/net/Uri;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static getInfo()Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;
    .locals 6

    .line 28
    new-instance v0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;

    invoke-direct {v0}, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;-><init>()V

    .line 30
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->initStart()V

    .line 31
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->getInfo()Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->request(Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;Lcom/itop/gcloud/msdk/popup/network/bean/IJsonHandler;)I

    move-result v1

    .line 33
    iget-wide v2, v0, Lcom/itop/gcloud/msdk/popup/network/bean/PopupsInfoRet;->serverTime:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->initEnd(J)V

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static queryCondition(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;
    .locals 2

    .line 22
    new-instance v0, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;

    invoke-direct {v0}, Lcom/itop/gcloud/msdk/popup/network/bean/QueryConditionRet;-><init>()V

    .line 23
    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->queryCondition(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;)Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->request(Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;Lcom/itop/gcloud/msdk/popup/network/bean/IJsonHandler;)I

    move-result p0

    const/16 v1, 0xc8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static reportData(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/network/bean/ReportDataRet;
    .locals 1

    .line 38
    new-instance v0, Lcom/itop/gcloud/msdk/popup/network/bean/ReportDataRet;

    invoke-direct {v0}, Lcom/itop/gcloud/msdk/popup/network/bean/ReportDataRet;-><init>()V

    .line 39
    invoke-static {p0, p1}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;->reportData(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->request(Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;Lcom/itop/gcloud/msdk/popup/network/bean/IJsonHandler;)I

    move-result p0

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static request(Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;Lcom/itop/gcloud/msdk/popup/network/bean/IJsonHandler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/itop/gcloud/msdk/popup/network/bean/IJsonHandler;",
            ">(",
            "Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;",
            "TT;)I"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils$1;->$SwitchMap$com$itop$gcloud$msdk$popup$network$MSDKPopupUriUtils$RequestType:[I

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;->requestType:Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    invoke-virtual {v1}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;->uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;->postData:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->doPost(Landroid/net/Uri;Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;

    move-result-object p0

    goto :goto_0

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->doGet(Landroid/net/Uri;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;

    move-result-object p0

    .line 55
    :goto_0
    iget v0, p0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->status:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 56
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/itop/gcloud/msdk/popup/network/bean/IJsonHandler;->parse(Ljava/lang/String;)V

    .line 58
    :cond_2
    iget p0, p0, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->status:I

    return p0
.end method
