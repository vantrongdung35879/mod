.class public Lcom/beetalk/sdk/EmailAuthRequestHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "EmailAuthRequestHandler.java"


# direct methods
.method protected constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    return-void
.end method

.method private onResult(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$Result;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/beetalk/sdk/EmailAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->tryHandler()V

    :goto_0
    return-void
.end method


# virtual methods
.method onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 1

    .line 30
    invoke-virtual {p4}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getAuthId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getAuthId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p4, 0x1

    if-nez p1, :cond_1

    .line 38
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->REQUEST_ID_MISMATCH:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/EmailAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return p4

    :cond_1
    if-nez p2, :cond_2

    .line 44
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 46
    const-string p1, "email_auth_result"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/AuthClient$Result;

    goto :goto_0

    .line 48
    :cond_3
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    .line 50
    :goto_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/EmailAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return p4
.end method

.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 20
    :cond_0
    const-string/jumbo v1, "start email auth"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/beetalk/sdk/EmailAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object v1

    invoke-interface {v1}, Lcom/beetalk/sdk/ActivityLauncher;->getContext()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/beetalk/sdk/EmailAuthActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 23
    const-string v1, "email_request_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 24
    iget-object v1, p0, Lcom/beetalk/sdk/EmailAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/beetalk/sdk/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
