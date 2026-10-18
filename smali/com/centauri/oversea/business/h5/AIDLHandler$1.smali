.class Lcom/centauri/oversea/business/h5/AIDLHandler$1;
.super Ljava/lang/Object;
.source "AIDLHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/h5/AIDLHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/h5/AIDLHandler;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler$1;->this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 75
    const-string p1, "onServiceConnected"

    const-string v0, "AIDLHandler"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler$1;->this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-static {p2}, Lcom/centauri/oversea/business/h5/IWebInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/centauri/oversea/business/h5/IWebInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/centauri/oversea/business/h5/AIDLHandler;->access$002(Lcom/centauri/oversea/business/h5/AIDLHandler;Lcom/centauri/oversea/business/h5/IWebInterface;)Lcom/centauri/oversea/business/h5/IWebInterface;

    .line 78
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler$1;->this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/AIDLHandler;->access$100(Lcom/centauri/oversea/business/h5/AIDLHandler;)Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler$1;->this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/AIDLHandler;->access$100(Lcom/centauri/oversea/business/h5/AIDLHandler;)Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;->OnServiceConnected()V

    .line 83
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler$1;->this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/AIDLHandler;->access$200(Lcom/centauri/oversea/business/h5/AIDLHandler;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler$1;->this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/AIDLHandler;->access$000(Lcom/centauri/oversea/business/h5/AIDLHandler;)Lcom/centauri/oversea/business/h5/IWebInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/centauri/oversea/business/h5/IWebInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/centauri/oversea/business/h5/AIDLHandler$1;->this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-static {p2}, Lcom/centauri/oversea/business/h5/AIDLHandler;->access$200(Lcom/centauri/oversea/business/h5/AIDLHandler;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "LinkToDeath exception: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 93
    const-string p1, "AIDLHandler"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
