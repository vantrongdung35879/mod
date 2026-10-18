.class Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$6;
.super Ljava/lang/Object;
.source "MSDKBindUI.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 320
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$6;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 323
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$6;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$000(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    .line 324
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$6;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$400(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$6;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->access$400(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method
