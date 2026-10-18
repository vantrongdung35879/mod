.class public Lcom/tencent/tme/live/v/a$d;
.super Lorg/apache/http/entity/HttpEntityWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/v/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Ljava/io/PushbackInputStream;

.field public c:Ljava/util/zip/GZIPInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/v/a$d;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/tme/live/v/a;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/tencent/tme/live/v/a$d;->b:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/tencent/tme/live/v/a;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/tencent/tme/live/v/a$d;->c:Ljava/util/zip/GZIPInputStream;

    invoke-static {v0}, Lcom/tencent/tme/live/v/a;->a(Ljava/io/InputStream;)V

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 5

    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/v/a$d;->a:Ljava/io/InputStream;

    new-instance v0, Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lcom/tencent/tme/live/v/a$d;->a:Ljava/io/InputStream;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/tencent/tme/live/v/a$d;->b:Ljava/io/PushbackInputStream;

    .line 1
    new-array v1, v2, [B

    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread([B)V

    const/4 v0, 0x0

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v4, 0x1

    aget-byte v1, v1, v4

    shl-int/lit8 v1, v1, 0x8

    const v4, 0xff00

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    if-ne v3, v2, :cond_0

    const v1, 0x8b1f

    if-ne v1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/tencent/tme/live/v/a$d;->b:Ljava/io/PushbackInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/tencent/tme/live/v/a$d;->c:Ljava/util/zip/GZIPInputStream;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/v/a$d;->b:Ljava/io/PushbackInputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/apache/http/entity/HttpEntityWrapper;->wrappedEntity:Lorg/apache/http/HttpEntity;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
