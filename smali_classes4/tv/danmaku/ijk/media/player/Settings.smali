.class public Ltv/danmaku/ijk/media/player/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final PV_PLAYER__AndroidMediaPlayer:I = 0x1

.field public static final PV_PLAYER__Auto:I = 0x0

.field public static final PV_PLAYER__IjkExoMediaPlayer:I = 0x3

.field public static final PV_PLAYER__IjkMediaPlayer:I = 0x2


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/Settings;->mAppContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getEnableBackgroundPlay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnableDetachedSurfaceTextureView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnableNoView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnableSurfaceView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnableTextureView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLastDirectory()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "/"

    return-object v0
.end method

.method public getMediaCodecHandleResolutionChange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPixelFormat()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "_ES2"

    return-object v0
.end method

.method public getPlayer()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getUsingMediaCodec()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUsingMediaCodecAutoRotate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUsingMediaDataSource()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUsingOpenSLES()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
