.class public Lcom/tencent/tme/live/x/b$a;
.super Lcom/tencent/tme/live/v/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/x/b;->a()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/v/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lorg/apache/http/Header;[B)V
    .locals 0

    if-eqz p3, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object p1, Lcom/tencent/tme/live/x/b;->a:Ljava/lang/String;

    sget-boolean p1, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "client onSuccess responseBody : "

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/tencent/tme/live/x/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1
    const-string p2, "HttpDnsManager"

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 0

    if-eqz p3, :cond_0

    sget-boolean p1, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "client onFailure responseBody : "

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1
    const-string p2, "HttpDnsManager"

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
