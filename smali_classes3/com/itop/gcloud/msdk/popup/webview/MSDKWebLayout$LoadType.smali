.class final enum Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;
.super Ljava/lang/Enum;
.source "MSDKWebLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LoadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

.field public static final enum HTML_ASSET:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

.field public static final enum HTML_CONTENT:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

.field public static final enum HTML_FILE:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

.field public static final enum HTML_URL:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 44
    new-instance v0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    const-string v1, "HTML_FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;->HTML_FILE:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    .line 45
    new-instance v1, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    const-string v3, "HTML_CONTENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;->HTML_CONTENT:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    .line 46
    new-instance v3, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    const-string v5, "HTML_ASSET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;->HTML_ASSET:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    .line 47
    new-instance v5, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    const-string v7, "HTML_URL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;->HTML_URL:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    const/4 v7, 0x4

    .line 43
    new-array v7, v7, [Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;->$VALUES:[Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;
    .locals 1

    .line 43
    const-class v0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    return-object p0
.end method

.method public static values()[Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;
    .locals 1

    .line 43
    sget-object v0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;->$VALUES:[Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    invoke-virtual {v0}, [Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$LoadType;

    return-object v0
.end method
