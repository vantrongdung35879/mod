.class public Lcom/intlgame/core/dns/NetworkLifeCycleCallback;
.super Ljava/lang/Object;
.source "NetworkLifeCycleCallback.java"

# interfaces
.implements Lcom/intlgame/core/interfaces/ILifeCycle;


# instance fields
.field private networkStateReceiver:Lcom/intlgame/core/dns/NetworkStateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/intlgame/core/dns/NetworkLifeCycleCallback;->networkStateReceiver:Lcom/intlgame/core/dns/NetworkStateReceiver;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 26
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/intlgame/core/dns/NetworkLifeCycleCallback;->networkStateReceiver:Lcom/intlgame/core/dns/NetworkStateReceiver;

    if-nez p1, :cond_2

    .line 31
    new-instance p1, Lcom/intlgame/core/dns/NetworkStateReceiver;

    invoke-direct {p1}, Lcom/intlgame/core/dns/NetworkStateReceiver;-><init>()V

    iput-object p1, p0, Lcom/intlgame/core/dns/NetworkLifeCycleCallback;->networkStateReceiver:Lcom/intlgame/core/dns/NetworkStateReceiver;

    .line 32
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    .line 35
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/core/dns/NetworkLifeCycleCallback;->networkStateReceiver:Lcom/intlgame/core/dns/NetworkStateReceiver;

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 37
    :cond_1
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/core/dns/NetworkLifeCycleCallback;->networkStateReceiver:Lcom/intlgame/core/dns/NetworkStateReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 69
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unregister networkStateReceiver:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/core/dns/NetworkLifeCycleCallback;->networkStateReceiver:Lcom/intlgame/core/dns/NetworkStateReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/intlgame/core/dns/NetworkLifeCycleCallback;->networkStateReceiver:Lcom/intlgame/core/dns/NetworkStateReceiver;

    if-eqz v0, :cond_1

    .line 74
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/core/dns/NetworkLifeCycleCallback;->networkStateReceiver:Lcom/intlgame/core/dns/NetworkStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/intlgame/core/dns/NetworkLifeCycleCallback;->networkStateReceiver:Lcom/intlgame/core/dns/NetworkStateReceiver;

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
