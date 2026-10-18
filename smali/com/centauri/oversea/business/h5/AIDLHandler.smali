.class public Lcom/centauri/oversea/business/h5/AIDLHandler;
.super Ljava/lang/Object;
.source "AIDLHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AIDLHandler"


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private mBinderPoolDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mContext:Landroid/content/Context;

.field private mLstener:Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;

.field private webInterface:Lcom/centauri/oversea/business/h5/IWebInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->webInterface:Lcom/centauri/oversea/business/h5/IWebInterface;

    .line 25
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mLstener:Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;

    .line 72
    new-instance v0, Lcom/centauri/oversea/business/h5/AIDLHandler$1;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/AIDLHandler$1;-><init>(Lcom/centauri/oversea/business/h5/AIDLHandler;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->conn:Landroid/content/ServiceConnection;

    .line 97
    new-instance v0, Lcom/centauri/oversea/business/h5/AIDLHandler$2;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/AIDLHandler$2;-><init>(Lcom/centauri/oversea/business/h5/AIDLHandler;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mBinderPoolDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 28
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/oversea/business/h5/AIDLHandler;)Lcom/centauri/oversea/business/h5/IWebInterface;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->webInterface:Lcom/centauri/oversea/business/h5/IWebInterface;

    return-object p0
.end method

.method static synthetic access$002(Lcom/centauri/oversea/business/h5/AIDLHandler;Lcom/centauri/oversea/business/h5/IWebInterface;)Lcom/centauri/oversea/business/h5/IWebInterface;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->webInterface:Lcom/centauri/oversea/business/h5/IWebInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/centauri/oversea/business/h5/AIDLHandler;)Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mLstener:Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/centauri/oversea/business/h5/AIDLHandler;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mBinderPoolDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method


# virtual methods
.method public bindService()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/centauri/oversea/business/h5/WebService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    iget-object v1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public onResponse(IILjava/lang/String;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->webInterface:Lcom/centauri/oversea/business/h5/IWebInterface;

    const-string v1, "AIDLHandler"

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/centauri/oversea/business/h5/IWebInterface;->onResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onResponse Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    const-string/jumbo p1, "webInterface is null"

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public queryCacheIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->webInterface:Lcom/centauri/oversea/business/h5/IWebInterface;

    const-string v1, "AIDLHandler"

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    invoke-interface {v0, p1}, Lcom/centauri/oversea/business/h5/IWebInterface;->queryCacheIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "queryCacheIP Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    const-string/jumbo p1, "webInterface is null"

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public release()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->webInterface:Lcom/centauri/oversea/business/h5/IWebInterface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mBinderPoolDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/centauri/oversea/business/h5/IWebInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mBinderPoolDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mBinderPoolDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 65
    iput-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->webInterface:Lcom/centauri/oversea/business/h5/IWebInterface;

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/h5/AIDLHandler;->unBindService()V

    return-void
.end method

.method public setAIDLListener(Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mLstener:Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;

    return-void
.end method

.method public unBindService()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->conn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/centauri/oversea/business/h5/AIDLHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 121
    const-string v0, "AIDLHandler"

    const-string/jumbo v1, "unBind service."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
