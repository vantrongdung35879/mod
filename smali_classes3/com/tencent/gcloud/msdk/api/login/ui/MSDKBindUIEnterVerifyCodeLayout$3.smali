.class Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$3;
.super Ljava/lang/Object;
.source "MSDKBindUIEnterVerifyCodeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;-><init>(Landroid/app/Activity;Landroid/view/ViewStub;ILjava/lang/String;Ljava/util/Locale;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$3;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 162
    const-string p1, "resend verify code button clicked"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 163
    sget-object p1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->MSDK_BIND_UI_LANG_TYPE_PARAM:Ljava/lang/String;

    const-string v0, "en_US"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$3;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->access$200(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    const-string v7, ""

    const-string v1, "Passport"

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static/range {v1 .. v7}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Account;->requestVerifyCode(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$3;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->access$500(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->getInstance()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->cancelTimer()V

    .line 167
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$3;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->getInstance()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->access$602(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    .line 168
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$3;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->access$600(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->startTimer()V

    :cond_0
    return-void
.end method
