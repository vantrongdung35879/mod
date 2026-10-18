.class Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2$1;->this$1:Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2$1;->this$1:Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2;

    iget-object v0, v0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-static {v0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->access$500(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
