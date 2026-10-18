.class Lcom/tencent/tme/live/framework/view/webview/TMEWebView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->setWetTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

.field public final synthetic val$title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$1;->this$0:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    iput-object p2, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$1;->this$0:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    invoke-static {v0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->access$000(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$1;->this$0:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    invoke-static {v0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->access$000(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
