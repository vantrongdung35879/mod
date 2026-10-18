.class Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;
.super Ljava/lang/Object;
.source "MSDKVerifyCodeView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->setEditTextListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editable"
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->access$100(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->access$002(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->access$200(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$InputCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->access$000(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->access$300()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->access$200(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$InputCompleteListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$InputCompleteListener;->inputComplete()V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->access$200(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$InputCompleteListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$InputCompleteListener;->invalidContent()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 78
    :goto_1
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->access$300()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->access$000(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->access$400(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)[Landroid/widget/TextView;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->access$000(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->access$400(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)[Landroid/widget/TextView;

    move-result-object v0

    aget-object v0, v0, p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    return-void
.end method
