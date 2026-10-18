.class public Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# static fields
.field private static volatile sAppVersionCode:I

.field private static volatile sAppVersionName:Ljava/lang/String;

.field private static sApplicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAPPVersionCode()I
    .locals 3

    const-class v0, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;

    monitor-enter v0

    .line 91
    :try_start_0
    sget v1, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sAppVersionCode:I

    if-eqz v1, :cond_0

    .line 92
    sget v1, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sAppVersionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 94
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/DeviceInfoUtil;->getAPPVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sAppVersionCode:I

    .line 95
    sget v1, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sAppVersionCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getAPPVersionName()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sAppVersionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sAppVersionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 78
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sAppVersionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 80
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/DeviceInfoUtil;->getAPPVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sAppVersionName:Ljava/lang/String;

    .line 81
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sAppVersionName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 3

    .line 40
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 42
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    const-string v1, "currentApplication"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sApplicationContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 57
    :cond_0
    :goto_0
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 58
    const-string v0, "TGPA_ENQ"

    const-string v1, "AppUtil: context is null! U should init sdk first."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getGamePackageName()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 65
    const-string v0, ""

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ihoc/tgpatask/transceivertool/util/AppUtil;->sApplicationContext:Landroid/content/Context;

    :cond_0
    return-void
.end method
