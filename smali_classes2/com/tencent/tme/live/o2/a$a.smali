.class public Lcom/tencent/tme/live/o2/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/o2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Object;

.field public c:Ljava/util/List;

.field public final synthetic d:Lcom/tencent/tme/live/o2/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o2/a;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/o2/a$a;->d:Lcom/tencent/tme/live/o2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/tencent/tme/live/o2/a$a;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tme/live/o2/a$a;->b:Ljava/lang/Object;

    iput-object p5, p0, Lcom/tencent/tme/live/o2/a$a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/o2/a$a;->d:Lcom/tencent/tme/live/o2/a;

    iget-object v1, p0, Lcom/tencent/tme/live/o2/a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tme/live/o2/a$a;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/tme/live/o2/a$a;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_3

    if-eqz v3, :cond_1

    .line 1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/o2/c;

    :try_start_0
    invoke-interface {v3, v1, v2}, Lcom/tencent/tme/live/o2/c;->onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No subscribers for event or topic. Event:null, Topic:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationCenter"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t publish to null topic/event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
