.class public final Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;,
        Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;
    }
.end annotation


# static fields
.field private static final ACTION_TGPA_SERVER:Ljava/lang/String; = "com.ihoc.mgpa.VENDORSDK_SERVER"

.field private static final TAG:Ljava/lang/String; = "TGPAManager"


# instance fields
.field private mCallback:Lcom/ihoc/mgpa/vendorsdk/v2_0/ServerBindCallback;

.field private mClient:Landroid/os/IBinder;

.field private mContext:Landroid/app/Application;

.field private mForegroundCallbacks:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;

.field private mServerConnection:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;

.field private mServerSupportState:I

.field private mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mCallback:Lcom/ihoc/mgpa/vendorsdk/v2_0/ServerBindCallback;

    iput-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mClient:Landroid/os/IBinder;

    const/4 v1, -0x1

    iput v1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mServerSupportState:I

    new-instance v1, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;

    invoke-direct {v1, p0, v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;-><init>(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$1;)V

    iput-object v1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mForegroundCallbacks:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;

    new-instance v1, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;

    invoke-direct {v1, p0, v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;-><init>(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$1;)V

    iput-object v1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mServerConnection:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;

    return-void
.end method

.method public static synthetic access$200(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;
    .locals 0

    iget-object p0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mClient:Landroid/os/IBinder;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mForegroundCallbacks:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mContext:Landroid/app/Application;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;)Lcom/ihoc/mgpa/vendorsdk/v2_0/ServerBindCallback;
    .locals 0

    iget-object p0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mCallback:Lcom/ihoc/mgpa/vendorsdk/v2_0/ServerBindCallback;

    return-object p0
.end method

.method private queryService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string p1, "TGPAManager"

    const-string v0, "TGPA Server isn\'t exist!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/ihoc/mgpa/vendorsdk/v2_0/ServerBindCallback;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mContext:Landroid/app/Application;

    iput-object p2, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mCallback:Lcom/ihoc/mgpa/vendorsdk/v2_0/ServerBindCallback;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.ihoc.mgpa.VENDORSDK_SERVER"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->queryService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mContext:Landroid/app/Application;

    iget-object v1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mServerConnection:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "bind service failed: service="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TGPAManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mServerSupportState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->getServerVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportState()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->getSupportState()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mServerSupportState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    :goto_1
    iget v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mServerSupportState:I

    return v0
.end method

.method public getSupportStrategy()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mServerSupportState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->getSupportStrategy()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemData(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mServerSupportState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->getSystemData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerGameCallback(Lcom/ihoc/mgpa/vendorsdk/v2_0/ICallBack;)V
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mServerSupportState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->registerGameCallback(Lcom/ihoc/mgpa/vendorsdk/v2_0/ICallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 2

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mContext:Landroid/app/Application;

    iget-object v1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mServerConnection:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ServerConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mContext:Landroid/app/Application;

    iget-object v1, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mForegroundCallbacks:Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager$ForegroundCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public unregisterGameCallback()V
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mServerSupportState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->unregisterGameCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public updateGameInfo(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mServerSupportState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ihoc/mgpa/vendorsdk/v2_0/TGPAManager;->mTgpaServer:Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;->updateGameInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
