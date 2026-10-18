.class Lcom/centauri/oversea/business/h5/webview/MWebView$2;
.super Ljava/lang/Object;
.source "MWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/h5/webview/MWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

.field final synthetic val$additionalHttpHeaders:Ljava/util/Map;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$2;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iput-object p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$2;->val$additionalHttpHeaders:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$2;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$2;->val$additionalHttpHeaders:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$101(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
