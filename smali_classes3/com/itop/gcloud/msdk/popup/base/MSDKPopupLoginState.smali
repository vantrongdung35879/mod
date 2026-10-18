.class public Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;
.super Ljava/lang/Object;
.source "MSDKPopupLoginState.java"


# static fields
.field private static final SP_KEY_INSTALL_ID:Ljava/lang/String; = "install_id"

.field private static volatile loginState:Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field public channelID:I

.field public gOpenID:Ljava/lang/String;

.field public gameID:Ljava/lang/String;

.field private installId:Ljava/lang/String;

.field public jwtToken:Ljava/lang/String;

.field public sdkKey:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->gameID:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->sdkKey:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->gOpenID:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->token:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->jwtToken:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->installId:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;
    .locals 2

    .line 27
    sget-object v0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->loginState:Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->loginState:Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    invoke-direct {v1}, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;-><init>()V

    sput-object v1, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->loginState:Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->loginState:Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;

    return-object v0
.end method


# virtual methods
.method public getInstallId()Ljava/lang/String;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->installId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 44
    const-string v1, ""

    const-string v2, "MSDKPopupCommon"

    const-string v3, "install_id"

    invoke-static {v0, v2, v3, v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupSpUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->applicationContext:Landroid/content/Context;

    invoke-static {v1, v2, v3, v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupSpUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    :cond_0
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->installId:Ljava/lang/String;

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->installId:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/base/MSDKPopupLoginState;->applicationContext:Landroid/content/Context;

    return-void
.end method
