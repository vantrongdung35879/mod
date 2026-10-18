.class public Lcom/tencent/gcloud/msdk/webview/MSDKWebViewMode;
.super Ljava/lang/Object;
.source "MSDKWebViewMode.java"


# static fields
.field public static final GCloudFlag:Ljava/lang/String; = "GCloudMode"

.field public static final GameFlag:Ljava/lang/String; = "GameMode"

.field private static type:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget-object v0, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;->DefaultMode:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    sput-object v0, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewMode;->type:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetWebViewMode()Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;
    .locals 1

    .line 22
    sget-object v0, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewMode;->type:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    return-object v0
.end method

.method public static SetWebViewMode(Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;)V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set MSDK WebView mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 18
    sput-object p0, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewMode;->type:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    return-void
.end method
