.class public abstract Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyPopupCallbackProxy;
.super Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupCallbackProxy;
.source "MSDKPolicyPopupCallbackProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/popup/MSDKPopupCallbackProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCancel()V
.end method

.method public onComplete(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "message"
        }
    .end annotation

    .line 13
    sget p2, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyPopupCallbackProxy;->ACTION_CANCEL:I

    if-ne p1, p2, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyPopupCallbackProxy;->onCancel()V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyPopupCallbackProxy;->onConfirm()V

    :goto_0
    return-void
.end method

.method public abstract onConfirm()V
.end method
