.class public Lcom/tencent/tme/live/e/f$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/e/f;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e/f$d;->a:Lcom/tencent/tme/live/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/tencent/tme/live/e/d;->b()Lcom/tencent/tme/live/e/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string v1, "MinaConnectControl"

    const-string v2, "[TME_NET_LINK]start HelloProxy... "

    invoke-static {v1, v2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/tme/live/e/d;->i:Lcom/tencent/tme/live/k/c;

    new-instance v2, Lcom/tencent/tme/live/e/e;

    invoke-direct {v2, v0}, Lcom/tencent/tme/live/e/e;-><init>(Lcom/tencent/tme/live/e/d;)V

    iget-object v0, v0, Lcom/tencent/tme/live/e/d;->j:Lcom/tencent/tme/live/k/c$a;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/tme/live/k/e;->a(Lcom/tencent/tme/live/k/e$b;Ljava/lang/Object;I)V

    .line 3
    iget-object v0, p0, Lcom/tencent/tme/live/e/f$d;->a:Lcom/tencent/tme/live/e/f;

    .line 4
    iget-object v1, v0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/e/f;->m:Ljava/lang/Runnable;

    .line 6
    invoke-static {}, Lcom/tencent/tme/live/e/d;->b()Lcom/tencent/tme/live/e/d;

    move-result-object v2

    iget v2, v2, Lcom/tencent/tme/live/e/d;->k:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
