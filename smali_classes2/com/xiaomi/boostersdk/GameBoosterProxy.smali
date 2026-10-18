.class public Lcom/xiaomi/boostersdk/GameBoosterProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "GameBoosterProxy"

.field private static mHasRegisterThermalListener:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyHardwareResource(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/xiaomi/boostersdk/GameHandleController;->checkIfSupportGameBooster()Z

    move-result v0

    const-string v1, "GameBoosterProxy"

    if-nez v0, :cond_0

    const-string p0, "the system dont support the gamebooster"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "com.xiaomi.joyose.JoyoseManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "handleGameBoosterForOneway"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v6

    aput-object p0, v3, v7

    invoke-static {v0, v2, v4, v3}, Lcom/xiaomi/boostersdk/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "the call throw an exception "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static checkIfSupportGameBooster()Z
    .locals 9

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/xiaomi/boostersdk/GameHandleController;->checkIfSupportGameBooster()Z

    move-result v1

    const-string v2, "GameBoosterProxy"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v0, "the system dont support the gamebooster"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    const-string v1, "com.xiaomi.joyose.JoyoseManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "handleGameBoosterForSync"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/16 v7, 0x3e9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v3

    const/4 v7, 0x0

    aput-object v7, v5, v8

    invoke-static {v1, v4, v6, v5}, Lcom/xiaomi/boostersdk/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "the call throw an exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getPlatformShareGameData(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const-string v1, "GameBoosterProxy"

    if-gtz p0, :cond_0

    const-string p0, "the cmd id is invalid"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/boostersdk/GameHandleController;->checkIfSupportGameBooster()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "the system dont support the gamebooster"

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v2, "com.xiaomi.joyose.JoyoseManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "handleGameBoosterForSync"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    aput-object p1, v4, v8

    invoke-static {v2, v3, v5, v4}, Lcom/xiaomi/boostersdk/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "the call throw an exception "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static registerSystemCallback(Landroid/content/Context;Lcom/xiaomi/boostersdk/SystemCallback;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/boostersdk/GameHandleController;->registerSystemCallback(Landroid/content/Context;Lcom/xiaomi/boostersdk/SystemCallback;)Z

    move-result p0

    return p0
.end method

.method public static registerThermalControlListener(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/boostersdk/GameHandleController;->registerThermalControlListener(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V

    return-void
.end method

.method public static unregisterSystemCallback(Landroid/content/Context;Lcom/xiaomi/boostersdk/SystemCallback;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/boostersdk/GameHandleController;->unregisterSystemCallback(Landroid/content/Context;Lcom/xiaomi/boostersdk/SystemCallback;)Z

    move-result p0

    return p0
.end method

.method public static unregisterThermalControlListener(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/boostersdk/GameHandleController;->unregisterThermalControlListener(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V

    return-void
.end method

.method public static updateGameInfo(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/xiaomi/boostersdk/GameHandleController;->checkIfSupportGameBooster()Z

    move-result v0

    const-string v1, "GameBoosterProxy"

    if-nez v0, :cond_0

    const-string p0, "the system dont support the gamebooster"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "com.xiaomi.joyose.JoyoseManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "handleGameBoosterForOneway"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v6

    aput-object p0, v3, v7

    invoke-static {v0, v2, v4, v3}, Lcom/xiaomi/boostersdk/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "the call throw an exception "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-void
.end method
