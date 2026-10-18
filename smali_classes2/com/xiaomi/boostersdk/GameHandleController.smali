.class public Lcom/xiaomi/boostersdk/GameHandleController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_MIUI_INTERNAL_STORAGE:Ljava/lang/String; = "ro.miui.internal.storage"

.field private static final KEY_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field private static final TAG:Ljava/lang/String; = "GameHandleController"

.field private static mHasRegisterThermalListener:Z = false

.field private static mSetting:Z

.field private static mThermalControlReceiver:Landroid/content/BroadcastReceiver;

.field private static sCallBack:Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;

.field private static sHasRegisterSystemCallback:Z

.field private static sSupport:Z

.field private static sSystemCallback:Lcom/xiaomi/boostersdk/SystemCallback;

.field private static sSystemCallbackReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/boostersdk/GameHandleController$1;

    invoke-direct {v0}, Lcom/xiaomi/boostersdk/GameHandleController$1;-><init>()V

    sput-object v0, Lcom/xiaomi/boostersdk/GameHandleController;->mThermalControlReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/boostersdk/GameHandleController;->sHasRegisterSystemCallback:Z

    new-instance v0, Lcom/xiaomi/boostersdk/GameHandleController$2;

    invoke-direct {v0}, Lcom/xiaomi/boostersdk/GameHandleController$2;-><init>()V

    sput-object v0, Lcom/xiaomi/boostersdk/GameHandleController;->sSystemCallbackReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/boostersdk/GameHandleController;->sCallBack:Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;

    return-object v0
.end method

.method public static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/boostersdk/GameHandleController;->mHasRegisterThermalListener:Z

    return v0
.end method

.method public static synthetic access$200()Lcom/xiaomi/boostersdk/SystemCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/boostersdk/GameHandleController;->sSystemCallback:Lcom/xiaomi/boostersdk/SystemCallback;

    return-object v0
.end method

.method public static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/boostersdk/GameHandleController;->sHasRegisterSystemCallback:Z

    return v0
.end method

.method public static checkIfSupportGameBooster()Z
    .locals 3

    sget-boolean v0, Lcom/xiaomi/boostersdk/GameHandleController;->mSetting:Z

    if-nez v0, :cond_2

    const-string v0, "ro.miui.ui.version.code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/boostersdk/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0, v1}, Lcom/xiaomi/boostersdk/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ro.miui.internal.storage"

    invoke-static {v0, v1}, Lcom/xiaomi/boostersdk/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/xiaomi/boostersdk/GameHandleController;->sSupport:Z

    sput-boolean v2, Lcom/xiaomi/boostersdk/GameHandleController;->mSetting:Z

    :cond_2
    sget-boolean v0, Lcom/xiaomi/boostersdk/GameHandleController;->sSupport:Z

    return v0
.end method

.method public static registerSystemCallback(Landroid/content/Context;Lcom/xiaomi/boostersdk/SystemCallback;)Z
    .locals 3

    sget-boolean v0, Lcom/xiaomi/boostersdk/GameHandleController;->sHasRegisterSystemCallback:Z

    const/4 v1, 0x0

    const-string v2, "GameHandleController"

    if-nez v0, :cond_2

    invoke-static {}, Lcom/xiaomi/boostersdk/GameHandleController;->checkIfSupportGameBooster()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_system_callback"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/xiaomi/boostersdk/GameHandleController;->sSystemCallbackReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaomi/boostersdk/GameHandleController;->sSystemCallbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    sput-object p1, Lcom/xiaomi/boostersdk/GameHandleController;->sSystemCallback:Lcom/xiaomi/boostersdk/SystemCallback;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/xiaomi/boostersdk/GameHandleController;->sHasRegisterSystemCallback:Z

    return p0

    :cond_1
    const-string p0, "registerSystemCallback failed! The system isn\'t supported."

    :goto_1
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p0, "registerSystemCallback failed! you have registered SystemCallback."

    goto :goto_1
.end method

.method public static registerThermalControlListener(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/boostersdk/GameHandleController;->mHasRegisterThermalListener:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/boostersdk/GameHandleController;->checkIfSupportGameBooster()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_thermal_control_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/xiaomi/boostersdk/GameHandleController;->mThermalControlReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaomi/boostersdk/GameHandleController;->mThermalControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    sput-object p1, Lcom/xiaomi/boostersdk/GameHandleController;->sCallBack:Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/xiaomi/boostersdk/GameHandleController;->mHasRegisterThermalListener:Z

    :cond_1
    return-void
.end method

.method public static unregisterSystemCallback(Landroid/content/Context;Lcom/xiaomi/boostersdk/SystemCallback;)Z
    .locals 1

    sget-boolean p1, Lcom/xiaomi/boostersdk/GameHandleController;->sHasRegisterSystemCallback:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaomi/boostersdk/GameHandleController;->sSystemCallbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-boolean v0, Lcom/xiaomi/boostersdk/GameHandleController;->sHasRegisterSystemCallback:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "GameHandleController"

    const-string p1, "unregisterSystemCallback failed! you haven\'t registered SystemCallback."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static unregisterThermalControlListener(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V
    .locals 0

    sget-boolean p1, Lcom/xiaomi/boostersdk/GameHandleController;->mHasRegisterThermalListener:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaomi/boostersdk/GameHandleController;->mThermalControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/xiaomi/boostersdk/GameHandleController;->mHasRegisterThermalListener:Z

    :cond_0
    return-void
.end method
