.class public final Lcom/tencent/qimei/ax/m;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ax/o;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ax/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ax/m;->a:Lcom/tencent/qimei/ax/o;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/tencent/qimei/ax/m;->a:Lcom/tencent/qimei/ax/o;

    invoke-static {p1}, Lcom/tencent/qimei/ax/o;->a(Lcom/tencent/qimei/ax/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
