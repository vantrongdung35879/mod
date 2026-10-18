.class public Lcom/tencent/tme/live/i1/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/i1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/i1/c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/i1/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/i1/c$a;->a:Lcom/tencent/tme/live/i1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/i1/c$a;->a:Lcom/tencent/tme/live/i1/c;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/i1/c;->c:Lcom/tencent/tme/live/i1/c$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/tme/live/i1/c$a$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/i1/c$a$a;-><init>(Lcom/tencent/tme/live/i1/c$a;)V

    invoke-static {v0}, Lcom/tencent/tme/live/j1/b;->a(Lcom/tencent/tme/live/v0/g;)V

    const-string v0, "PopTVCfgMonitory"

    const-string v1, "queryPopTVCfgTask done"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/i1/c$a;->a:Lcom/tencent/tme/live/i1/c;

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/i1/c;->a:Landroid/os/Handler;

    .line 4
    iget-object v0, v0, Lcom/tencent/tme/live/i1/c;->e:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/tme/live/i1/c$a;->a:Lcom/tencent/tme/live/i1/c;

    .line 6
    iget-object v1, v0, Lcom/tencent/tme/live/i1/c;->a:Landroid/os/Handler;

    .line 7
    iget-object v2, v0, Lcom/tencent/tme/live/i1/c;->e:Ljava/lang/Runnable;

    .line 8
    iget v0, v0, Lcom/tencent/tme/live/i1/c;->b:I

    int-to-long v3, v0

    .line 9
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
