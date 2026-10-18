.class Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$1;
.super Ljava/lang/Object;
.source "MSDKPopupConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->startUpdateConfigSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->access$000(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;->get()Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;

    move-result-object v0

    check-cast v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    if-eqz v0, :cond_3

    .line 67
    iget-object v1, v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;->popupConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    .line 70
    invoke-virtual {v2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    sget-object v4, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->HTML:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isAssetsConfig()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    iget-object v3, v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->doGet(Landroid/net/Uri;)Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 72
    iget v4, v3, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->status:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 73
    iget-object v4, v3, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-static {v4}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->access$100(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v3, v3, Lcom/itop/gcloud/msdk/popup/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-static {v4}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->access$100(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->getPopupFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/itop/gcloud/msdk/popup/utils/FileUtils;->write(Ljava/lang/String;[B)Z

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-static {v3}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->access$100(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->checkLegality(Landroid/content/Context;)Z

    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->access$000(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;->set(Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;)V

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->access$200(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 86
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->access$000(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKModelHolder;->set(Lcom/itop/gcloud/msdk/popup/base/MSDKCloneable;)V

    :cond_4
    return-void
.end method
