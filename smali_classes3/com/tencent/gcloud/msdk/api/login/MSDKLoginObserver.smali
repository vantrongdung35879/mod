.class public interface abstract Lcom/tencent/gcloud/msdk/api/login/MSDKLoginObserver;
.super Ljava/lang/Object;
.source "MSDKLoginObserver.java"


# virtual methods
.method public abstract onBaseRetNotify(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseRet"
        }
    .end annotation
.end method

.method public abstract onLoginRetNotify(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginRet"
        }
    .end annotation
.end method
