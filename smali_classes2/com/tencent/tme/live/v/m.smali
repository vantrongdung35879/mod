.class public Lcom/tencent/tme/live/v/m;
.super Lcom/tencent/tme/live/v/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x50

    const/16 v1, 0x1bb

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/tme/live/v/a;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/v/a;-><init>(ZII)V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/tencent/tme/live/v/k;Landroid/content/Context;)Lcom/tencent/tme/live/v/j;
    .locals 0

    if-eqz p4, :cond_0

    const-string p6, "Content-Type"

    invoke-interface {p3, p6, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p4, 0x1

    invoke-interface {p5, p4}, Lcom/tencent/tme/live/v/k;->a(Z)V

    .line 1
    new-instance p4, Lcom/tencent/tme/live/v/b;

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/tencent/tme/live/v/b;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/tencent/tme/live/v/k;)V

    .line 2
    invoke-virtual {p4}, Lcom/tencent/tme/live/v/b;->run()V

    new-instance p1, Lcom/tencent/tme/live/v/j;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/v/j;-><init>(Lcom/tencent/tme/live/v/b;)V

    return-object p1
.end method
