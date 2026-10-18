.class public final Lcom/tencent/gsdk/api/GSDKPlatform;
.super Ljava/lang/Object;
.source "GSDKPlatform.java"


# static fields
.field private static info:Lcom/tencent/gsdk/api/b; = null

.field public static mFpsMode:Ljava/lang/String; = null

.field public static mOptionLevel:Ljava/lang/String; = null

.field public static mQualityLevel:Ljava/lang/String; = null

.field public static mRoomIp:Ljava/lang/String; = null

.field public static mTag:Ljava/lang/String; = "-1"

.field public static mZoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GSDKAddEventCustomParamsInGame(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSDKPlatform.GSDKAddEventCustomParamsInGame("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Ljava/util/Map;)V

    return-void
.end method

.method public static GSDKAddEventCustomParamsInLogin(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSDKPlatform.addEventCustomParamsInLogin("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Ljava/util/Map;)V

    return-void
.end method

.method public static GSDKEnd()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    sget-object v1, Lcom/tencent/gsdk/api/GSDKPlatform;->info:Lcom/tencent/gsdk/api/b;

    invoke-virtual {v0, v1}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Lcom/tencent/gsdk/api/b;)V

    return-void
.end method

.method public static GSDKInit(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/gsdk/api/GSDKPlatform;->GSDKInit(Landroid/content/Context;Ljava/lang/String;ZII)V

    return-void
.end method

.method public static GSDKInit(Landroid/content/Context;Ljava/lang/String;ZII)V
    .locals 6

    .line 2
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Landroid/content/Context;Ljava/lang/String;ZII)V

    return-void
.end method

.method public static GSDKInitWithBeacon(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/gsdk/api/GSDKPlatform;->GSDKInit(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static GSDKReportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gsdk/api/GSDKSystem;->i()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    const-string p0, "Report failed, since GSDK has not initialized yet"

    invoke-static {p0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 7
    new-instance p1, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xg"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Lcom/tencent/gsdk/p0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ldns"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 11
    invoke-static {v0, p0, p1}, Lcom/tencent/gsdk/y;->a(ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static GSDKSaveFps(FIIIIIIIIILjava/lang/String;)V
    .locals 13

    .line 1
    new-instance v12, Lcom/tencent/gsdk/api/b;

    move-object v0, v12

    move v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/tencent/gsdk/api/b;-><init>(FIIIIIIIIILjava/lang/String;)V

    sput-object v12, Lcom/tencent/gsdk/api/GSDKPlatform;->info:Lcom/tencent/gsdk/api/b;

    return-void
.end method

.method public static GSDKSaveGpuInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lcom/tencent/gsdk/z;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static GSDKSetEvent(IZLjava/lang/String;ZZ)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/gsdk/api/GSDKSystem;->a(IZLjava/lang/String;ZZ)V

    return-void
.end method

.method public static GSDKSetPayEvent(IIZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/gsdk/api/GSDKSystem;->a(IIZLjava/lang/String;)V

    return-void
.end method

.method public static GSDKSetUserName(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static GSDKSetUserNameWithQuality(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/gsdk/api/GSDKSystem;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static GSDKStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/gsdk/api/GSDKPlatform;->mZoneId:Ljava/lang/String;

    .line 2
    sput-object p1, Lcom/tencent/gsdk/api/GSDKPlatform;->mTag:Ljava/lang/String;

    .line 3
    sput-object p2, Lcom/tencent/gsdk/api/GSDKPlatform;->mRoomIp:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/gsdk/api/GSDKSystem;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static GSDKStartWithQuality(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/gsdk/api/GSDKPlatform;->mZoneId:Ljava/lang/String;

    .line 2
    sput-object p1, Lcom/tencent/gsdk/api/GSDKPlatform;->mTag:Ljava/lang/String;

    .line 3
    sput-object p2, Lcom/tencent/gsdk/api/GSDKPlatform;->mRoomIp:Ljava/lang/String;

    .line 4
    sput-object p3, Lcom/tencent/gsdk/api/GSDKPlatform;->mFpsMode:Ljava/lang/String;

    .line 5
    sput-object p4, Lcom/tencent/gsdk/api/GSDKPlatform;->mQualityLevel:Ljava/lang/String;

    .line 6
    sput-object p5, Lcom/tencent/gsdk/api/GSDKPlatform;->mOptionLevel:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/gsdk/api/GSDKSystem;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static GSDKTimeOutDetect()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gsdk/api/GSDKSystem;->h()V

    return-void
.end method

.method public static GSDKUDPDetect()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/u0;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SpeedReturn()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gsdk/api/GSDKSystem;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addEventCustomParamsInGame(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSDKPlatform.addEventCustomParamsInGame("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/tencent/gsdk/api/GSDKPlatform;->GSDKAddEventCustomParamsInGame(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 12
    const-string v0, "addEventCustomParamsInGame failed"

    invoke-static {v0, p0}, Lcom/tencent/gsdk/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static addEventCustomParamsInLogin(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSDKPlatform.addEventCustomParamsInLogin("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/tencent/gsdk/api/GSDKPlatform;->GSDKAddEventCustomParamsInLogin(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 12
    const-string v0, "addEventCustomParamsInLogin failed"

    invoke-static {v0, p0}, Lcom/tencent/gsdk/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static getBatteryLevel(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/k;->a()I

    move-result p0

    return p0
.end method

.method public static getCurrentDelay()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gsdk/api/GSDKSystem;->j()I

    move-result v0

    return v0
.end method

.method public static recordCall(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/gsdk/api/GSDKSystem;->f(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSDKPlatform.reportEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/gsdk/api/GSDKPlatform;->GSDKReportEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 12
    const-string p1, "reportEvent failed"

    invoke-static {p1, p0}, Lcom/tencent/gsdk/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static setEventObserver(Lcom/tencent/gsdk/api/IEventObserver;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Lcom/tencent/gsdk/api/IEventObserver;)V

    return-void
.end method

.method public static setLogObserver(Lcom/tencent/gsdk/utils/Logger$ILogObserver;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/gsdk/utils/Logger;->setLogObserver(Lcom/tencent/gsdk/utils/Logger$ILogObserver;)V

    return-void
.end method
