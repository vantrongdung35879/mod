.class public abstract Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;
.super Lcom/tencent/tme/live/f2/a;


# instance fields
.field public final channel:Ljava/nio/channels/Channel;

.field private final filterChain:Lcom/tencent/tme/live/b2/e;

.field private key:Ljava/nio/channels/SelectionKey;

.field public final processor:Lcom/tencent/tme/live/e2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e2/i;Lcom/tencent/tme/live/e2/j;Ljava/nio/channels/Channel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;",
            "Lcom/tencent/tme/live/e2/j;",
            "Ljava/nio/channels/Channel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/tencent/tme/live/f2/a;-><init>(Lcom/tencent/tme/live/e2/j;)V

    iput-object p3, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->channel:Ljava/nio/channels/Channel;

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->processor:Lcom/tencent/tme/live/e2/i;

    new-instance p1, Lcom/tencent/tme/live/b2/a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/b2/a;-><init>(Lcom/tencent/tme/live/f2/a;)V

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->filterChain:Lcom/tencent/tme/live/b2/e;

    return-void
.end method


# virtual methods
.method public abstract getChannel()Ljava/nio/channels/ByteChannel;
.end method

.method public getFilterChain()Lcom/tencent/tme/live/b2/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->filterChain:Lcom/tencent/tme/live/b2/e;

    return-object v0
.end method

.method public getProcessor()Lcom/tencent/tme/live/e2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tme/live/e2/i<",
            "Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->processor:Lcom/tencent/tme/live/e2/i;

    return-object v0
.end method

.method public getSelectionKey()Ljava/nio/channels/SelectionKey;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->key:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    return v0
.end method

.method public setSelectionKey(Ljava/nio/channels/SelectionKey;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/net/mina/transport/socket/nio/NioSession;->key:Ljava/nio/channels/SelectionKey;

    return-void
.end method
