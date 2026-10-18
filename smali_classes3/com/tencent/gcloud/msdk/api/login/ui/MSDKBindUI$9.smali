.class Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;
.super Ljava/lang/Object;
.source "MSDKBindUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->initBindUIView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 369
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1400(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/lang/String;

    move-result-object p1

    .line 370
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$000(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1402(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1400(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1, v1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1502(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;Z)Z

    goto :goto_0

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1, v2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1502(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;Z)Z

    .line 377
    :goto_0
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1400(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKLoginUIUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 379
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 382
    :try_start_0
    const-string v0, "accountType"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 383
    const-string v0, "account"

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1400(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 385
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 387
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "Passport"

    invoke-static {v1, p1, v0}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Login;->canBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 389
    :cond_1
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$100(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1600(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/util/Locale;

    move-result-object v0

    sget v1, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_please_enter_valid_email:I

    invoke-static {p1, v0, v1}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    .line 390
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1700(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1700(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
