.class Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$8;
.super Ljava/lang/Object;
.source "MSDKBindUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 349
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$8;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 352
    const-string p1, "MSDKLoginUI - close button clicked"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 353
    new-instance p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    const/4 v0, 0x2

    const-string/jumbo v1, "the bind ui is closed by user."

    const/16 v2, 0x7f

    invoke-direct {p1, v2, v0, v0, v1}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IIILjava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$8;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    .line 354
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1000(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    .line 353
    invoke-static {v1, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$8;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1100(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 357
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$8;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1202(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;Z)Z

    .line 358
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$8;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$1300(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)V

    return-void
.end method
