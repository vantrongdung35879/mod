.class final enum Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;
.super Ljava/lang/Enum;
.source "MSDKWebViewMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

.field public static final enum DefaultMode:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

.field public static final enum GCloudMode:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

.field public static final enum GameMode:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 6
    new-instance v0, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    const-string v1, "DefaultMode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;->DefaultMode:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    .line 7
    new-instance v1, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    const-string v3, "GameMode"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;->GameMode:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    .line 8
    new-instance v3, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    const-string v5, "GCloudMode"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;->GCloudMode:Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    const/4 v5, 0x3

    .line 5
    new-array v5, v5, [Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;->$VALUES:[Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;
    .locals 1

    .line 5
    const-class v0, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;
    .locals 1

    .line 5
    sget-object v0, Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;->$VALUES:[Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    invoke-virtual {v0}, [Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/gcloud/msdk/webview/MSDKWebViewModeType;

    return-object v0
.end method
