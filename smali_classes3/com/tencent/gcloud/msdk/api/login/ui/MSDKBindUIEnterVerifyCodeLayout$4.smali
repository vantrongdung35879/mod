.class Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$4;
.super Ljava/lang/Object;
.source "MSDKBindUIEnterVerifyCodeLayout.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;


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

    .line 174
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$4;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerFinish()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$4;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->access$500(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$4;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->access$700(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$4;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->access$800(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Ljava/util/Locale;

    move-result-object v1

    sget v2, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_resend:I

    invoke-static {v0, v1, v2}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$4;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->access$500(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$4;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->access$602(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    return-void
.end method

.method public onTimerTick(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$4;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->access$500(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$4;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->access$500(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
