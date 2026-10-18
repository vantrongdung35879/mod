.class public Lcom/beetalk/sdk/AuthRequest;
.super Ljava/lang/Object;
.source "AuthRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final activityLauncher:Lcom/beetalk/sdk/ActivityLauncher;

.field private applicationId:Ljava/lang/String;

.field private applicationKey:Ljava/lang/String;

.field private final authId:Ljava/lang/String;

.field private final loginScenario:Ljava/lang/String;

.field private mSession:Lcom/beetalk/sdk/GGLoginSession;

.field private requestCode:I

.field private statusCallback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivityLauncher(Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/ActivityLauncher;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/AuthRequest;->activityLauncher:Lcom/beetalk/sdk/ActivityLauncher;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/AuthRequest;->authId:Ljava/lang/String;

    .line 45
    iput p3, p0, Lcom/beetalk/sdk/AuthRequest;->requestCode:I

    .line 46
    iput-object p2, p0, Lcom/beetalk/sdk/AuthRequest;->statusCallback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    .line 47
    iput-object p4, p0, Lcom/beetalk/sdk/AuthRequest;->applicationId:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/beetalk/sdk/AuthRequest;->loginScenario:Ljava/lang/String;

    .line 51
    new-instance p2, Lcom/beetalk/sdk/AuthRequest$1;

    invoke-direct {p2, p0, p1}, Lcom/beetalk/sdk/AuthRequest$1;-><init>(Lcom/beetalk/sdk/AuthRequest;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/beetalk/sdk/AuthRequest;->activityLauncher:Lcom/beetalk/sdk/ActivityLauncher;

    return-void
.end method


# virtual methods
.method public getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest;->activityLauncher:Lcom/beetalk/sdk/ActivityLauncher;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationKey()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest;->applicationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthClientRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;
    .locals 8

    .line 121
    new-instance v1, Lcom/beetalk/sdk/AuthRequest$2;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/AuthRequest$2;-><init>(Lcom/beetalk/sdk/AuthRequest;)V

    .line 133
    new-instance v7, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    iget-object v2, p0, Lcom/beetalk/sdk/AuthRequest;->authId:Ljava/lang/String;

    iget v3, p0, Lcom/beetalk/sdk/AuthRequest;->requestCode:I

    iget-object v4, p0, Lcom/beetalk/sdk/AuthRequest;->applicationId:Ljava/lang/String;

    iget-object v5, p0, Lcom/beetalk/sdk/AuthRequest;->applicationKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/beetalk/sdk/AuthRequest;->loginScenario:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;-><init>(Lcom/beetalk/sdk/ActivityLauncher;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest;->mSession:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->setAuthToken(Lcom/beetalk/sdk/data/AuthToken;)V

    .line 136
    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest;->mSession:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)V

    return-object v7
.end method

.method public getAuthId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginScenario()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest;->loginScenario:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/beetalk/sdk/AuthRequest;->requestCode:I

    return v0
.end method

.method public getSession()Lcom/beetalk/sdk/GGLoginSession;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest;->mSession:Lcom/beetalk/sdk/GGLoginSession;

    return-object v0
.end method

.method public getStatusCallback()Lcom/beetalk/sdk/GGLoginSession$SessionCallback;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest;->statusCallback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    return-object v0
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/beetalk/sdk/AuthRequest;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setApplicationKey(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/beetalk/sdk/AuthRequest;->applicationKey:Ljava/lang/String;

    return-void
.end method

.method public setRequestCode(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/beetalk/sdk/AuthRequest;->requestCode:I

    return-void
.end method

.method public setSession(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/beetalk/sdk/AuthRequest;->mSession:Lcom/beetalk/sdk/GGLoginSession;

    return-void
.end method

.method public setStatusCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/beetalk/sdk/AuthRequest;->statusCallback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    return-void
.end method
