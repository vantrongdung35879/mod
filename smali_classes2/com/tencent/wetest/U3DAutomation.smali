.class public Lcom/tencent/wetest/U3DAutomation;
.super Ljava/lang/Object;
.source "U3DAutomation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wetest/U3DAutomation$InjectAction;,
        Lcom/tencent/wetest/U3DAutomation$MScreen;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "wetest"

.field protected static forward:Ljava/lang/reflect/Field; = null

.field protected static handleForward:Z = false

.field protected static mUnityPlayer:Landroid/view/View;

.field protected static mscreen:Lcom/tencent/wetest/U3DAutomation$MScreen;

.field protected static nativeForwardEventsToDalvik:Ljava/lang/reflect/Method;

.field protected static playerActivity:Landroid/app/Activity;

.field protected static scontext:Landroid/content/Context;

.field protected static surfaceView:Landroid/view/SurfaceView;

.field protected static unityPlayerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected static unity_version:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetHeight()I
    .locals 3

    .line 479
    :try_start_0
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->getMscreen()Lcom/tencent/wetest/U3DAutomation$MScreen;

    move-result-object v0

    .line 480
    iget v0, v0, Lcom/tencent/wetest/U3DAutomation$MScreen;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 482
    const-string v1, "wetest"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method private static GetMResolution()Lcom/tencent/wetest/U3DAutomation$MScreen;
    .locals 7

    .line 434
    const-string v0, "GetMResolution Enter"

    const-string v1, "wetest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->GetPlayerActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 438
    const-string v0, "GetContext: get activity is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 442
    :cond_0
    sput-object v0, Lcom/tencent/wetest/U3DAutomation;->scontext:Landroid/content/Context;

    const v2, 0x1020002

    .line 444
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "View class name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 448
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x2

    .line 449
    new-array v4, v4, [I

    .line 450
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 451
    aget v0, v4, v0

    int-to-float v0, v0

    const/4 v5, 0x1

    .line 452
    aget v4, v4, v5

    int-to-float v4, v4

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "width="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v1, Lcom/tencent/wetest/U3DAutomation$MScreen;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/tencent/wetest/U3DAutomation$MScreen;-><init>(IIFF)V

    sput-object v1, Lcom/tencent/wetest/U3DAutomation;->mscreen:Lcom/tencent/wetest/U3DAutomation$MScreen;

    return-object v1
.end method

.method public static GetPlayerActivity()Landroid/app/Activity;
    .locals 4

    .line 286
    const-string v0, "wetest"

    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->playerActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    return-object v1

    .line 291
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->getUnityPlayerClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 294
    const-string v1, "GetPlayerActivity: can\'t find com.unity3d.player.UnityPlayer"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 299
    :cond_1
    const-string v3, "currentActivity"

    .line 298
    invoke-static {v1, v3}, Lcom/tencent/wetest/U3DAutomation;->getDeclaredFieldNest(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_2

    .line 301
    const-string v1, "GetPlayerActivity: can\'t find currentActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 305
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 308
    const-string v1, "GetPlayerActivity: can\'t get currentActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 312
    :cond_3
    check-cast v1, Landroid/app/Activity;

    sput-object v1, Lcom/tencent/wetest/U3DAutomation;->playerActivity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 315
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    :goto_0
    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->playerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static GetWidth()I
    .locals 3

    .line 462
    const-string v0, "GetWidth()"

    const-string v1, "wetest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :try_start_0
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->getMscreen()Lcom/tencent/wetest/U3DAutomation$MScreen;

    move-result-object v0

    .line 466
    iget v0, v0, Lcom/tencent/wetest/U3DAutomation$MScreen;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public static GetX()F
    .locals 3

    .line 488
    const-string v0, "GetX()"

    const-string v1, "wetest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :try_start_0
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->getMscreen()Lcom/tencent/wetest/U3DAutomation$MScreen;

    move-result-object v0

    .line 492
    iget v0, v0, Lcom/tencent/wetest/U3DAutomation$MScreen;->x:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 494
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public static GetY()F
    .locals 3

    .line 500
    const-string v0, "GetY()"

    const-string v1, "wetest"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :try_start_0
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->getMscreen()Lcom/tencent/wetest/U3DAutomation$MScreen;

    move-result-object v0

    .line 504
    iget v0, v0, Lcom/tencent/wetest/U3DAutomation$MScreen;->y:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 506
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public static InjectTouchEvent(IFF)V
    .locals 14

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x1

    move v4, p0

    if-ne v4, v0, :cond_0

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-wide v0, v2

    move v4, p0

    move v5, p1

    move/from16 v6, p2

    .line 260
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    .line 266
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 269
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->getUnityPlayerActivity()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 271
    const-string v2, "wetest"

    if-nez v1, :cond_1

    .line 273
    const-string v0, "Unable to get UnityPlayer object! please check the Unity3D version."

    .line 272
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 276
    :cond_1
    sget v3, Lcom/tencent/wetest/U3DAutomation;->unity_version:I

    if-nez v3, :cond_2

    .line 277
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->getUnityVersion()I

    move-result v3

    sput v3, Lcom/tencent/wetest/U3DAutomation;->unity_version:I

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unity version = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/tencent/wetest/U3DAutomation;->unity_version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2
    new-instance v2, Lcom/tencent/wetest/U3DAutomation$InjectAction;

    invoke-direct {v2, v0, v1}, Lcom/tencent/wetest/U3DAutomation$InjectAction;-><init>(Landroid/view/MotionEvent;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .line 166
    invoke-static {p0}, Lcom/tencent/wetest/U3DAutomation;->setForward(Z)V

    return-void
.end method

.method static synthetic access$1()Z
    .locals 1

    .line 127
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->getForward()Z

    move-result v0

    return v0
.end method

.method private static getDeclaredFieldNest(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 218
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 229
    invoke-static {p0, p1}, Lcom/tencent/wetest/U3DAutomation;->getDeclaredFieldNest(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    .line 226
    :cond_0
    throw v0
.end method

.method private static getForward()Z
    .locals 5

    .line 131
    const-string v0, "getForward"

    const-string v1, "wetest"

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/tencent/wetest/U3DAutomation;->forward:Ljava/lang/reflect/Field;

    if-nez v3, :cond_3

    .line 134
    sget v3, Lcom/tencent/wetest/U3DAutomation;->unity_version:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 135
    const-string v3, "k"

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 137
    const-string v3, "l"

    .line 142
    :goto_0
    sget-object v4, Lcom/tencent/wetest/U3DAutomation;->unityPlayerClass:Ljava/lang/Class;

    invoke-static {v4, v3}, Lcom/tencent/wetest/U3DAutomation;->getDeclaredFieldNest(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/tencent/wetest/U3DAutomation;->forward:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    .line 145
    const-string v3, "can\'t find forwardNative!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v4, 0x1

    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_1

    :cond_2
    return v2

    .line 152
    :cond_3
    :goto_1
    sget-object v3, Lcom/tencent/wetest/U3DAutomation;->forward:Ljava/lang/reflect/Field;

    sget-object v4, Lcom/tencent/wetest/U3DAutomation;->mUnityPlayer:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v3

    .line 159
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v3

    .line 157
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v3

    .line 155
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v2
.end method

.method private static getMscreen()Lcom/tencent/wetest/U3DAutomation$MScreen;
    .locals 5

    .line 402
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 405
    :try_start_0
    new-array v1, v1, [I

    .line 406
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 407
    aget v2, v1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    .line 408
    aget v1, v1, v3

    int-to-float v1, v1

    .line 409
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    .line 410
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    .line 411
    new-instance v4, Lcom/tencent/wetest/U3DAutomation$MScreen;

    invoke-direct {v4, v0, v3, v2, v1}, Lcom/tencent/wetest/U3DAutomation$MScreen;-><init>(IIFF)V

    sput-object v4, Lcom/tencent/wetest/U3DAutomation;->mscreen:Lcom/tencent/wetest/U3DAutomation$MScreen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 414
    const-string v1, "wetest"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->GetMResolution()Lcom/tencent/wetest/U3DAutomation$MScreen;

    move-result-object v0

    return-object v0
.end method

.method private static getSurfaceView()Landroid/view/SurfaceView;
    .locals 7

    .line 364
    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->surfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_3

    .line 365
    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->getUnityPlayerActivity()Ljava/lang/Object;

    move-result-object v0

    .line 366
    const-string v1, "wetest"

    if-nez v0, :cond_0

    .line 367
    const-string v0, "not find com.unity3d.player.UnityPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 371
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 373
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_1

    goto :goto_2

    .line 374
    :cond_1
    aget-object v4, v2, v3

    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "field type = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/view/SurfaceView;

    if-ne v5, v6, :cond_2

    .line 377
    const-string v5, "find SurfaceView"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .line 378
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 380
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    sput-object v4, Lcom/tencent/wetest/U3DAutomation;->surfaceView:Landroid/view/SurfaceView;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 385
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    .line 383
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    :cond_3
    :goto_2
    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method private static getUnityPlayerActivity()Ljava/lang/Object;
    .locals 9

    .line 322
    const-string v0, "com.unity3d.player.UnityPlayer"

    const-string v1, "wetest"

    invoke-static {}, Lcom/tencent/wetest/U3DAutomation;->GetPlayerActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 327
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    .line 331
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Activity obj name= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    .line 335
    :goto_0
    array-length v6, v4

    if-lt v5, v6, :cond_2

    goto :goto_2

    .line 336
    :cond_2
    aget-object v6, v4, v5

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "field type = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    .line 339
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    .line 342
    :try_start_1
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 343
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_0
    move-exception v6

    .line 348
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v6

    .line 346
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_2
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v3
.end method

.method private static getUnityPlayerClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/tencent/wetest/U3DAutomation;->unityPlayerClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 238
    :cond_0
    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/wetest/U3DAutomation;->unityPlayerClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 241
    :catch_0
    const-string v0, "wetest"

    const-string v1, "can\'t find com.unity3d.player.UnityPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getUnityVersion()I
    .locals 4

    const/4 v0, 0x0

    .line 98
    :try_start_0
    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->unityPlayerClass:Ljava/lang/Class;

    const-string v2, "l"

    invoke-static {v1, v2}, Lcom/tencent/wetest/U3DAutomation;->getDeclaredFieldNest(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    return v0

    .line 108
    :cond_0
    sget-object v1, Lcom/tencent/wetest/U3DAutomation;->unityPlayerClass:Ljava/lang/Class;

    const-string v3, "k"

    invoke-static {v1, v3}, Lcom/tencent/wetest/U3DAutomation;->getDeclaredFieldNest(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 113
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 121
    const-string v2, "wetest"

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static setForward(Z)V
    .locals 9

    .line 168
    const-string v0, "can\'t find nativeForwardEventsToDalvik!"

    const-string v1, "setForward"

    const-string v2, "wetest"

    :try_start_0
    sget v3, Lcom/tencent/wetest/U3DAutomation;->unity_version:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 169
    sget-object v3, Lcom/tencent/wetest/U3DAutomation;->forward:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    .line 170
    sget-object v3, Lcom/tencent/wetest/U3DAutomation;->unityPlayerClass:Ljava/lang/Class;

    const-string v4, "l"

    invoke-static {v3, v4}, Lcom/tencent/wetest/U3DAutomation;->getDeclaredFieldNest(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/tencent/wetest/U3DAutomation;->forward:Ljava/lang/reflect/Field;

    if-nez v3, :cond_0

    .line 173
    const-string p0, "can\'t find forwardNative!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 180
    :cond_1
    sget-object v3, Lcom/tencent/wetest/U3DAutomation;->forward:Ljava/lang/reflect/Field;

    sget-object v4, Lcom/tencent/wetest/U3DAutomation;->mUnityPlayer:Landroid/view/View;

    invoke-virtual {v3, v4, p0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :cond_2
    :try_start_1
    sget-object v3, Lcom/tencent/wetest/U3DAutomation;->nativeForwardEventsToDalvik:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 185
    sget-object v3, Lcom/tencent/wetest/U3DAutomation;->unityPlayerClass:Ljava/lang/Class;

    .line 186
    const-string v6, "nativeForwardEventsToDalvik"

    .line 187
    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    .line 186
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 185
    sput-object v3, Lcom/tencent/wetest/U3DAutomation;->nativeForwardEventsToDalvik:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    .line 190
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 197
    :cond_4
    sget-object v3, Lcom/tencent/wetest/U3DAutomation;->nativeForwardEventsToDalvik:Ljava/lang/reflect/Method;

    sget-object v6, Lcom/tencent/wetest/U3DAutomation;->mUnityPlayer:Landroid/view/View;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 199
    :catch_0
    :try_start_2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p0

    .line 208
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception p0

    .line 206
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception p0

    .line 204
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
