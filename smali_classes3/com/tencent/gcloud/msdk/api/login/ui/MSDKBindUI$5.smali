.class Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$5;
.super Landroid/text/style/UnderlineSpan;
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

.field final synthetic val$highlightColorValue:I


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$highlightColorValue"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$5;->this$0:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;

    iput p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$5;->val$highlightColorValue:I

    invoke-direct {p0}, Landroid/text/style/UnderlineSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ds"
        }
    .end annotation

    .line 312
    iget v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$5;->val$highlightColorValue:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
