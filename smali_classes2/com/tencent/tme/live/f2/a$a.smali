.class public Lcom/tencent/tme/live/f2/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/c2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/f2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/c2/i<",
        "Lcom/tencent/tme/live/c2/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lcom/tencent/tme/live/c2/h;)V
    .locals 2

    check-cast p1, Lcom/tencent/tme/live/c2/a;

    .line 1
    invoke-interface {p1}, Lcom/tencent/tme/live/c2/h;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/f2/a;

    invoke-static {p1}, Lcom/tencent/tme/live/f2/a;->access$000(Lcom/tencent/tme/live/f2/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {p1}, Lcom/tencent/tme/live/f2/a;->access$100(Lcom/tencent/tme/live/f2/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/f2/a;->access$202(Lcom/tencent/tme/live/f2/a;D)D

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/f2/a;->access$302(Lcom/tencent/tme/live/f2/a;D)D

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/f2/a;->access$402(Lcom/tencent/tme/live/f2/a;D)D

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/f2/a;->access$502(Lcom/tencent/tme/live/f2/a;D)D

    return-void
.end method
