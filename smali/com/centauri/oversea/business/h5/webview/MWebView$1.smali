.class Lcom/centauri/oversea/business/h5/webview/MWebView$1;
.super Ljava/lang/Object;
.source "MWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/h5/webview/MWebView;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$1;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iput-object p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$1;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$001(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;)V

    return-void
.end method
