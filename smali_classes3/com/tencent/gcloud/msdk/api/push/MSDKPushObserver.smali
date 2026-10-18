.class public interface abstract Lcom/tencent/gcloud/msdk/api/push/MSDKPushObserver;
.super Ljava/lang/Object;
.source "MSDKPushObserver.java"


# virtual methods
.method public abstract onPushOptNotify(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseRet"
        }
    .end annotation
.end method

.method public abstract onPushRetNotify(Lcom/tencent/gcloud/msdk/api/push/MSDKPushRet;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pushRet"
        }
    .end annotation
.end method
