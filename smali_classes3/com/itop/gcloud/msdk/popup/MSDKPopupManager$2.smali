.class Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$2;
.super Ljava/lang/Object;
.source "MSDKPopupManager.java"

# interfaces
.implements Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;


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

.field final synthetic val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

.field final synthetic val$configLen:I

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;IILcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$2;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    iput p2, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$2;->val$finalI:I

    iput p3, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$2;->val$configLen:I

    iput-object p4, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$2;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V
    .locals 3

    .line 118
    invoke-virtual {p1}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string v2, "action = %s, message = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    .line 119
    iget v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$2;->val$finalI:I

    iget v2, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$2;->val$configLen:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$2;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$300(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$2;->val$callback:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;

    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v0, p1, p2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;->onComplete(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
