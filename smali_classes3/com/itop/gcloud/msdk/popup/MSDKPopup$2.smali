.class final Lcom/itop/gcloud/msdk/popup/MSDKPopup$2;
.super Ljava/lang/Object;
.source "MSDKPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/MSDKPopup;->showDialogs(Landroid/app/Activity;ILcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

.field final synthetic val$sceneConfigs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup$2;->val$sceneConfigs:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup$2;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 218
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/MSDKPopup;->access$000()Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup$2;->val$sceneConfigs:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopup$2;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->show(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;Z)V

    return-void
.end method
