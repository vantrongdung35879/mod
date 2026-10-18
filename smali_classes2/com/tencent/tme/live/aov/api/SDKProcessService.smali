.class public Lcom/tencent/tme/live/aov/api/SDKProcessService;
.super Landroid/app/Service;


# static fields
.field private static final TAG:Ljava/lang/String; = "SDKProcessService"


# instance fields
.field private final mBinder:Lcom/tencent/tme/biz/api/SDKApiInterface$Stub;

.field private mHostListener:Lcom/tencent/tme/biz/api/HostListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/aov/api/SDKProcessService$1;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/aov/api/SDKProcessService$1;-><init>(Lcom/tencent/tme/live/aov/api/SDKProcessService;)V

    iput-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKProcessService;->mBinder:Lcom/tencent/tme/biz/api/SDKApiInterface$Stub;

    return-void
.end method

.method public static synthetic access$002(Lcom/tencent/tme/live/aov/api/SDKProcessService;Lcom/tencent/tme/biz/api/HostListener;)Lcom/tencent/tme/biz/api/HostListener;
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/SDKProcessService;->mHostListener:Lcom/tencent/tme/biz/api/HostListener;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/live/aov/api/SDKProcessService;->mBinder:Lcom/tencent/tme/biz/api/SDKApiInterface$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public sendMessageToHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKProcessService;->mHostListener:Lcom/tencent/tme/biz/api/HostListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/biz/api/HostListener;->onMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
