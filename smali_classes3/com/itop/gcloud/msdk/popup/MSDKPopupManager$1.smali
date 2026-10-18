.class Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;
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

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$configs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    iput-object p2, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->val$configs:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$002(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;)Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;

    .line 75
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-static {v0, v1}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$102(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    .line 76
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-static {v0, v1}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$202(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;)Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->val$configs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;

    .line 80
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->getInstance()Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    move-result-object v2

    .line 81
    invoke-virtual {v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->validPlatform:Ljava/lang/String;

    iget v2, v2, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->channelID:I

    .line 82
    invoke-static {v3, v2}, Lcom/itop/gcloud/msdk/popup/utils/CommonUtils;->checkValidPlatform(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->sceneType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;->DEFAULT:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$SceneType;

    if-ne v2, v3, :cond_1

    .line 84
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$200(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    new-instance v2, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;

    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;-><init>(Landroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$202(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;)Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;

    goto :goto_0

    .line 88
    :cond_1
    sget-object v2, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$9;->$SwitchMap$com$itop$gcloud$msdk$popup$config$MSDKPopupConfig$ContentType:[I

    iget-object v1, v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;->contentType:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    invoke-virtual {v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$100(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    new-instance v2, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;-><init>(Landroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$102(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    goto :goto_0

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$000(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;)Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->this$0:Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;

    new-instance v2, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;

    iget-object v3, p0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;-><init>(Landroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;->access$002(Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;)Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MSDKPopupManager.show init layout error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
