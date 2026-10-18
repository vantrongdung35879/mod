.class public final Lcom/ihoc/mgpa/toolkit/util/EngineUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sGameEngineType:Lcom/ihoc/mgpa/gradish/K; = null

.field private static final sGameObjectCallbackName:Ljava/lang/String; = "notifySystemInfo"

.field private static final sGameObjectCallbackSuperFrameName:Ljava/lang/String; = "notifySuperFrameInfo"

.field private static sMainActivity:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnityGameObjectName:Ljava/lang/String; = "TGPAGameObject"

.field private static sUnityPlayer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sUnitySendMessageMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/K;->b:Lcom/ihoc/mgpa/gradish/K;

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sGameEngineType:Lcom/ihoc/mgpa/gradish/K;

    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sUnityPlayer:Ljava/lang/Class;

    .line 99
    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sUnitySendMessageMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUnityPlayerSendMessage()Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sUnityPlayer:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 2
    const-string v1, "com.unity3d.player.UnityPlayer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sUnityPlayer:Ljava/lang/Class;

    .line 4
    :cond_0
    sget-object v1, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sUnitySendMessageMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 5
    sget-object v1, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sUnityPlayer:Ljava/lang/Class;

    const-string v3, "UnitySendMessage"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    aput-object v5, v4, v2

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sUnitySendMessageMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v2

    .line 9
    :catchall_0
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Callback: check unity player send message error."

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private static getCocosMainActivity()Landroid/app/Activity;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string v1, "org.cocos2dx.lib.Cocos2dxActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    const-string v2, "getContext"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    const/4 v1, 0x0

    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "get cocos GameActivity exception. "

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getGameEngineType()Lcom/ihoc/mgpa/gradish/K;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sGameEngineType:Lcom/ihoc/mgpa/gradish/K;

    return-object v0
.end method

.method public static getGameMainActivity()Landroid/app/Activity;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "get game main activity success."

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getUnityMainActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "get unity activity success."

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 11
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getUE4MainActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "get ue4 activity success."

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 16
    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getUnrealMainActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "get unreal activity success."

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 21
    :cond_3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getCocosMainActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "get cocos activity success."

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 26
    :cond_4
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "get game main activity failed, ple check!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getMainActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getUE4MainActivity()Landroid/app/Activity;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string v1, "com.epicgames.ue4.GameActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    const-string v2, "Get"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    const/4 v1, 0x0

    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "get ue4 GameActivity exception. "

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getUnityMainActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-string v1, "currentActivity"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "try get unity main activity exception."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getUnrealMainActivity()Landroid/app/Activity;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string v1, "com.epicgames.unreal.GameActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    const-string v2, "Get"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    const/4 v1, 0x0

    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "get unreal GameActivity exception. "

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static notifySuperFrameInfoToUnity(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->checkUnityPlayerSendMessage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sUnitySendMessageMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sUnityPlayer:Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "TGPAGameObject"

    aput-object v4, v3, v1

    const-string v4, "notifySuperFrameInfo"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Callback: invoke unity send message exception."

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Callback: unity send message is not available!"

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static notifySystemInfoToUnity(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->checkUnityPlayerSendMessage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sUnitySendMessageMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sUnityPlayer:Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "TGPAGameObject"

    aput-object v4, v3, v1

    const-string v4, "notifySystemInfo"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Callback: invoke unity send message exception."

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Callback: unity send message is not available!"

    invoke-static {v0, p0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setGameEngineType(Lcom/ihoc/mgpa/gradish/K;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sGameEngineType:Lcom/ihoc/mgpa/gradish/K;

    return-void
.end method

.method public static setMainActivity(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->sMainActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method
