.class public interface abstract Lcom/tencent/gcloud/msdk/core/login/LoginNotifyInterface;
.super Ljava/lang/Object;
.source "LoginNotifyInterface.java"


# virtual methods
.method public abstract onAfterAutoLoginFailed(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "failedRet"
        }
    .end annotation
.end method

.method public abstract onAfterLoginSuccess(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation
.end method
