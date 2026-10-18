.class public Lcom/tencent/tme/live/o1/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/o1/f;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o1/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/o1/e;->a:Lcom/tencent/tme/live/o1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/o1/e;->a:Lcom/tencent/tme/live/o1/f;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/o1/f;->a:Lcom/tencent/tme/live/o1/b;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/tencent/tme/live/o1/f;->b:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/tme/live/w0/d;->y:Z

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/o1/e;->a:Lcom/tencent/tme/live/o1/f;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/o1/f;->a:Lcom/tencent/tme/live/o1/b;

    .line 6
    check-cast v0, Lcom/tencent/tme/live/o1/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/tencent/tme/live/o1/e;->a:Lcom/tencent/tme/live/o1/f;

    .line 9
    iget-object v2, v2, Lcom/tencent/tme/live/o1/f;->a:Lcom/tencent/tme/live/o1/b;

    .line 10
    check-cast v2, Lcom/tencent/tme/live/o1/m;

    invoke-virtual {v2}, Lcom/tencent/tme/live/o1/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v3, Lcom/tencent/tme/live/o1/j;

    invoke-direct {v3, v0}, Lcom/tencent/tme/live/o1/j;-><init>(Lcom/tencent/tme/live/o1/m;)V

    invoke-static {v1, v2, v3}, Lcom/tencent/tme/live/o1/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/o1/a$a;)V

    return-void
.end method
