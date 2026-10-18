.class Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$3;
.super Landroid/text/style/ClickableSpan;
.source "MSDKBindUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->initBindUIView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$3;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widget"
        }
    .end annotation

    .line 290
    const-string p1, "## policy is clicked"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$3;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$600(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$3;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$600(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform$WebView;->openUrl(Ljava/lang/String;IZZLjava/lang/String;Z)V

    :cond_0
    return-void
.end method
