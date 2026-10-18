.class Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$CheckPopupConfigCallback;
.super Ljava/lang/Object;
.source "MSDKPopupConfigManager.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/config/ICheckPopupConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckPopupConfigCallback"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$CheckPopupConfigCallback;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onFail(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;",
            ">;)V"
        }
    .end annotation

    .line 300
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    .line 301
    iget-object v1, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->RICH_TEXT:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->HTML:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->PLUGIN:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    if-ne v1, v2, :cond_0

    .line 304
    :cond_1
    iget-object v1, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->doGet(Landroid/net/Uri;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 305
    iget v2, v1, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->status:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 306
    iget-object v2, v1, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 307
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$CheckPopupConfigCallback;->context:Landroid/content/Context;

    iget-object v1, v1, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$CheckPopupConfigCallback;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->getPopupFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/itop/gcloud/msdk/popup/utils/FileUtils;->write(Ljava/lang/String;[B)Z

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$CheckPopupConfigCallback;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->checkLegality(Landroid/content/Context;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onSucc()V
    .locals 0

    return-void
.end method
