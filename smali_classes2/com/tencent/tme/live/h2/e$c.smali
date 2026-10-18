.class public Lcom/tencent/tme/live/h2/e$c;
.super Lcom/tencent/tme/live/h2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/h2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/h2/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/b2/c$a;Lcom/tencent/tme/live/f2/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/h2/a;->a:Ljava/util/Queue;

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/tencent/tme/live/b2/c$a;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
