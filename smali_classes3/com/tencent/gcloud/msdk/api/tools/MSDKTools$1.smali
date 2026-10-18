.class Lcom/tencent/gcloud/msdk/api/tools/MSDKTools$1;
.super Ljava/lang/Object;
.source "MSDKTools.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/api/tools/MSDKTools;->requestRecoverGuest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToolsRetNotify(Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toolsRet"
        }
    .end annotation

    .line 110
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->retCode:I

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->link:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "on find guset request call back:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 114
    :try_start_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    .line 116
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    .line 117
    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "guest"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found guest file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/tencent/gcloud/msdk/tools/FileUtils;->readParcelFile(Landroid/app/Activity;Landroid/net/Uri;)[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 124
    array-length v6, v5

    if-lez v6, :cond_1

    .line 125
    invoke-static {v2, v5}, Lcom/tencent/gcloud/msdk/tools/IT;->getDecryptData(Ljava/lang/String;[B)[B

    move-result-object v5

    if-eqz v5, :cond_2

    .line 126
    array-length v6, v5

    const/16 v7, 0x24

    if-ne v6, v7, :cond_2

    .line 127
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt success:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read guest file failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 136
    const-string v1, "guestId"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v1, "authorizedUri"

    iget-object v2, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->link:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->extraJson:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/16 v0, 0x8

    .line 140
    iput v0, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->retCode:I

    .line 141
    const-string v0, "failed read or decrypt info"

    iput-object v0, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->retMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->retMsg:Ljava/lang/String;

    const/4 v1, -0x1

    .line 145
    iput v1, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->retCode:I

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_5
    :goto_2
    const/16 v0, 0x392

    .line 149
    iput v0, p1, Lcom/tencent/gcloud/msdk/api/tools/MSDKToolsRet;->methodNameID:I

    const/16 v0, 0x385

    .line 150
    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method
