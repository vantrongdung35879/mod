.class Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;


# direct methods
.method private constructor <init>(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;-><init>(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "getSupportState="

    const-string v1, "aidl version: "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onServiceConnected: ComponentName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TGPAManager"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$202(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$200(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$200(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    move-result-object p2

    invoke-interface {p2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->getInterfaceVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$200(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    move-result-object p1

    iget-object p2, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$300(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->init(Landroid/os/IBinder;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$200(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    move-result-object p2

    invoke-interface {p2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->getSupportState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$200(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->setForeground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$500(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Landroid/app/Application;

    move-result-object p1

    iget-object p2, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$400(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$600(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ServerBindCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$600(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ServerBindCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ServerBindCallback;->bindCallBack()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "TGPAManager"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$202(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$500(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;->this$0:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;

    invoke-static {v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->access$400(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
