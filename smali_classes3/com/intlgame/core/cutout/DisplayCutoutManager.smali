.class public Lcom/intlgame/core/cutout/DisplayCutoutManager;
.super Ljava/lang/Object;
.source "DisplayCutoutManager.java"

# interfaces
.implements Lcom/intlgame/core/cutout/IDisplayCutout;


# static fields
.field private static volatile mIsInitial:Z = false


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/core/cutout/DisplayCutoutManager;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/core/cutout/DisplayCutoutManager;Landroid/app/Activity;Landroid/view/WindowInsets;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->updateCutoutData(Landroid/app/Activity;Landroid/view/WindowInsets;)V

    return-void
.end method

.method private createNotchScreen()Lcom/intlgame/core/cutout/IDisplayCutout;
    .locals 5

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const-string v2, "DisplayCutoutManager"

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Lcom/intlgame/core/cutout/impl/AndroidPDisplayCutout;

    invoke-direct {v0}, Lcom/intlgame/core/cutout/impl/AndroidPDisplayCutout;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    goto/16 :goto_3

    .line 58
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_7

    .line 62
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 66
    const-string/jumbo v0, "unknown"

    .line 67
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get manufacturer error, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    :cond_1
    :goto_1
    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    new-instance v1, Lcom/intlgame/core/cutout/impl/HuaweiDisplayCutout;

    invoke-direct {v1}, Lcom/intlgame/core/cutout/impl/HuaweiDisplayCutout;-><init>()V

    iput-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    goto :goto_2

    .line 72
    :cond_2
    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    new-instance v1, Lcom/intlgame/core/cutout/impl/SamsungDisplayCutout;

    invoke-direct {v1}, Lcom/intlgame/core/cutout/impl/SamsungDisplayCutout;-><init>()V

    iput-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    goto :goto_2

    .line 74
    :cond_3
    const-string/jumbo v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    new-instance v1, Lcom/intlgame/core/cutout/impl/MiDisplayCutout;

    invoke-direct {v1}, Lcom/intlgame/core/cutout/impl/MiDisplayCutout;-><init>()V

    iput-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    goto :goto_2

    .line 76
    :cond_4
    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    new-instance v1, Lcom/intlgame/core/cutout/impl/OPPODisplayCutout;

    invoke-direct {v1}, Lcom/intlgame/core/cutout/impl/OPPODisplayCutout;-><init>()V

    iput-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    goto :goto_2

    .line 78
    :cond_5
    const-string/jumbo v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 79
    new-instance v1, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;

    invoke-direct {v1}, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;-><init>()V

    iput-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    .line 81
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "createNotchScreen in Android O, manufacturer = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 84
    :cond_7
    new-instance v0, Lcom/intlgame/core/cutout/impl/UnsupportedDisplayCutout;

    invoke-direct {v0}, Lcom/intlgame/core/cutout/impl/UnsupportedDisplayCutout;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    .line 86
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createNotchScreen notchScreen type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    invoke-interface {v1}, Lcom/intlgame/core/cutout/IDisplayCutout;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    return-object v0
.end method

