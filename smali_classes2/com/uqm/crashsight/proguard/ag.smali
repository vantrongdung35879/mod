.class public final Lcom/uqm/crashsight/proguard/ag;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static a:I = 0x0

.field private static b:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .locals 5

    .line 138
    sget-object v0, Lcom/uqm/crashsight/proguard/ag;->b:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    .line 140
    :cond_0
    sget v0, Lcom/uqm/crashsight/proguard/ag;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    const-string v4, "[CrashSight]"

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    .line 156
    const-string v0, "Game type has not been set."

    .line 7013
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7101
    sget-boolean v0, Lcom/uqm/crashsight/proguard/ag;->c:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 7104
    :cond_1
    sput-boolean v2, Lcom/uqm/crashsight/proguard/ag;->c:Z

    .line 7107
    const-string v0, "Trying :com.epicgames.ue4.GameActivity"

    .line 8013
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7108
    invoke-static {}, Lcom/uqm/crashsight/proguard/ag;->d()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_6

    .line 7113
    const-string v0, "Trying :com.epicgames.unreal.GameActivity"

    .line 9013
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7114
    invoke-static {}, Lcom/uqm/crashsight/proguard/ag;->e()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_6

    .line 7119
    const-string v0, "Trying :com.unity3d.player.UnityPlayer"

    .line 10013
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7120
    invoke-static {}, Lcom/uqm/crashsight/proguard/ag;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_6

    .line 7124
    const-string v0, "Trying :org.cocos2dx.lib.Cocos2dxActivity"

    .line 11013
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7125
    invoke-static {}, Lcom/uqm/crashsight/proguard/ag;->c()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_2
    const-string v0, "trying :com.epicgames.unreal.GameActivity"

    .line 6013
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/uqm/crashsight/proguard/ag;->e()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_3
    const-string v0, "trying :com.epicgames.ue4.GameActivity"

    .line 5013
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/uqm/crashsight/proguard/ag;->d()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/proguard/ag;->b()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/proguard/ag;->c()Landroid/app/Activity;

    move-result-object v0

    :cond_6
    :goto_0
    if-eqz v0, :cond_7

    .line 160
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/uqm/crashsight/proguard/ag;->b:Ljava/lang/ref/WeakReference;

    .line 163
    :cond_7
    sget-object v0, Lcom/uqm/crashsight/proguard/ag;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_8
    return-object v1
.end method

.method public static a(I)V
    .locals 0

    .line 27
    sput p0, Lcom/uqm/crashsight/proguard/ag;->a:I

    return-void
.end method

.method private static b()Landroid/app/Activity;
    .locals 3

    const/4 v0, 0x0

    .line 37
    :try_start_0
    const-string v1, "com.unity3d.player.UnityPlayer"

    const-string v2, "currentActivity"

    invoke-static {v1, v2, v0}, Lcom/uqm/crashsight/CrashSightStrategy$a;->getStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 38
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 39
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 42
    :catch_0
    const-string v1, "Failed to get activity of Unity."

    .line 1013
    const-string v2, "[CrashSight]"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private static c()Landroid/app/Activity;
    .locals 4

    const/4 v0, 0x0

    .line 54
    :try_start_0
    const-string v1, "org.cocos2dx.lib.Cocos2dxActivity"

    const-string v2, "getContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v0, v3}, Lcom/uqm/crashsight/CrashSightStrategy$a;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 56
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 59
    :catch_0
    const-string v1, "Failed to get activity of Cocos."

    .line 2013
    const-string v2, "[CrashSight]"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private static d()Landroid/app/Activity;
    .locals 4

    const/4 v0, 0x0

    .line 71
    :try_start_0
    const-string v1, "com.epicgames.ue4.GameActivity"

    const-string v2, "Get"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v0, v3}, Lcom/uqm/crashsight/CrashSightStrategy$a;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 73
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 76
    :catch_0
    const-string v1, "Failed to get activity of Unreal."

    .line 3013
    const-string v2, "[CrashSight]"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private static e()Landroid/app/Activity;
    .locals 4

    const/4 v0, 0x0

    .line 88
    :try_start_0
    const-string v1, "com.epicgames.unreal.GameActivity"

    const-string v2, "Get"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v0, v3}, Lcom/uqm/crashsight/CrashSightStrategy$a;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 90
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 93
    :catch_0
    const-string v1, "Failed to get activity of Unreal."

    .line 4013
    const-string v2, "[CrashSight]"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method
