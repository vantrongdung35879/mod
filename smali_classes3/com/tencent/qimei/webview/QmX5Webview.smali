.class public Lcom/tencent/qimei/webview/QmX5Webview;
.super Lcom/tencent/smtt/sdk/WebView;
.source "SourceFile"


# instance fields
.field private final jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

.field private mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmX5Webview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance p1, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmX5Webview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    .line 14
    invoke-direct {p0}, Lcom/tencent/qimei/webview/QmX5Webview;->onLoad()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmX5Webview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    new-instance p1, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmX5Webview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmX5Webview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    new-instance p1, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmX5Webview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmX5Webview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance p1, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmX5Webview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmX5Webview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance p1, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmX5Webview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Z)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmX5Webview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance p1, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmX5Webview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    return-void
.end method

.method private onLoad()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/tencent/qimei/webview/QmX5Webview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/tencent/qimei/webview/QmX5Webview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/tencent/qimei/webview/QmX5Webview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    const-string v1, "qimeiBridge"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/smtt/sdk/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "QmX5Webview"

    const-string/jumbo v2, "webview inject success!"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/qimei/webview/QmX5Webview;->onLoad()V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/tencent/smtt/sdk/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/qimei/webview/QmX5Webview;->onLoad()V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/tencent/qimei/webview/QmX5Webview;->onLoad()V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/qimei/webview/QmX5Webview;->onLoad()V

    return-void
.end method
