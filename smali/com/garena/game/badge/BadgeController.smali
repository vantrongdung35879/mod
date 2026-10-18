.class public Lcom/garena/game/badge/BadgeController;
.super Ljava/lang/Object;
.source "BadgeController.java"


# static fields
.field private static volatile instance:Lcom/garena/game/badge/BadgeController;


# instance fields
.field private badgeChannel:Lcom/garena/game/badge/BadgeChannel;

.field private final channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/garena/game/badge/BadgeChannel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final homePackageArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/garena/game/badge/BadgeController;->homePackageArray:Ljava/util/List;

    return-void
.end method

.method private buildReturnJsonStr(ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "message",
            "e"
        }
    .end annotation

    .line 143
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p3, :cond_0

    .line 146
    :try_start_0
    const-string v1, "error"

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_0
    iget-object p3, p0, Lcom/garena/game/badge/BadgeController;->badgeChannel:Lcom/garena/game/badge/BadgeChannel;

    if-eqz p3, :cond_1

    .line 149
    const-string v1, "channel"

    invoke-virtual {p3}, Lcom/garena/game/badge/BadgeChannel;->getChannelName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string p3, "launcherPackageNameList"

    iget-object v1, p0, Lcom/garena/game/badge/BadgeController;->badgeChannel:Lcom/garena/game/badge/BadgeChannel;

    invoke-virtual {v1}, Lcom/garena/game/badge/BadgeChannel;->getLauncherPackageName()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string p3, "manufacturerList"

    iget-object v1, p0, Lcom/garena/game/badge/BadgeController;->badgeChannel:Lcom/garena/game/badge/BadgeChannel;

    invoke-virtual {v1}, Lcom/garena/game/badge/BadgeChannel;->manufacturerArray()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 153
    :cond_1
    const-string p2, "channel is null"

    .line 155
    :goto_0
    const-string p3, "code"

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    const-string p1, "message"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string p1, "manufacturer"

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string p1, "homePackageList"

    iget-object p2, p0, Lcom/garena/game/badge/BadgeController;->homePackageArray:Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 162
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/garena/game/badge/BadgeController;
    .locals 2

    .line 99
    sget-object v0, Lcom/garena/game/badge/BadgeController;->instance:Lcom/garena/game/badge/BadgeController;

    if-nez v0, :cond_1

    .line 100
    const-class v0, Lcom/garena/game/badge/BadgeController;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/garena/game/badge/BadgeController;->instance:Lcom/garena/game/badge/BadgeController;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/garena/game/badge/BadgeController;

    invoke-direct {v1}, Lcom/garena/game/badge/BadgeController;-><init>()V

    sput-object v1, Lcom/garena/game/badge/BadgeController;->instance:Lcom/garena/game/badge/BadgeController;

    .line 104
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 106
    :cond_1
    :goto_0
    sget-object v0, Lcom/garena/game/badge/BadgeController;->instance:Lcom/garena/game/badge/BadgeController;

    return-object v0
.end method

.method private initChannel(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->badgeChannel:Lcom/garena/game/badge/BadgeChannel;

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->homePackageArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 62
    iget-object v2, p0, Lcom/garena/game/badge/BadgeController;->homePackageArray:Ljava/util/List;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/OppoBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/SamsungBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/VivoBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/XiaomiBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/HonorBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/HtcBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/HuaweiBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/AdwBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/ApexBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/AsusBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/EverythingMeBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/LenovoBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/LGBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/NovaBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/NubiaBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/OnePlusBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/SonyBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/ZTEBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/ZukBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    const-class v1, Lcom/garena/game/badge/channel/DefaultBadgeChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-direct {p0, p1}, Lcom/garena/game/badge/BadgeController;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 89
    iget-object v1, p0, Lcom/garena/game/badge/BadgeController;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x1

    .line 90
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/ComponentName;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 91
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/garena/game/badge/BadgeChannel;

    .line 92
    invoke-virtual {v2, p1}, Lcom/garena/game/badge/BadgeChannel;->isSupportBadge(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    iput-object v2, p0, Lcom/garena/game/badge/BadgeController;->badgeChannel:Lcom/garena/game/badge/BadgeChannel;

    goto :goto_1

    :cond_3
    return-void

    .line 87
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "componentName is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBadgeChannel()Lcom/garena/game/badge/BadgeChannel;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->badgeChannel:Lcom/garena/game/badge/BadgeChannel;

    return-object v0
.end method

.method public getChannelInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 133
    const-string v0, "info"

    :try_start_0
    invoke-direct {p0, p1}, Lcom/garena/game/badge/BadgeController;->initChannel(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/16 v1, 0x3e8

    .line 134
    invoke-direct {p0, v1, v0, p1}, Lcom/garena/game/badge/BadgeController;->buildReturnJsonStr(ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x3e8

    .line 137
    invoke-direct {p0, v1, v0, p1}, Lcom/garena/game/badge/BadgeController;->buildReturnJsonStr(ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setBadge(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "count"
        }
    .end annotation

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->badgeChannel:Lcom/garena/game/badge/BadgeChannel;

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lcom/garena/game/badge/BadgeController;->initChannel(Landroid/content/Context;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/garena/game/badge/BadgeController;->badgeChannel:Lcom/garena/game/badge/BadgeChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 117
    const-string p1, "badgeChannel is null"

    const/16 p2, -0x3e7

    invoke-direct {p0, p2, p1, v1}, Lcom/garena/game/badge/BadgeController;->buildReturnJsonStr(ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 120
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/garena/game/badge/BadgeChannel;->changeBadge(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    const-string p1, "badge success"

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, v1}, Lcom/garena/game/badge/BadgeController;->buildReturnJsonStr(ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 123
    :cond_2
    const-string p1, "badge fail"

    const/4 p2, -0x1

    invoke-direct {p0, p2, p1, v1}, Lcom/garena/game/badge/BadgeController;->buildReturnJsonStr(ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p2, -0xa

    .line 127
    const-string v0, "set badge error."

    invoke-direct {p0, p2, v0, p1}, Lcom/garena/game/badge/BadgeController;->buildReturnJsonStr(ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
