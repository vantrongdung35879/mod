.class Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$8;
.super Ljava/lang/Object;
.source "MSDKPopupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->handleAction(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

.field final synthetic val$config:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$8;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    iput-object p2, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$8;->val$config:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    iput-object p3, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$8;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$8;->val$config:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$8;->val$data:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;->reportData(Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/network/bean/ReportDataRet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/network/bean/ReportDataRet;->stringify()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 530
    const-string v0, "handleWebViewMessage, reportDataRet = %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
