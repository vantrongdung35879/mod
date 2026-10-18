.class public Lcom/garena/game/kgtw/util/MSDKEnvPreInit;
.super Ljava/lang/Object;
.source "MSDKEnvPreInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSDKEnvPreInit"

.field private static isInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 19
    sget-boolean v0, Lcom/garena/game/kgtw/util/MSDKEnvPreInit;->isInit:Z

    const-string v1, "MSDKEnvPreInit"

    if-eqz v0, :cond_0

    .line 20
    const-string p0, "MSDK SDK Env already pre init"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 23
    :cond_0
    const-string v0, "init"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/tencent/gcloud/msdk/tools/NDKHelper;->loadSO()Z

    .line 28
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->setActivityCur(Landroid/app/Activity;)V

    .line 30
    const-class v0, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;

    const-string v1, "mActivityCached"

    invoke-static {v0, v1, p0}, Lcom/ngame/util/ReflectUtil;->setStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 31
    sput-boolean p0, Lcom/garena/game/kgtw/util/MSDKEnvPreInit;->isInit:Z

    return-void
.end method

.method public static resetMSDKContext()V
    .locals 3

    .line 38
    sget-boolean v0, Lcom/garena/game/kgtw/util/MSDKEnvPreInit;->isInit:Z

    const-string v1, "MSDKEnvPreInit"

    if-nez v0, :cond_0

    .line 39
    const-string v0, "resetMSDKContext, MSDK SDK have not pre init in Android native layer, need not reset"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_0
    const-string v0, "resetMSDKContext"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->setActivityCur(Landroid/app/Activity;)V

    .line 44
    const-class v1, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;

    const-string v2, "mActivityCached"

    invoke-static {v1, v2, v0}, Lcom/ngame/util/ReflectUtil;->setStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
