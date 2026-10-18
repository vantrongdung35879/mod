.class public Lcom/tencent/tme/live/f2/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/g2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/f2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tencent/tme/live/g2/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/f2/j;)Lcom/tencent/tme/live/g2/d;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/g2/d;

    sget-object v1, Lcom/tencent/tme/live/f2/a;->CLOSE_REQUEST:Lcom/tencent/tme/live/g2/d;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->closeNow()Lcom/tencent/tme/live/c2/a;

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/d$b;->a:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
