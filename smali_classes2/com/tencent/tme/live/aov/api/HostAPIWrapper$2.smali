.class Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/aov/api/HostAPIWrapper$ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->sendSDKProcessCmd(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-static {v0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->access$400(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)V

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2$1;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2$1;-><init>(Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2;)V

    .line 1
    invoke-virtual {v0}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
