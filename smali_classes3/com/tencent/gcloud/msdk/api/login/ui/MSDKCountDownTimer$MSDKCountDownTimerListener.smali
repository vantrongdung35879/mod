.class public interface abstract Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;
.super Ljava/lang/Object;
.source "MSDKCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MSDKCountDownTimerListener"
.end annotation


# virtual methods
.method public abstract onTimerFinish()V
.end method

.method public abstract onTimerTick(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation
.end method
