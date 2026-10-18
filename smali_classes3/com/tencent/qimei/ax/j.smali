.class public final Lcom/tencent/qimei/ax/j;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ax/l;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ax/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ax/j;->a:Lcom/tencent/qimei/ax/l;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/tencent/qimei/ax/j;->a:Lcom/tencent/qimei/ax/l;

    invoke-static {p2, p1}, Lcom/tencent/qimei/ax/l;->a(Lcom/tencent/qimei/ax/l;Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
