.class public Lcom/tencent/tme/live/v0/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/v0/k$a;
    }
.end annotation


# static fields
.field public static c:Lcom/tencent/tme/live/v0/k;


# instance fields
.field public a:Landroid/os/HandlerThread;

.field public b:Lcom/tencent/tme/live/v0/k$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "tme_net_notify_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tme/live/v0/k;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/tencent/tme/live/v0/k$a;

    iget-object v1, p0, Lcom/tencent/tme/live/v0/k;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/v0/k$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/tme/live/v0/k;->b:Lcom/tencent/tme/live/v0/k$a;

    invoke-virtual {v0}, Lcom/tencent/tme/live/v0/k$a;->a()V

    return-void
.end method
