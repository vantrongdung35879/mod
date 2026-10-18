.class Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$1;
.super Landroid/os/CountDownTimer;
.source "MSDKCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "millisInFuture",
            "countDownInterval"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$1;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 61
    const-string v0, "############ onFinish, "

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 62
    sget v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->STOP:I

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->access$002(I)I

    .line 63
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->access$200()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->access$200()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;->onTimerFinish()V

    :cond_0
    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->access$302(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    return-void
.end method

.method public onTick(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "############ onTick, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 52
    sget v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->RUNNING:I

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->access$002(I)I

    .line 53
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$1;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v2, v1

    invoke-static {v0, v2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->access$102(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;I)I

    .line 54
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->access$200()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->access$200()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;->onTimerTick(J)V

    :cond_0
    return-void
.end method
