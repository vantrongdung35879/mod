.class public Lcom/tencent/tme/live/aov/api/HostAPIWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/aov/api/HostAPIWrapper$ServiceCallback;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private hasInit:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mEventCacheMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGameInitJsonParam:Ljava/lang/String;

.field private final mHostListener:Lcom/tencent/tme/biz/api/HostListener;

.field private mSDKApiInterface:Lcom/tencent/tme/biz/api/SDKApiInterface;

.field private mUnityCallObjMethod:Ljava/lang/String;

.field private mUnityCallObjName:Ljava/lang/String;

.field private mWeakReferenceContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HostAPIWrapper"

    iput-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->TAG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mUnityCallObjName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mUnityCallObjMethod:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mEventCacheMap:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->hasInit:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mSDKApiInterface:Lcom/tencent/tme/biz/api/SDKApiInterface;

    iput-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$3;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$3;-><init>(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)V

    iput-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mHostListener:Lcom/tencent/tme/biz/api/HostListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)Lcom/tencent/tme/biz/api/SDKApiInterface;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mSDKApiInterface:Lcom/tencent/tme/biz/api/SDKApiInterface;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;Lcom/tencent/tme/biz/api/SDKApiInterface;)Lcom/tencent/tme/biz/api/SDKApiInterface;
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mSDKApiInterface:Lcom/tencent/tme/biz/api/SDKApiInterface;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)Lcom/tencent/tme/biz/api/HostListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mHostListener:Lcom/tencent/tme/biz/api/HostListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->sendInitOrUpdateCache()V

    return-void
.end method

.method public static synthetic access$500(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->sendCache()V

    return-void
.end method

.method public static synthetic access$600(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mWeakReferenceContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private addCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mEventCacheMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized connectService(Lcom/tencent/tme/live/aov/api/HostAPIWrapper$ServiceCallback;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    const/16 p1, 0x192

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$1;-><init>(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;Lcom/tencent/tme/live/aov/api/HostAPIWrapper$ServiceCallback;)V

    iput-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mConnection:Landroid/content/ServiceConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x193

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/tme/live/aov/api/SDKProcessService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    :try_start_3
    const-string v1, "bindService error : "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    const-string v1, "HostAPIWrapper"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mWeakReferenceContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/tme/live/aov/api/HostAPIWrapper;
    .locals 2

    sget-object v0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->sInstance:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->sInstance:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    invoke-direct {v1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->sInstance:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

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
    sget-object v0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->sInstance:Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    return-object v0
.end method

.method private initCommon(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->hasInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->hasInit:Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->initLog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private initLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/tencent/tme/live/b1/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1
    sput-boolean p2, Lcom/tencent/tme/live/t1/e;->b:Z

    sput-object p1, Lcom/tencent/tme/live/t1/e;->c:Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/tencent/tme/live/t1/e;->a(Z)V

    :cond_0
    return-void
.end method

.method private isBinderAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mSDKApiInterface:Lcom/tencent/tme/biz/api/SDKApiInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mSDKApiInterface:Lcom/tencent/tme/biz/api/SDKApiInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareInt(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    :try_start_0
    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mGameInitJsonParam:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "gameCallObjName"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mUnityCallObjName:Ljava/lang/String;

    :cond_0
    const-string p1, "gameCallObjMethod"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mUnityCallObjMethod:Ljava/lang/String;

    :cond_1
    const-string p1, "regionid"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_1
    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->initCommon(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/s2/i;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private sendCache()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mEventCacheMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mSDKApiInterface:Lcom/tencent/tme/biz/api/SDKApiInterface;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2, v1}, Lcom/tencent/tme/biz/api/SDKApiInterface;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendSDKProcessCmdCache event:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->result:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HostAPIWrapper"

    invoke-static {v2, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mEventCacheMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method private sendCommand(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initOrUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->prepareInt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 p1, 0x19a

    return p1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->sendSDKProcessCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/16 p1, 0x3e7

    return p1
.end method

.method private sendInitOrUpdateCache()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mEventCacheMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "initOrUpdate"

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "HostAPIWrapper"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mEventCacheMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendInitOrUpdateCache:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mGameInitJsonParam:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendInitOrUpdateCache mGameInitJsonParam:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mSDKApiInterface:Lcom/tencent/tme/biz/api/SDKApiInterface;

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mSDKApiInterface:Lcom/tencent/tme/biz/api/SDKApiInterface;

    invoke-interface {v2, v1, v0}, Lcom/tencent/tme/biz/api/SDKApiInterface;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private sendSDKProcessCmd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mSDKApiInterface:Lcom/tencent/tme/biz/api/SDKApiInterface;

    const-string v1, "HostAPIWrapper"

    if-eqz v0, :cond_0

    const-string v0, "sendSDKProcessCmd isBinderAlive:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->isBinderAlive()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",event:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sendSDKProcessCmd mSDKApiInterface is null ,event:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v0, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->addCache(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$2;-><init>(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;)V

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->connectService(Lcom/tencent/tme/live/aov/api/HostAPIWrapper$ServiceCallback;)I

    move-result p1

    return p1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mSDKApiInterface:Lcom/tencent/tme/biz/api/SDKApiInterface;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tme/biz/api/SDKApiInterface;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/16 p1, 0x3e7

    return p1
.end method


# virtual methods
.method public callUnity(Ljava/lang/String;)V
    .locals 6

    const-string v0, "HostAPIWrapper"

    const-string v1, "callUnity, resultCode:"

    const-string v2, "callUnityFinal:"

    const-string v3, "callUnityPre:"

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mUnityCallObjName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mUnityCallObjMethod:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mWeakReferenceContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v4

    new-instance v5, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$4;

    invoke-direct {v5, p0, v3}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper$4;-><init>(Lcom/tencent/tme/live/aov/api/HostAPIWrapper;I)V

    invoke-virtual {v4, v5}, Lcom/tencent/tme/live/r2/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mUnityCallObjName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mUnityCallObjMethod:Ljava/lang/String;

    invoke-static {v1, v3, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mUnityCallObjName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mUnityCallObjMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    const-string v0, "event"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->sendCommand(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/16 p1, 0x3e7

    return p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->mWeakReferenceContext:Ljava/lang/ref/WeakReference;

    return-void
.end method
