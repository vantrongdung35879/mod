.class public Lcom/tencent/qimei/webview/QmWebview;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private final jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

.field private mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmWebview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance p1, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmWebview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmWebview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance p1, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmWebview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmWebview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance p1, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmWebview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmWebview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance p1, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmWebview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmWebview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance p1, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/jsbridge/JsBridgeInterface;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/qimei/webview/QmWebview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    return-void
.end method

.method private onLoad()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/tencent/qimei/webview/QmWebview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/tencent/qimei/webview/QmWebview;->mJsInterfaceInjected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/tencent/qimei/webview/QmWebview;->jsBridgeInterface:Lcom/tencent/qimei/jsbridge/JsBridgeInterface;

    const-string v1, "qimeiBridge"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "QmWebview"

    const-string/jumbo v2, "webview inject success!"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/qimei/webview/QmWebview;->onLoad()V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/qimei/webview/QmWebview;->onLoad()V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/tencent/qimei/webview/QmWebview;->onLoad()V

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
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/qimei/webview/QmWebview;->onLoad()V

    return-void
.end method
