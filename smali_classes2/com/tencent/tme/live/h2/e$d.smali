.class public Lcom/tencent/tme/live/h2/e$d;
.super Lcom/tencent/tme/live/h2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/h2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Lcom/tencent/tme/live/f2/j;

.field public final c:Lcom/tencent/tme/live/b2/c$a;

.field public final d:Ljava/net/SocketAddress;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/g2/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/h2/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/h2/e$d;->b:Lcom/tencent/tme/live/f2/j;

    iput-object p2, p0, Lcom/tencent/tme/live/h2/e$d;->c:Lcom/tencent/tme/live/b2/c$a;

    invoke-interface {p3}, Lcom/tencent/tme/live/g2/d;->d()Ljava/net/SocketAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/h2/e$d;->d:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public flush()Lcom/tencent/tme/live/c2/k;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/h2/b;->a:Ljava/util/Queue;

    const/4 v1, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lcom/tencent/tme/live/z1/b;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v3}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    new-instance v1, Lcom/tencent/tme/live/c2/g;

    iget-object v3, p0, Lcom/tencent/tme/live/h2/e$d;->b:Lcom/tencent/tme/live/f2/j;

    invoke-direct {v1, v3}, Lcom/tencent/tme/live/c2/g;-><init>(Lcom/tencent/tme/live/f2/j;)V

    iget-object v4, p0, Lcom/tencent/tme/live/h2/e$d;->c:Lcom/tencent/tme/live/b2/c$a;

    new-instance v5, Lcom/tencent/tme/live/h2/e$a;

    iget-object v6, p0, Lcom/tencent/tme/live/h2/e$d;->d:Ljava/net/SocketAddress;

    invoke-direct {v5, v2, v1, v6}, Lcom/tencent/tme/live/h2/e$a;-><init>(Ljava/lang/Object;Lcom/tencent/tme/live/c2/k;Ljava/net/SocketAddress;)V

    invoke-interface {v4, v3, v5}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/g2/d;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/tencent/tme/live/h2/e$d;->b:Lcom/tencent/tme/live/f2/j;

    new-instance v1, Lcom/tencent/tme/live/g2/b;

    sget-object v2, Lcom/tencent/tme/live/f2/a;->MESSAGE_SENT_REQUEST:Lcom/tencent/tme/live/g2/d;

    invoke-direct {v1, v2}, Lcom/tencent/tme/live/g2/b;-><init>(Lcom/tencent/tme/live/g2/d;)V

    invoke-static {v0, v1}, Lcom/tencent/tme/live/c2/g;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)Lcom/tencent/tme/live/c2/k;

    move-result-object v1

    :cond_4
    return-object v1
.end method
