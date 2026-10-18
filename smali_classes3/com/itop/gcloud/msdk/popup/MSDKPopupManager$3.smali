.class Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$3;
.super Ljava/lang/Object;
.source "MSDKPopupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->show(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$3;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 133
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->getInstance()Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/itop/gcloud/msdk/popup/base/MSDKDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method
