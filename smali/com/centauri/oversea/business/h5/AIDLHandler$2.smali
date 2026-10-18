.class Lcom/centauri/oversea/business/h5/AIDLHandler$2;
.super Ljava/lang/Object;
.source "AIDLHandler.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 97
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler$2;->this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 100
    const-string v0, "AIDLHandler"

    const-string v1, "binderDied."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler$2;->this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/AIDLHandler;->access$000(Lcom/centauri/oversea/business/h5/AIDLHandler;)Lcom/centauri/oversea/business/h5/IWebInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/centauri/oversea/business/h5/IWebInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler$2;->this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-static {v1}, Lcom/centauri/oversea/business/h5/AIDLHandler;->access$200(Lcom/centauri/oversea/business/h5/AIDLHandler;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 103
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler$2;->this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/centauri/oversea/business/h5/AIDLHandler;->access$002(Lcom/centauri/oversea/business/h5/AIDLHandler;Lcom/centauri/oversea/business/h5/IWebInterface;)Lcom/centauri/oversea/business/h5/IWebInterface;

    .line 104
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler$2;->this$0:Lcom/centauri/oversea/business/h5/AIDLHandler;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/h5/AIDLHandler;->bindService()V

    return-void
.end method
