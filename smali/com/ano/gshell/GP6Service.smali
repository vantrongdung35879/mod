.class public Lcom/ano/gshell/GP6Service;
.super Landroid/app/Service;
.source "GP6Service.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 12
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/ano/gshell/GP6Service;->stopSelf()V

    .line 31
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 32
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 17
    if-eqz p1, :cond_0

    .line 18
    :try_start_0
    const-string v0, "ioctl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-static {v0}, Lcom/ano/gshell/AnoApplication;->gp6ioctl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method
