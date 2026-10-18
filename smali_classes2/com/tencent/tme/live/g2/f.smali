.class public Lcom/tencent/tme/live/g2/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/g2/d;


# instance fields
.field public final a:Lcom/tencent/tme/live/g2/d;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/g2/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/g2/f;->a:Lcom/tencent/tme/live/g2/d;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parentRequest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/g2/d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/g2/f;->a:Lcom/tencent/tme/live/g2/d;

    invoke-interface {v0}, Lcom/tencent/tme/live/g2/d;->a()Lcom/tencent/tme/live/g2/d;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/tencent/tme/live/c2/k;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/g2/f;->a:Lcom/tencent/tme/live/g2/d;

    invoke-interface {v0}, Lcom/tencent/tme/live/g2/d;->b()Lcom/tencent/tme/live/c2/k;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/g2/f;->a:Lcom/tencent/tme/live/g2/d;

    invoke-interface {v0}, Lcom/tencent/tme/live/g2/d;->d()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "WR Wrapper"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/g2/f;->a:Lcom/tencent/tme/live/g2/d;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
