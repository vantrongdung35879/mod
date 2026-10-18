.class public Lcom/xiaomi/boostersdk/GameBoosterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyHardwareResource(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/boostersdk/GameBoosterProxy;->applyHardwareResource(Ljava/lang/String;)V

    return-void
.end method

.method public static checkIfSupportGameBooster()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/boostersdk/GameBoosterProxy;->checkIfSupportGameBooster()Z

    move-result v0

    return v0
.end method

.method public static getPlatformShareGameData(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/boostersdk/GameBoosterProxy;->getPlatformShareGameData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registerSystemCallback(Landroid/content/Context;Lcom/xiaomi/boostersdk/SystemCallback;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/boostersdk/GameBoosterProxy;->registerSystemCallback(Landroid/content/Context;Lcom/xiaomi/boostersdk/SystemCallback;)Z

    move-result p0

    return p0
.end method

.method public static registerThermalControlListener(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/boostersdk/GameBoosterProxy;->registerThermalControlListener(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V

    return-void
.end method

.method public static unregisterSystemCallback(Landroid/content/Context;Lcom/xiaomi/boostersdk/SystemCallback;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/boostersdk/GameBoosterProxy;->unregisterSystemCallback(Landroid/content/Context;Lcom/xiaomi/boostersdk/SystemCallback;)Z

    move-result p0

    return p0
.end method

.method public static unregisterThermalControlListener(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/boostersdk/GameBoosterProxy;->unregisterThermalControlListener(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V

    return-void
.end method

.method public static updateGameInfo(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/boostersdk/GameBoosterProxy;->updateGameInfo(Ljava/lang/String;)V

    return-void
.end method
