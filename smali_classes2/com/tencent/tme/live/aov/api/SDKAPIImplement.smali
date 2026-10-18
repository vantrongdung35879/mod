.class public Lcom/tencent/tme/live/aov/api/SDKAPIImplement;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/o2/c;


# static fields
.field private static volatile sInstance:Lcom/tencent/tme/live/aov/api/SDKAPIImplement;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private curLiveType:I

.field private volatile isConfigTimeOut:Z

.field private mAvailableCode:I

.field private final mConfigTimeOutRun:Ljava/lang/Runnable;

.field private mContext:Landroid/app/Application;

.field private mSDKProcessService:Lcom/tencent/tme/live/aov/api/SDKProcessService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SDKAPIImplement"

    iput-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->isConfigTimeOut:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->curLiveType:I

    new-instance v0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement$1;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement$1;-><init>(Lcom/tencent/tme/live/aov/api/SDKAPIImplement;)V

    iput-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mConfigTimeOutRun:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$002(Lcom/tencent/tme/live/aov/api/SDKAPIImplement;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->isConfigTimeOut:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/tencent/tme/live/aov/api/SDKAPIImplement;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->curLiveType:I

    return p0
.end method

.method private alreadyExistsTVPage()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/tme/live/v0/j;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    instance-of v2, v0, Lcom/tencent/tme/live/poptv/TMESPopTvActivity;

    if-nez v2, :cond_5

    instance-of v0, v0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkConfig(I)I
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object p1, Lcom/tencent/tme/live/v0/f;->c:Lcom/tencent/tme/live/w0/d;

    if-nez p1, :cond_1

    const/16 p1, 0xa

    goto :goto_3

    :cond_1
    sget-object p1, Lcom/tencent/tme/live/v0/f;->c:Lcom/tencent/tme/live/w0/d;

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->s:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/tencent/tme/live/v0/f;->c:Lcom/tencent/tme/live/w0/d;

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->v:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/tencent/tme/live/v0/f;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    if-eqz p1, :cond_6

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 2
    :cond_3
    sget-object p1, Lcom/tencent/tme/live/v0/f;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    if-eqz p1, :cond_9

    .line 3
    sget-wide v0, Lcom/tencent/tme/live/j1/b;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_5

    .line 4
    const-string p1, "live_poptv_open_timestamp"

    invoke-static {p1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/tencent/tme/live/b1/l;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/tme/live/b1/l;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 6
    :cond_4
    sput-wide v2, Lcom/tencent/tme/live/j1/b;->a:J

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/tme/live/j1/b;->a:J

    sub-long/2addr v0, v2

    .line 7
    sget p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->p:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_9

    const/16 p1, 0xd

    goto :goto_3

    :cond_6
    :goto_0
    const/16 p1, 0xf

    goto :goto_3

    :cond_7
    :goto_1
    const/16 p1, 0xc

    goto :goto_3

    .line 8
    :cond_8
    sget-object p1, Lcom/tencent/tme/live/v0/f;->c:Lcom/tencent/tme/live/w0/d;

    if-eqz p1, :cond_9

    sget-object p1, Lcom/tencent/tme/live/v0/f;->c:Lcom/tencent/tme/live/w0/d;

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->v:Z

    if-nez p1, :cond_9

    const/16 p1, 0xb

    goto :goto_3

    :cond_9
    :goto_2
    const/4 p1, 0x0

    :goto_3
    return p1
.end method

.method private exit()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    const-string v2, "liveSdkExit"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    const-string v0, "callHostEngine"

    invoke-static {v0, p0}, Lcom/tencent/tme/live/x0/a;->b(Ljava/lang/String;Lcom/tencent/tme/live/o2/c;)V

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mConfigTimeOutRun:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance()Lcom/tencent/tme/live/aov/api/SDKAPIImplement;
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->sInstance:Lcom/tencent/tme/live/aov/api/SDKAPIImplement;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->sInstance:Lcom/tencent/tme/live/aov/api/SDKAPIImplement;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;

    invoke-direct {v1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->sInstance:Lcom/tencent/tme/live/aov/api/SDKAPIImplement;

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
    sget-object v0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->sInstance:Lcom/tencent/tme/live/aov/api/SDKAPIImplement;

    return-object v0
.end method

.method private launchTVMainPage()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->available(I)I

    move-result v1

    const-string v2, "SDKAPIImplement"

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "launchTVMainPage: availableCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->callAsyncStartCallback(II)V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v1

    iput-boolean v0, v1, Lcom/tencent/tme/live/framework/common/b;->G:Z

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/framework/common/b;->c:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v3

    iget v3, v3, Lcom/tencent/tme/live/framework/common/b;->r:I

    invoke-direct {p0, v1, v3, v0}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->startInner(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v1

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/tencent/tme/live/framework/common/b;->G:Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "launchTVMainPage: code:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerEvent()V
    .locals 1

    const-string v0, "callHostEngine"

    invoke-static {v0, p0}, Lcom/tencent/tme/live/x0/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/o2/c;)V

    const-string v0, "jump2MainTVPage"

    invoke-static {v0, p0}, Lcom/tencent/tme/live/x0/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/o2/c;)V

    return-void
.end method

.method private startActivity(I)I
    .locals 4

    const/4 v0, 0x1

    const/high16 v1, 0x4000000

    const/high16 v2, 0x10000000

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mContext:Landroid/app/Application;

    const-class v3, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mContext:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->registerEvent()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mContext:Landroid/app/Application;

    const-class v3, Lcom/tencent/tme/live/poptv/TMESPopTvActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/tme/live/v0/f;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    const-string v1, "PopTVCfgBean"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_1
    const/16 p1, 0x3e7

    return p1
.end method

.method private startInner(Ljava/lang/String;II)I
    .locals 2

    invoke-direct {p0, p3}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->checkConfig(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mContext:Landroid/app/Application;

    if-nez v0, :cond_1

    const/16 p1, 0x199

    return p1

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateGameBean]:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Globals"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/tencent/tme/live/v0/f;->b:Lcom/tencent/tme/live/framework/common/b;

    if-nez v0, :cond_2

    const/16 p1, 0x198

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/tme/live/v0/f;->b:Lcom/tencent/tme/live/framework/common/b;

    iput-object p1, v0, Lcom/tencent/tme/live/framework/common/b;->c:Ljava/lang/String;

    sget-object p1, Lcom/tencent/tme/live/v0/f;->b:Lcom/tencent/tme/live/framework/common/b;

    iput p2, p1, Lcom/tencent/tme/live/framework/common/b;->r:I

    sget-object p1, Lcom/tencent/tme/live/v0/f;->b:Lcom/tencent/tme/live/framework/common/b;

    iput p3, p1, Lcom/tencent/tme/live/framework/common/b;->q:I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    return p1

    .line 2
    :cond_4
    invoke-direct {p0, p3}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->startActivity(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public available(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "available liveType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mAvailableCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKAPIImplement"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mAvailableCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->checkConfig(I)I

    move-result p1

    if-eqz p1, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/tencent/tme/live/b1/n;->a()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x64

    return p1

    :cond_2
    iget p1, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mAvailableCode:I

    return p1
.end method

.method public available(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "liveType"

    .line 1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->available(I)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x5

    return p1
.end method

.method public callAsyncStartCallback(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callAsyncStartCallback:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKAPIImplement"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startCallback"

    invoke-static {v0, p1, p2}, Lcom/tencent/tme/live/aov/api/APIConstants;->getAsyncCallbackInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->callHostEngine(Ljava/lang/String;)V

    return-void
.end method

.method public callGameCommonFun(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mSDKProcessService:Lcom/tencent/tme/live/aov/api/SDKProcessService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tme/live/aov/api/SDKProcessService;->sendMessageToHost(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public callHostEngine(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mSDKProcessService:Lcom/tencent/tme/live/aov/api/SDKProcessService;

    if-eqz v0, :cond_0

    const-string v1, "callHostEngine"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tme/live/aov/api/SDKProcessService;->sendMessageToHost(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public init(Ljava/lang/String;Lcom/tencent/tme/live/aov/api/SDKProcessService;)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "msdkUrlParam"

    const-string v3, "buglyUrl"

    const-string v4, "env"

    const-string v5, "gameUid"

    const-string v6, "extra"

    const-string v7, "adultStatus"

    const-string v8, "language"

    const-string v9, "isGameDebug"

    const-string v10, "userLevel"

    const-string v11, "channel"

    const-string v12, "1"

    const-string v13, ""

    move-object/from16 v14, p2

    iput-object v14, v1, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mSDKProcessService:Lcom/tencent/tme/live/aov/api/SDKProcessService;

    invoke-virtual/range {p2 .. p2}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v14

    iput-object v14, v1, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mContext:Landroid/app/Application;

    .line 1
    sput-object v2, Lcom/tencent/tme/live/aov/common/a;->b:Ljava/lang/String;

    if-nez v14, :cond_0

    const/16 v0, 0x199

    goto/16 :goto_c

    .line 2
    :cond_0
    sput-object v14, Lcom/tencent/tme/live/v0/f;->a:Landroid/app/Application;

    .line 3
    sget-object v15, Lcom/tencent/tme/live/v0/f;->b:Lcom/tencent/tme/live/framework/common/b;

    if-nez v15, :cond_1

    .line 4
    new-instance v15, Lcom/tencent/tme/live/framework/common/b;

    invoke-direct {v15}, Lcom/tencent/tme/live/framework/common/b;-><init>()V

    :cond_1
    const/16 v16, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->b:Ljava/lang/String;

    :cond_2
    const-string v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->c:Ljava/lang/String;

    :cond_3
    const-string v2, "openid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->g:Ljava/lang/String;

    :cond_4
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->d:Ljava/lang/String;

    :cond_5
    const-string v2, "area"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->e:Ljava/lang/String;

    :cond_6
    const-string v2, "nickName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    new-instance v11, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v17, v14

    const/4 v14, 0x1

    :try_start_1
    invoke-static {v2, v14}, Lcom/tencent/tme/live/v/d;->a([BI)[B

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v11, v15, Lcom/tencent/tme/live/framework/common/b;->h:Ljava/lang/String;

    goto :goto_0

    :cond_7
    move-object/from16 v17, v14

    :goto_0
    const-string v2, "gameVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->i:Ljava/lang/String;

    :cond_8
    const-string v2, "unityVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->m:Ljava/lang/String;

    :cond_9
    const-string v2, "gameCallObjName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->k:Ljava/lang/String;

    :cond_a
    const-string v2, "gameCallObjMethod"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->l:Ljava/lang/String;

    :cond_b
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    if-nez v10, :cond_c

    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_0
    :cond_c
    const/4 v2, 0x0

    .line 6
    :goto_1
    :try_start_3
    iput v2, v15, Lcom/tencent/tme/live/framework/common/b;->j:I

    :cond_d
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 7
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v9, :cond_e

    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_1
    nop

    :cond_e
    const/4 v2, 0x0

    :goto_2
    const/4 v9, 0x1

    if-ne v2, v9, :cond_f

    const/4 v2, 0x1

    goto :goto_3

    :cond_f
    const/4 v2, 0x0

    .line 8
    :goto_3
    :try_start_5
    iput-boolean v2, v15, Lcom/tencent/tme/live/framework/common/b;->n:Z

    :cond_10
    const-string v2, "partition"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->f:Ljava/lang/String;

    :cond_11
    const-string v2, "resourcePath"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->o:Ljava/lang/String;

    :cond_12
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 9
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    if-nez v8, :cond_13

    :try_start_6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_2
    :cond_13
    const/4 v2, 0x0

    .line 10
    :goto_4
    :try_start_7
    iput v2, v15, Lcom/tencent/tme/live/framework/common/b;->p:I

    :cond_14
    const-string v2, "pfKey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_15

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->s:Ljava/lang/String;

    :cond_15
    const-string v2, "pf"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_16

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->t:Ljava/lang/String;

    :cond_16
    const-string v2, "loginKit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->u:Ljava/lang/String;

    :cond_17
    const-string v2, "buglyid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_18

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->w:Ljava/lang/String;

    :cond_18
    const-string v2, "regionid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->x:Ljava/lang/String;

    :cond_19
    const-string v2, "roleid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1a

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->y:Ljava/lang/String;

    :cond_1a
    const-string v2, "platid"

    invoke-virtual {v1, v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->v:Ljava/lang/String;

    const-string v2, "gameid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1b

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->z:Ljava/lang/String;

    :cond_1b
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 11
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    if-nez v7, :cond_1c

    :try_start_8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_3
    :cond_1c
    const/4 v2, 0x0

    .line 12
    :goto_5
    :try_start_9
    iput v2, v15, Lcom/tencent/tme/live/framework/common/b;->A:I

    :cond_1d
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->B:Ljava/lang/String;

    :cond_1e
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->C:Ljava/lang/String;

    :cond_1f
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->D:Ljava/lang/String;

    :cond_20
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1, v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->E:Ljava/lang/String;

    :cond_21
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1, v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->F:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v17, v14

    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x5

    iput v0, v15, Lcom/tencent/tme/live/framework/common/b;->a:I

    .line 13
    :cond_22
    :goto_7
    sput-object v15, Lcom/tencent/tme/live/v0/f;->b:Lcom/tencent/tme/live/framework/common/b;

    const-string v0, "[setGameBean]:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Lcom/tencent/tme/live/framework/common/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Globals"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x19b

    :goto_8
    move-object/from16 v1, p0

    goto/16 :goto_c

    :cond_23
    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->x:Ljava/lang/String;

    iget v1, v15, Lcom/tencent/tme/live/framework/common/b;->p:I

    invoke-static {v0, v1}, Lcom/tencent/tme/live/b1/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x19c

    goto :goto_8

    :cond_24
    sget-boolean v0, Lcom/tencent/tme/live/aov/common/a;->a:Z

    if-nez v0, :cond_25

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    sput v0, Lcom/tencent/tme/live/b/a;->a:I

    .line 17
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/tencent/tme/live/b/a;->b:Ljava/lang/String;

    .line 19
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/tencent/tme/live/b/a;->c:Ljava/lang/String;

    .line 21
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/tencent/tme/live/b/a;->d:Ljava/lang/String;

    .line 23
    sget v0, Lcom/tencent/tme/live/b/a;->a:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_25

    const/16 v0, 0x191

    goto :goto_8

    :cond_25
    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->x:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/tme/live/b1/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 25
    sput-boolean v16, Lcom/tencent/tme/live/t1/e;->b:Z

    sput-object v0, Lcom/tencent/tme/live/t1/e;->c:Ljava/lang/String;

    .line 26
    :cond_26
    invoke-static/range {v16 .. v16}, Lcom/tencent/tme/live/t1/e;->a(Z)V

    .line 27
    invoke-virtual/range {v17 .. v17}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    iget-object v1, v15, Lcom/tencent/tme/live/framework/common/b;->x:Ljava/lang/String;

    iget v2, v15, Lcom/tencent/tme/live/framework/common/b;->p:I

    iget-object v3, v15, Lcom/tencent/tme/live/framework/common/b;->D:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->a:Landroid/content/Context;

    sget v0, Lcom/tencent/tme/live/aov/common/Constants$Biz;->CLIENT_TYPE:I

    sput v0, Lcom/tencent/tme/live/e/a;->b:I

    sput-boolean v16, Lcom/tencent/tme/live/e/a;->c:Z

    const v0, 0x4c4c788

    sput v0, Lcom/tencent/tme/live/e/a;->d:I

    invoke-static {v1, v2}, Lcom/tencent/tme/live/b1/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/e/a;->e:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v16

    const/4 v7, 0x1

    aput-object v0, v6, v7

    aput-object v3, v6, v5

    const-string v0, "op_%s_%d_%s"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/tencent/tme/live/b1/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {v3, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v16

    const/4 v6, 0x1

    aput-object v0, v3, v6

    const-string v0, "op_%s_%d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "op"

    invoke-static {v0, v3}, Lcom/tencent/tme/live/b1/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 30
    :cond_27
    sput-object v13, Lcom/tencent/tme/live/e/a;->f:Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v16

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "report_%s_%d"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "report"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/b1/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    sput-object v0, Lcom/tencent/tme/live/e/a;->g:Ljava/lang/String;

    const-string v0, "b45819e15e7c86a6d658c71e263f81f4"

    sput-object v0, Lcom/tencent/tme/live/e/a;->h:Ljava/lang/String;

    const-string v0, "codm!a23+1z3$s-x"

    sput-object v0, Lcom/tencent/tme/live/e/a;->j:Ljava/lang/String;

    const-string v0, "aov"

    sput-object v0, Lcom/tencent/tme/live/e/a;->k:Ljava/lang/String;

    const-string v0, "initNetConfig conn:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/tme/live/e/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Initialization"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initNetConfig http:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/tme/live/e/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initNetConfig report:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/tme/live/e/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->b:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->m:Ljava/lang/String;

    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->g:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->n:Ljava/lang/String;

    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->d:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->o:Ljava/lang/String;

    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->f:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->p:Ljava/lang/String;

    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->v:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->q:Ljava/lang/String;

    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->e:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->r:Ljava/lang/String;

    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->x:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->s:Ljava/lang/String;

    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->z:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->t:Ljava/lang/String;

    .line 33
    iget v0, v15, Lcom/tencent/tme/live/framework/common/b;->p:I

    if-nez v0, :cond_28

    const-string v0, "ALL"

    goto :goto_9

    :cond_28
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_9
    sput-object v0, Lcom/tencent/tme/live/e/a;->u:Ljava/lang/String;

    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->c:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->v:Ljava/lang/String;

    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->u:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->w:Ljava/lang/String;

    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->h:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->x:Ljava/lang/String;

    iget-object v0, v15, Lcom/tencent/tme/live/framework/common/b;->F:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tme/live/e/a;->y:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/tencent/tme/live/aov/common/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/tme/live/p0/b;->a(Ljava/lang/String;Lcom/tencent/tme/live/p0/b$a;)V

    .line 36
    invoke-virtual/range {v17 .. v17}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v15, Lcom/tencent/tme/live/framework/common/b;->w:Ljava/lang/String;

    iget-object v3, v15, Lcom/tencent/tme/live/framework/common/b;->E:Ljava/lang/String;

    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v6, 0x1

    goto :goto_b

    :cond_29
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "com.uqm.crashsight.crashreport.CrashReport"

    if-nez v6, :cond_2a

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v16

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v3, v9, v16

    const-string v3, "setServerUrl"

    invoke-static {v7, v3, v8, v9}, Lcom/tencent/tme/live/b1/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_2a
    const/4 v6, 0x1

    :goto_a
    new-array v3, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v3, v16

    const-class v8, Ljava/lang/String;

    aput-object v8, v3, v6

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v16

    aput-object v2, v4, v6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v4, v5

    const-string v0, "initCrashReport"

    invoke-static {v7, v0, v3, v4}, Lcom/tencent/tme/live/b1/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :goto_b
    invoke-static/range {v17 .. v17}, Lcom/tencent/tme/live/framework/view/webview/WebViewUtil;->handleWebViewDir(Landroid/content/Context;)V

    sput-boolean v6, Lcom/tencent/tme/live/aov/common/a;->a:Z

    const-string v0, "init code:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v15, Lcom/tencent/tme/live/framework/common/b;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",isInit:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/tencent/tme/live/aov/common/a;->a:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v15, Lcom/tencent/tme/live/framework/common/b;->a:I

    goto/16 :goto_8

    .line 39
    :goto_c
    iput v0, v1, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mAvailableCode:I

    const-string v0, "init str:"

    const-string v2, ",code:"

    move-object/from16 v3, p1

    invoke-static {v0, v3, v2}, Lcom/tencent/tme/live/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mAvailableCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SDKAPIImplement"

    invoke-static {v2, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mAvailableCode:I

    return v0
.end method

.method lambda$start$0$com-tencent-tme-live-aov-api-SDKAPIImplement(ILjava/lang/String;ILcom/tencent/tme/live/w0/d;)V
    .locals 2

    .line 0
    const-string v0, "loadGlobalConfig is called isConfigTimeOut: "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->isConfigTimeOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKAPIImplement"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->isConfigTimeOut:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mConfigTimeOutRun:Ljava/lang/Runnable;

    .line 1
    invoke-virtual {v0}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p4, :cond_1

    const/16 p2, 0xa

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0, p2, p3, p1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->startInner(Ljava/lang/String;II)I

    move-result p2

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->callAsyncStartCallback(II)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "callHostEngine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p2, Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->callHostEngine(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "jump2MainTVPage"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->launchTVMainPage()V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[sendCommand]event:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKAPIImplement"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "available"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->start(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->exit()I

    move-result p1

    return p1

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->available(Ljava/lang/String;)I

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x2bbe7537 -> :sswitch_2
        0x2fb91e -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start(Ljava/lang/String;)I
    .locals 7

    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->alreadyExistsTVPage()Z

    move-result v0

    const-string v1, "SDKAPIImplement"

    if-eqz v0, :cond_0

    const-string p1, "_ERROR_ContainerIsFinished"

    invoke-static {v1, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xd4

    return p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "liveType"

    .line 1
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v3, :cond_1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    :try_start_2
    iput p1, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->curLiveType:I

    const-string v3, "token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sourceType"

    .line 3
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v4, :cond_2

    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_1
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->available(I)I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v4, p1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->callAsyncStartCallback(II)V

    return v0

    :cond_3
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v4

    iget-boolean v4, v4, Lcom/tencent/tme/live/w0/d;->b:Z

    if-nez v4, :cond_4

    const-string v4, "mGlobalConfig is null"

    invoke-static {v1, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->isConfigTimeOut:Z

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->mConfigTimeOutRun:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v1}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v5, 0x7d0

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    new-instance v1, Lcom/tencent/tme/live/aov/api/SDKAPIImplement$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/aov/api/SDKAPIImplement;ILjava/lang/String;I)V

    .line 7
    sget-object p1, Lcom/tencent/tme/live/aov/common/a;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tencent/tme/live/p0/b;->a(Ljava/lang/String;Lcom/tencent/tme/live/p0/b$a;)V

    return v0

    .line 8
    :cond_4
    const-string v4, "mGlobalConfig is not null"

    invoke-static {v1, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, p1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->startInner(Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->callAsyncStartCallback(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return v0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget p1, p0, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->curLiveType:I

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->callAsyncStartCallback(II)V

    return v0
.end method
