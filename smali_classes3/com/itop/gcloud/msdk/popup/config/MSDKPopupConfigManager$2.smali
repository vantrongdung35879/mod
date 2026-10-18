.class Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$2;
.super Ljava/lang/Object;
.source "MSDKPopupConfigManager.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$OnUpdateEncryptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->loadConfigSetFromFile(Ljava/io/File;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;Ljava/io/File;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$2;->this$0:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    iput-object p2, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate([B)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$2;->this$0:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;->access$100(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->encrypt(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfigManager$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/itop/gcloud/msdk/popup/utils/FileUtils;->write(Ljava/lang/String;[B)Z

    return-void
.end method
