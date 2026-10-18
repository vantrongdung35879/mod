.class public abstract Lcom/tencent/tme/live/h2/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/h2/h;


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/h2/a;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public write(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/h2/a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
