.class Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$7;
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

    .line 337
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$7;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 341
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$7;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$700(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->showVerifyCodeNotice(I)V

    .line 342
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$7;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$700(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->setVisibility(I)V

    .line 343
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$7;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$800(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 344
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$7;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$900(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
