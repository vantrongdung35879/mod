.class public Lcom/perfsight/apm/portal/TApmAgent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfsight/apm/portal/TApmAgent$a;
    }
.end annotation


# static fields
.field private static mApplication:Landroid/app/Application;

.field private static volatile sInstance:Lcom/perfsight/apm/portal/TApmAgent;


# instance fields
.field private mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

.field private mContext:Landroid/content/Context;

.field private mDeviceInfoHelper:Lcom/perfsight/apm/utils/d;

.field private mIsInitContext:Z

.field private mSDKKitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfsight/apm/template/a;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionState:Lcom/perfsight/apm/portal/a;

.field private mTdmReporterExecStatusHelper:Lcom/perfsight/apm/reporter/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "apm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSessionState:Lcom/perfsight/apm/portal/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    new-instance v0, Lcom/perfsight/apm/cloudcontrol/a;

    invoke-direct {v0}, Lcom/perfsight/apm/cloudcontrol/a;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    invoke-static {}, Lcom/perfsight/apm/reporter/e;->a()Lcom/perfsight/apm/reporter/e;

    move-result-object v0

    iput-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mTdmReporterExecStatusHelper:Lcom/perfsight/apm/reporter/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mIsInitContext:Z

    return-void
.end method

.method public static SetPerfSightUploadURL(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/perfsight/apm/reporter/RequestImp;->SetUploadURL(Ljava/lang/String;)V

    return-void
.end method

.method private static checkVerboseMode()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/__apmtmode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/perfsight/apm/portal/TApmAgent;->manualOpenVerboseMode()V

    :cond_0
    return-void
.end method

.method private doCheckVerboseMode(Landroid/content/Context;)V
    .locals 1

    const-string v0, "__apmtmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/perfsight/apm/portal/TApmAgent;->manualOpenVerboseMode()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perfsight/apm/portal/TApmAgent;->checkVerboseMode()V

    :goto_0
    return-void
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 5

    const-string v0, "begin to call get  context "

    const-string v1, "begin to call get  context"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/perfsight/apm/portal/TApmAgent;->mApplication:Landroid/app/Application;

    if-nez v1, :cond_0

    const-string v1, "android.app.ActivityThread"

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "getApplication"

    :try_start_2
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    sput-object v1, Lcom/perfsight/apm/portal/TApmAgent;->mApplication:Landroid/app/Application;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_0
    :goto_1
    sget-object v0, Lcom/perfsight/apm/portal/TApmAgent;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getInstance()Lcom/perfsight/apm/portal/TApmAgent;
    .locals 2

    sget-object v0, Lcom/perfsight/apm/portal/TApmAgent;->sInstance:Lcom/perfsight/apm/portal/TApmAgent;

    if-nez v0, :cond_1

    const-class v0, Lcom/perfsight/apm/portal/TApmAgent;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfsight/apm/portal/TApmAgent;->sInstance:Lcom/perfsight/apm/portal/TApmAgent;

    if-nez v1, :cond_0

    new-instance v1, Lcom/perfsight/apm/portal/TApmAgent;

    invoke-direct {v1}, Lcom/perfsight/apm/portal/TApmAgent;-><init>()V

    sput-object v1, Lcom/perfsight/apm/portal/TApmAgent;->sInstance:Lcom/perfsight/apm/portal/TApmAgent;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/perfsight/apm/portal/TApmAgent;->sInstance:Lcom/perfsight/apm/portal/TApmAgent;

    return-object v0
.end method

.method private initBuglyShareReport()V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Init Bugly failed"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "BuglySdkInfos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "b563002ef4"

    const-string v2, "N/A"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "8.3.9.2.3.3"

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method private static manualOpenVerboseMode()V
    .locals 1

    const-string/jumbo v0, "verbose mode"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->a()V

    invoke-static {}, Lcom/perfsight/apm/utils/p;->b()V

    invoke-static {}, Lcom/perfsight/apm/jni/TApmNativeHelper;->enableDebugMode()V

    invoke-static {}, Lcom/perfsight/apm/jni/TApmNativeHelper;->enableVerboseMode()V

    return-void
.end method

.method public static startUpFinish()V
    .locals 0

    invoke-static {}, Lcom/perfsight/apm/apm/j;->p()V

    return-void
.end method


# virtual methods
.method public PostFrame()V
    .locals 2

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfsight/apm/template/a;

    invoke-virtual {v1}, Lcom/perfsight/apm/template/a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public SetLocalStrategy(IZ)V
    .locals 2

    sget-object v0, Lcom/perfsight/apm/apm/e$a;->a:Lcom/perfsight/apm/apm/e$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfsight/apm/template/a;

    invoke-virtual {v1, p2}, Lcom/perfsight/apm/template/a;->a(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perfsight/apm/apm/e;->e()Lcom/perfsight/apm/apm/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/perfsight/apm/apm/e;->a(IZ)V

    return-void
.end method

.method public TraceRoute(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfsight/apm/template/a;

    invoke-virtual {v1, p1}, Lcom/perfsight/apm/template/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addCustomParamsInGame(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "MARK_LEVEL_FIN"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/perfsight/apm/template/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addCustomParamsInGame ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addCustomParamsInGame(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "MARK_LEVEL_FIN"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/perfsight/apm/template/a;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addCustomParamsInGame ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addCustomParamsInStepEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "POST_STEP_EVENT"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/perfsight/apm/template/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addCustomParamsInStepEvent ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addCustomParamsInStepEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "POST_STEP_EVENT"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/perfsight/apm/template/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addCustomParamsInStepEvent ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public beginExtTag(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "EXT_TAG_FUNC"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/perfsight/apm/template/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "beginExtTag ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public beginTag(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "TAG_FUNC"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/perfsight/apm/template/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "beginTag ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public checkDCLSByQcc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "CHECK_DECLS_BY_QCC"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfsight/apm/template/a;

    invoke-virtual {v3}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1, p2, p3}, Lcom/perfsight/apm/template/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkDCLSByQcc ignored by "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v2
.end method

.method public checkDCLSByQccSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "CHECK_DECLS_BY_QCC_SYNC"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfsight/apm/template/a;

    invoke-virtual {v3}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1, p2, p3}, Lcom/perfsight/apm/template/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkDCLSByQccSync ignored by "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v2
.end method

.method public checkDCLSByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "FEATURE_CHECK_DECLS_BY_STRING"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    const-string v4, "CHECK_DECLS_BY_QCC"

    invoke-virtual {v3, v4}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/perfsight/apm/template/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkDCLSByString ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v1
.end method

.method public detectInTimeout()V
    .locals 4

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "DETECH_IN_TIMEOUT"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->c()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public disableDomCDNDomain()V
    .locals 1

    invoke-static {}, Lcom/perfsight/apm/portal/a;->b()Lcom/perfsight/apm/portal/a;

    move-result-object v0

    iput-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSessionState:Lcom/perfsight/apm/portal/a;

    invoke-virtual {v0}, Lcom/perfsight/apm/portal/a;->a()V

    const-string v0, "Overseas URL"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    return-void
.end method

.method public enableApmStepEvent()V
    .locals 2

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfsight/apm/template/a;

    invoke-virtual {v1}, Lcom/perfsight/apm/template/a;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enableDebugMode()V
    .locals 4

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "ENABLED_DEBUG_MODE"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->d()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public endExtTag(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "EXT_TAG_FUNC"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/perfsight/apm/template/a;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "endExtTag ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public endTag()V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "TAG_FUNC"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->f()V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "endTag ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getApmInfo(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {}, Lcom/perfsight/apm/apm/c;->a()Lcom/perfsight/apm/apm/c;

    move-result-object v0

    iget-object v1, p0, Lcom/perfsight/apm/portal/TApmAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/perfsight/apm/apm/c;->a(Landroid/content/Context;IZ)I

    move-result p1

    return p1
.end method

.method public getDiskStorageAvailableSizeInKiB()I
    .locals 3

    const-string v0, "FreeDisk size: "

    iget-object v1, p0, Lcom/perfsight/apm/portal/TApmAgent;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/perfsight/apm/utils/d;->a(Landroid/content/Context;)Lcom/perfsight/apm/utils/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfsight/apm/utils/g;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDiskStorageAvailableSizeInKiB: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/4 v0, -0x2

    return v0
.end method

.method public getErrorMsg(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfsight/apm/template/a;

    invoke-virtual {v0, p1}, Lcom/perfsight/apm/template/a;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknow error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSDKDefinedDeviceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Lcom/perfsight/apm/portal/a;->b()Lcom/perfsight/apm/portal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/portal/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "GetSDKVersion"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    const-string v0, "8.3.9.2.3.3"

    return-object v0
.end method

.method public initContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v9, p4

    iget-object v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v10, "INIT"

    invoke-virtual {v1, v10}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ignored by cc"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/16 v1, 0x2713

    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mIsInitContext:Z

    if-eqz v1, :cond_1

    const-string v1, "InitContext has benn invoked"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/16 v1, 0x2711

    return v1

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lcom/perfsight/apm/portal/TApmAgent;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "get Context is null"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/16 v1, 0x2712

    return v1

    :cond_2
    move-object/from16 v1, p1

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/perfsight/apm/portal/TApmAgent;->mIsInitContext:Z

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/perfsight/apm/portal/TApmAgent;->doCheckVerboseMode(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/perfsight/apm/portal/TApmAgent;->initBuglyShareReport()V

    new-instance v1, Lcom/perfsight/apm/utils/d;

    iget-object v2, v0, Lcom/perfsight/apm/portal/TApmAgent;->mContext:Landroid/content/Context;

    const-string v3, "1.0"

    invoke-direct {v1, v2, v3}, Lcom/perfsight/apm/utils/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mDeviceInfoHelper:Lcom/perfsight/apm/utils/d;

    invoke-static {}, Lcom/perfsight/apm/portal/a;->b()Lcom/perfsight/apm/portal/a;

    move-result-object v1

    iput-object v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mSessionState:Lcom/perfsight/apm/portal/a;

    iget-object v2, v0, Lcom/perfsight/apm/portal/TApmAgent;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/perfsight/apm/portal/TApmAgent;->mDeviceInfoHelper:Lcom/perfsight/apm/utils/d;

    iget-object v4, v3, Lcom/perfsight/apm/utils/d;->i:Ljava/lang/String;

    iget-object v5, v3, Lcom/perfsight/apm/utils/d;->v:Ljava/lang/String;

    iget v6, v3, Lcom/perfsight/apm/utils/d;->w:I

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/perfsight/apm/portal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    iget-object v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mSessionState:Lcom/perfsight/apm/portal/a;

    invoke-virtual {v1}, Lcom/perfsight/apm/portal/a;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/perfsight/apm/portal/TApmAgent;->mSessionState:Lcom/perfsight/apm/portal/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/portal/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/perfsight/apm/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/perfsight/apm/jni/TApmNativeHelper;->enableDebugMode()V

    :cond_4
    sget-object v1, Lcom/perfsight/apm/portal/TApmAgent$a;->b:Lcom/perfsight/apm/portal/TApmAgent$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    and-int v1, p5, v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/perfsight/apm/f/b;

    invoke-direct {v1}, Lcom/perfsight/apm/f/b;-><init>()V

    iget-object v2, v0, Lcom/perfsight/apm/portal/TApmAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/perfsight/apm/f/b;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/perfsight/apm/apm/j;

    new-instance v14, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;

    iget-object v2, v0, Lcom/perfsight/apm/portal/TApmAgent;->mContext:Landroid/content/Context;

    invoke-direct {v14, v9, v2}, Lcom/perfsight/apm/cloudcontrol/APMCCStrategy;-><init>(ZLandroid/content/Context;)V

    iget-object v15, v0, Lcom/perfsight/apm/portal/TApmAgent;->mTdmReporterExecStatusHelper:Lcom/perfsight/apm/reporter/e;

    iget-object v2, v0, Lcom/perfsight/apm/portal/TApmAgent;->mSessionState:Lcom/perfsight/apm/portal/a;

    iget-object v3, v0, Lcom/perfsight/apm/portal/TApmAgent;->mDeviceInfoHelper:Lcom/perfsight/apm/utils/d;

    const-string v12, "APM"

    move-object v11, v1

    move-object/from16 v13, p2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v11 .. v17}, Lcom/perfsight/apm/apm/j;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/perfsight/apm/template/CCStrategyTemplate;Lcom/perfsight/apm/reporter/e;Lcom/perfsight/apm/portal/a;Lcom/perfsight/apm/utils/d;)V

    iget-object v2, v0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v1, Lcom/perfsight/apm/portal/TApmAgent$a;->c:Lcom/perfsight/apm/portal/TApmAgent$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    iget-object v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfsight/apm/template/a;

    invoke-virtual {v3}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v2, v0, Lcom/perfsight/apm/portal/TApmAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Lcom/perfsight/apm/template/a;->a(Landroid/content/Context;)V

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v3, v4, v5, v9}, Lcom/perfsight/apm/template/a;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    goto :goto_0

    :cond_6
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initContext ignored by "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    return v2
.end method

.method public initStepEventContext()V
    .locals 0

    return-void
.end method

.method public linkStepEventSession(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "POST_STEP_EVENT"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/perfsight/apm/template/a;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "linkStepEventSession ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public markLevelContinue()V
    .locals 2

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfsight/apm/template/a;

    invoke-virtual {v1}, Lcom/perfsight/apm/template/a;->i()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public markLevelFin()V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "MARK_LEVEL_FIN"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MarkLevelFin: "

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->j()V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "markLevelFin ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public markLevelLoad(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "MARK_LEVEL_LOAD"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MarkLevelLoad disabled by cc"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MarkLevelLoad: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/perfsight/apm/template/a;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MarkLevelLoad ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public markLevelLoadCompleted()V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "MARK_LEVEL_LOAD_COMPLETED"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->k()V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "markLevelLoadCompleted ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public markLevelPause()V
    .locals 2

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfsight/apm/template/a;

    invoke-virtual {v1}, Lcom/perfsight/apm/template/a;->l()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public postCoordinates(FFFFFF)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v2, "POST_TRACK_STATE"

    invoke-virtual {v1, v2}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/perfsight/apm/template/a;

    invoke-virtual {v4}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/perfsight/apm/template/a;->a(FFFFFF)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "postCoordinates ignored by "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public postEvent(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "POST_EVENT"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/perfsight/apm/template/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "postEvent is ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public postEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "POST_EVENT"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/perfsight/apm/template/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "postEvent ss ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public postEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "POST_EVENT"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/perfsight/apm/template/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "postEvent map ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public postNetLatency(I)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "POST_NETWORK_LATENCY"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/perfsight/apm/template/a;->b(I)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "postNetLatency ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public postStepEvent(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v2, "POST_STEP_EVENT"

    invoke-virtual {v1, v2}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/perfsight/apm/template/a;

    invoke-virtual {v4}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/perfsight/apm/template/a;->a(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "postStepEvent ignored by "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public releaseStepEventContext()V
    .locals 0

    return-void
.end method

.method public saveFps(FIIIIIIIIILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v2, "SAVE_FPS"

    invoke-virtual {v1, v2}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SaveFps: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p11

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfsight/apm/template/a;

    invoke-virtual {v4}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-virtual/range {v4 .. v15}, Lcom/perfsight/apm/template/a;->a(FIIIIIIIIILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saveFps ignored by "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public saveGpuInfo(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "MARK_LEVEL_LOAD"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SaveGpuInfo: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/perfsight/apm/template/a;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveFps ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public scanWifiInfo()V
    .locals 2

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfsight/apm/template/a;

    invoke-virtual {v1}, Lcom/perfsight/apm/template/a;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDefinedDeviceClass(I)V
    .locals 4

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "DEF_DCLS"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/perfsight/apm/template/a;->c(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setEngineMetaInfo(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 13

    move v0, p1

    sget-object v1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;->c:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;->b:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;->a:Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;

    :goto_0
    move-object v2, v1

    invoke-static {}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->b()Lcom/perfsight/apm/apm/EngineMetaInfoHandler;

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v2 .. v12}, Lcom/perfsight/apm/apm/EngineMetaInfoHandler;->a(Lcom/perfsight/apm/apm/EngineMetaInfoHandler$a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "SET_OPENID"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/perfsight/apm/template/a;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setQulaity(II)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "SET_QUALITY"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/perfsight/apm/template/a;->a(II)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setQulaity ignored by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setServerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "SET_SERVERINFO"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/perfsight/apm/template/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setTargetFramerate(I)V
    .locals 2

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfsight/apm/template/a;

    invoke-virtual {v1, p1}, Lcom/perfsight/apm/template/a;->d(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVersionIden(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mCCStrategy:Lcom/perfsight/apm/template/CCStrategyTemplate;

    const-string v1, "SET_VERSION_IDEN"

    invoke-virtual {v0, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfsight/apm/template/a;

    invoke-virtual {v2}, Lcom/perfsight/apm/template/a;->g()Lcom/perfsight/apm/template/CCStrategyTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/perfsight/apm/template/CCStrategyTemplate;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/perfsight/apm/template/a;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public syncServerTime(J)V
    .locals 2

    const-string/jumbo v0, "syncServerTime"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfsight/apm/portal/TApmAgent;->mSDKKitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfsight/apm/template/a;

    invoke-virtual {v1, p1, p2}, Lcom/perfsight/apm/template/a;->a(J)V

    goto :goto_0

    :cond_0
    return-void
.end method
