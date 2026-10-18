.class final Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;
.super Ljava/lang/Object;
.source "ToolBarWebViewSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->downloadUrlImage(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 303
    const-string p1, "Positive button clicked, start to save photo"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 305
    new-instance p1, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2$1;

    invoke-direct {p1, p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2$1;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;)V

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;->val$url:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->queryBitmap(Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;[Ljava/lang/String;)V

    return-void
.end method
