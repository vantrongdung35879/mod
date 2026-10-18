.class public interface abstract Lcom/tencent/gcloud/msdk/core/webview/WebViewInterface;
.super Ljava/lang/Object;
.source "WebViewInterface.java"


# static fields
.field public static final KEY_OBSERVER_ID:Ljava/lang/String; = "MSDK_KEY_OBSERVER_ID"

.field public static final KEY_SEQ_ID:Ljava/lang/String; = "MSDK_KEY_SEQ_ID"


# virtual methods
.method public abstract callJS(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonJsPara"
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract onShareCallback(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonPara"
        }
    .end annotation
.end method

.method public abstract openUrl(Lcom/tencent/gcloud/msdk/api/webview/MSDKWebViewReqInfo;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "wbInfo",
            "seqID",
            "observerId"
        }
    .end annotation
.end method