.method private updateCutoutData(Landroid/app/Activity;Landroid/view/WindowInsets;)V
    .locals 7

    .line 258
    new-instance v0, Lcom/intlgame/api/cutout/INTLCutoutResult;

    const/16 v1, 0x25b

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/api/cutout/INTLCutoutResult;-><init>(II)V

    .line 259
    const-class v1, Lcom/intlgame/core/cutout/DisplayCutoutManager;

    invoke-static {v1}, Lcom/intlgame/foundation/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/core/cutout/DisplayCutoutManager;

    .line 260
    invoke-virtual {v1, p1, p2}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result v3

    .line 261
    invoke-virtual {v1, p1}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->isHideCutout(Landroid/content/Context;)Z

    move-result v4

    .line 262
    invoke-virtual {v1, p1}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object v5

    .line 263
    iput-boolean v3, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->hasCutout_:Z

    .line 264
    iput-boolean v4, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->isCutoutHidden_:Z

    const/4 v4, 0x1

    .line 265
    aget v6, v5, v4

    iput v6, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->screenHeight_:I

    .line 266
    aget v6, v5, v2

    iput v6, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->screenWidth_:I

    .line 267
    invoke-virtual {v1, p1}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v6

    iput v6, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->statusBarHeight_:I

    if-eqz v3, :cond_0

    .line 269
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->safeArea_:Landroid/graphics/Rect;

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->getCutoutSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->cutoutRects_:Ljava/util/ArrayList;

    goto :goto_0

    .line 272
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    aget p2, v5, v2

    aget v1, v5, v4

    invoke-direct {p1, v2, v2, p2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->safeArea_:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 273
    iput-object p1, v0, Lcom/intlgame/api/cutout/INTLCutoutResult;->cutoutRects_:Ljava/util/ArrayList;

    :goto_0
    const/16 p1, 0x5dd

    .line 275
    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCutoutSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowInsets;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {v1, p1, p2}, Lcom/intlgame/core/cutout/IDisplayCutout;->getCutoutSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 176
    :cond_0
    const-string p1, "getCutoutSize error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "getCutoutSize error, "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getDisplayDensityDpi(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    .line 222
    invoke-interface {v1, p1}, Lcom/intlgame/core/cutout/IDisplayCutout;->getDisplayDensityDpi(Landroid/content/Context;)I

    move-result p1

    move v0, p1

    goto :goto_0

    .line 224
    :cond_0
    const-string p1, "getDisplayDensityDpi error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDisplayDensityDpi error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public getDisplayRealSize(Landroid/content/Context;)[I
    .locals 3

    const/4 v0, 0x0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    .line 206
    invoke-interface {v1, p1}, Lcom/intlgame/core/cutout/IDisplayCutout;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 208
    :cond_0
    const-string p1, "getDisplayRealSize error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDisplayRealSize error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    .line 190
    invoke-interface {v1, p1, p2}, Lcom/intlgame/core/cutout/IDisplayCutout;->getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 192
    :cond_0
    const-string p1, "getSafeDisplay error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "getSafeDisplay error, "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    .line 238
    invoke-interface {v1, p1}, Lcom/intlgame/core/cutout/IDisplayCutout;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    move v0, p1

    goto :goto_0

    .line 240
    :cond_0
    const-string p1, "getStatusBarHeight error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStatusBarHeight error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0}, Lcom/intlgame/core/cutout/IDisplayCutout;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z
    .locals 2

    const/4 v0, 0x0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v1, p1, p2}, Lcom/intlgame/core/cutout/IDisplayCutout;->hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result p1

    move v0, p1

    goto :goto_0

    .line 144
    :cond_0
    const-string p1, "hasCutoutSupport error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "hasCutoutSupport error, "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 2

    .line 39
    sget-boolean v0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mIsInitial:Z

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->createNotchScreen()Lcom/intlgame/core/cutout/IDisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    .line 42
    iput-object p1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 43
    sput-boolean p1, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mIsInitial:Z

    .line 44
    const-string p1, "DisplayCutoutManager"

    const-string v0, "DisplayCutoutManager initialized!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayCutoutManager initialize error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public isHideCutout(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->notchScreen:Lcom/intlgame/core/cutout/IDisplayCutout;

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {v1, p1}, Lcom/intlgame/core/cutout/IDisplayCutout;->isHideCutout(Landroid/content/Context;)Z

    move-result p1

    move v0, p1

    goto :goto_0

    .line 160
    :cond_0
    const-string p1, "isHideCutout error, notchScreen is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isHideCutout error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public isInitial()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mIsInitial:Z

    return v0
.end method

.method public loadDisplayCutoutData()V
    .locals 6

    const-string v0, "Dependent windowInsets = "

    const-string v1, "Dependent Activity = "

    const-string v2, "Build version: "

    .line 91
    invoke-virtual {p0}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->isInitial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    const-string v0, "Cutout has not been initialized properly"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/4 v5, 0x0

    if-lt v3, v4, :cond_2

    .line 100
    iget-object v3, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 108
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", View Attached ? ="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    if-nez v5, :cond_4

    if-eqz v3, :cond_3

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_3
    const-string v0, "No windowInsets is REQUIRED"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 117
    :goto_1
    iget-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, v3}, Lcom/intlgame/core/cutout/DisplayCutoutManager;->updateCutoutData(Landroid/app/Activity;Landroid/view/WindowInsets;)V

    goto :goto_2

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/intlgame/core/cutout/DisplayCutoutManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/intlgame/core/cutout/DisplayCutoutManager$1;

    invoke-direct {v1, p0}, Lcom/intlgame/core/cutout/DisplayCutoutManager$1;-><init>(Lcom/intlgame/core/cutout/DisplayCutoutManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadDisplayCutoutData error,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
