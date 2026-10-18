.class public Lcom/tencent/mna/i0;
.super Ljava/lang/Object;
.source "DualTunnelDelaysInfoFetcher.java"

# interfaces
.implements Lcom/tencent/mna/b1;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p3, p0, Lcom/tencent/mna/i0;->a:J

    .line 3
    iput-object p1, p0, Lcom/tencent/mna/i0;->b:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/tencent/mna/i0;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)V
    .locals 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "1:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mna/i0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/i0;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-wide v1, p0, Lcom/tencent/mna/i0;->a:J

    const-wide/16 v3, 0xc8

    div-long/2addr v1, v3

    long-to-int v2, v1

    const/16 v1, 0xc8

    const/16 v3, 0x1f4

    .line 3
    invoke-static {p1, v1, v2, v3}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualTunnelDelaysInfoFetcher: get result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 6
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length v1, p1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 8
    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 9
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 10
    aget-object p1, p1, v2

    .line 11
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 12
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/tencent/mna/a0;->a(I)V

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DualTunnelDelaysInfoFetcher: add delay:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
