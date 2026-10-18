.class Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$2;
.super Ljava/lang/Object;
.source "ShareAnimMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->dismiss(Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$IDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

.field final synthetic val$listener:Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$IDismissListener;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$IDismissListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$2;->this$0:Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$2;->val$listener:Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$IDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$2;->this$0:Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->access$100(Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$2$1;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$2$1;-><init>(Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$2;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
