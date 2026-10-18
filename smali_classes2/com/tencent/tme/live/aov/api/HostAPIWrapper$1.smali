.class Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->connectService(Lcom/tencent/tme/live/aov/api/HostAPIWrapper$ServiceCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

.field public final synthetic val$serviceCallback:Lcom/tencent/tme/live/aov/api/HostAPIWrapper$ServiceCallback;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;Lcom/tencent/tme/live/aov/api/HostAPIWrapper$ServiceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    iput-object p2, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;->val$serviceCallback:Lcom/tencent/tme/live/aov/api/HostAPIWrapper$ServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-static {p2}, Lcom/tencent/tme/biz/api/SDKApiInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tme/biz/api/SDKApiInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->access$002(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;Lcom/tencent/tme/biz/api/SDKApiInterface;)Lcom/tencent/tme/biz/api/SDKApiInterface;

    :try_start_0
    iget-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-static {p1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->access$000(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)Lcom/tencent/tme/biz/api/SDKApiInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-static {p2}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->access$100(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)Lcom/tencent/tme/biz/api/HostListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tencent/tme/biz/api/SDKApiInterface;->registerListener(Lcom/tencent/tme/biz/api/HostListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;->val$serviceCallback:Lcom/tencent/tme/live/aov/api/HostAPIWrapper$ServiceCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$ServiceCallback;->connect()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-static {p1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->access$200(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-static {p1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->access$000(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)Lcom/tencent/tme/biz/api/SDKApiInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-static {p1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->access$200(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-static {v0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->access$300(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->access$302(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;->this$0:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-static {p1, v0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->access$002(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;Lcom/tencent/tme/biz/api/SDKApiInterface;)Lcom/tencent/tme/biz/api/SDKApiInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
