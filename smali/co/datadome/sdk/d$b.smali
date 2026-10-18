.class Lco/datadome/sdk/d$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/datadome/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lco/datadome/sdk/f;

.field final synthetic b:Lco/datadome/sdk/d;


# direct methods
.method public constructor <init>(Lco/datadome/sdk/d;Lco/datadome/sdk/f;)V
    .locals 0

    iput-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lco/datadome/sdk/d$b;->a:Lco/datadome/sdk/f;

    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lco/datadome/sdk/d;->resetHandlingResponseInProgress()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "co.datadome.sdk.CAPTCHA_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "captcha_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    iget-object v1, v1, Lco/datadome/sdk/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lco/datadome/sdk/d;->b(Lco/datadome/sdk/d;Z)V

    const-string p1, "cookie"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "captcha_url"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Did resolve captcha with cookie "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataDome"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    invoke-static {v1}, Lco/datadome/sdk/d;->c(Lco/datadome/sdk/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    invoke-virtual {v1, p1}, Lco/datadome/sdk/d;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lco/datadome/sdk/d$b;->a:Lco/datadome/sdk/f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lco/datadome/sdk/f;->onCaptchaDismissed()V

    iget-object p1, p0, Lco/datadome/sdk/d$b;->a:Lco/datadome/sdk/f;

    invoke-interface {p1}, Lco/datadome/sdk/f;->onCaptchaSuccess()V

    :cond_0
    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    sget-object v1, Lco/datadome/sdk/DataDomeSDK$a;->d:Lco/datadome/sdk/DataDomeSDK$a;

    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Lco/datadome/sdk/DataDomeSDK$a;->a(Ljava/lang/String;)Lco/datadome/sdk/DataDomeEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lco/datadome/sdk/d;->logEvent(Lco/datadome/sdk/DataDomeEvent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "captcha succeed with url "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    invoke-static {p1}, Lco/datadome/sdk/d;->d(Lco/datadome/sdk/d;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lco/datadome/sdk/d$b;->a()V

    :cond_1
    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    invoke-static {p1, v0}, Lco/datadome/sdk/d;->c(Lco/datadome/sdk/d;Z)V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lco/datadome/sdk/d$b;->a:Lco/datadome/sdk/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lco/datadome/sdk/f;->onCaptchaLoaded()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "captcha_result"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    invoke-direct {p0, p1, p2}, Lco/datadome/sdk/d$b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    invoke-static {p1, v2}, Lco/datadome/sdk/d;->a(Lco/datadome/sdk/d;Z)Z

    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    iget-object p1, p1, Lco/datadome/sdk/d;->l:Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;->onComplete(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lco/datadome/sdk/d$b;->b()V

    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    invoke-static {p1, v2}, Lco/datadome/sdk/d;->b(Lco/datadome/sdk/d;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lco/datadome/sdk/d$b;->a:Lco/datadome/sdk/f;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    invoke-static {p1}, Lco/datadome/sdk/d;->b(Lco/datadome/sdk/d;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lco/datadome/sdk/d$b;->a:Lco/datadome/sdk/f;

    invoke-interface {p1}, Lco/datadome/sdk/f;->onCaptchaDismissed()V

    iget-object p1, p0, Lco/datadome/sdk/d$b;->a:Lco/datadome/sdk/f;

    invoke-interface {p1}, Lco/datadome/sdk/f;->onCaptchaCancelled()V

    :cond_2
    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    iget-object p2, p1, Lco/datadome/sdk/d;->l:Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;

    if-eqz p2, :cond_3

    invoke-static {p1}, Lco/datadome/sdk/d;->b(Lco/datadome/sdk/d;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    iget-object p1, p1, Lco/datadome/sdk/d;->l:Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;

    invoke-virtual {p1}, Lco/datadome/sdk/DataDomeSDKManualIntegrationListener;->onDismiss()V

    :cond_3
    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    invoke-static {p1, v1}, Lco/datadome/sdk/d;->b(Lco/datadome/sdk/d;Z)V

    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    invoke-static {p1, v1}, Lco/datadome/sdk/d;->c(Lco/datadome/sdk/d;Z)V

    invoke-static {}, Lco/datadome/sdk/d;->resetHandlingResponseInProgress()V

    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    sget-object p2, Lco/datadome/sdk/DataDomeSDK$a;->e:Lco/datadome/sdk/DataDomeSDK$a;

    const-string v1, "sdk"

    invoke-virtual {p2, v1}, Lco/datadome/sdk/DataDomeSDK$a;->a(Ljava/lang/String;)Lco/datadome/sdk/DataDomeEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lco/datadome/sdk/d;->logEvent(Lco/datadome/sdk/DataDomeEvent;)V

    const-string p1, "onReceive ->  captcha dismissed"

    invoke-static {p1}, Lco/datadome/sdk/g;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-eq v0, v3, :cond_5

    if-nez v0, :cond_6

    :cond_5
    iget-object p1, p0, Lco/datadome/sdk/d$b;->b:Lco/datadome/sdk/d;

    invoke-static {p1}, Lco/datadome/sdk/d;->b(Lco/datadome/sdk/d;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lco/datadome/sdk/d;->a(Lco/datadome/sdk/d;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    invoke-static {}, Lco/datadome/sdk/d;->e()V

    :cond_6
    return-void
.end method
