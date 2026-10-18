.class Lcom/tencent/tme/live/framework/view/webview/TMEWebView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$4;->this$0:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView$4;->this$0:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    invoke-static {p1}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->access$100(Lcom/tencent/tme/live/framework/view/webview/TMEWebView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "default browser is uninstalled!"

    invoke-static {p1}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
