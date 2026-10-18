.class public Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;
.super Lcom/gme/video/sdk/IGmeVideoSDK;
.source "GmeVideoSDKImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GmeVideoSDKImpl"


# instance fields
.field private final mEditControl:Lcom/gme/video/sdk/IGmeVideoEditControl;

.field private final mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

.field private final mShareControl:Lcom/gme/video/sdk/IGmeVideoShareControl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    invoke-static {}, Lcom/gme/video/sdk/jni/JniLoader;->loadSo()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 33
    invoke-direct {p0}, Lcom/gme/video/sdk/IGmeVideoSDK;-><init>()V

    .line 34
    sget-object v0, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->TAG:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Build.VERSION.SDK_INT = %d"

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    new-instance v0, Lcom/gme/video/sdk/impl/GmeVideoShareControlImpl;

    invoke-direct {v0}, Lcom/gme/video/sdk/impl/GmeVideoShareControlImpl;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->mShareControl:Lcom/gme/video/sdk/IGmeVideoShareControl;

    .line 39
    new-instance v0, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;

    invoke-direct {v0}, Lcom/gme/video/sdk/impl/GmeVideoScreenRecordControlImpl;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

    .line 41
    new-instance v0, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;

    invoke-direct {v0}, Lcom/gme/video/sdk/edit/jni/GmeVideoEditControlJniImpl;-><init>()V

    iput-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->mEditControl:Lcom/gme/video/sdk/IGmeVideoEditControl;

    return-void
.end method


# virtual methods
.method public createVideoPlayControl(Landroid/content/Context;I)Lcom/gme/video/sdk/IGmeVideoPlayControl;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 112
    sget-object p1, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->TAG:Ljava/lang/String;

    const-string p2, "createVideoPlayControl but context is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 117
    new-instance p1, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;

    invoke-direct {p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayRenderControlImpl;-><init>()V

    return-object p1

    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 119
    new-instance p2, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;

    invoke-direct {p2, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayPixelsControlImpl;-><init>(Landroid/content/Context;)V

    return-object p2

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 121
    new-instance p2, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;

    invoke-direct {p2, p1}, Lcom/gme/video/sdk/impl/GmeVideoPlayTextureControlImpl;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 123
    :cond_3
    sget-object p1, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "createVideoPlayControl type<%d> not support"

    invoke-static {p1, p2, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getEditControlInstance()Lcom/gme/video/sdk/IGmeVideoEditControl;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->mEditControl:Lcom/gme/video/sdk/IGmeVideoEditControl;

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 4

    .line 61
    invoke-static {}, Lcom/gme/video/sdk/jni/BaseNativeJni;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "getSDKVersion = %s"

    invoke-static {v1, v3, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getScreenRecordControlInstance()Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->mScreenRecordControl:Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;

    return-object v0
.end method

.method public getVideoShareControlInstance()Lcom/gme/video/sdk/IGmeVideoShareControl;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->mShareControl:Lcom/gme/video/sdk/IGmeVideoShareControl;

    return-object v0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/gme/video/sdk/jni/BaseNativeJni;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 90
    :cond_1
    :goto_0
    sget-object p1, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "initialize fail"

    invoke-static {p1, p3, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    return p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 4

    .line 50
    sget-object v0, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "setContext to %s"

    invoke-static {v0, v1, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Lcom/gme/video/sdk/impl/GmeVideoContext;->get()Lcom/gme/video/sdk/impl/GmeVideoContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoContext;->registerCtx(Landroid/content/Context;)V

    return-void
.end method

.method public setLogCallback(Lcom/gme/video/sdk/IGmeVideoSDKLogCallback;)V
    .locals 0

    .line 56
    invoke-static {p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setLogCallback(Lcom/gme/video/sdk/IGmeVideoSDKLogCallback;)V

    return-void
.end method

.method public setLogLevel(Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;)V
    .locals 0

    .line 83
    invoke-virtual {p1}, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->getLevel()I

    move-result p1

    invoke-virtual {p2}, Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;->getLevel()I

    move-result p2

    invoke-static {p1, p2}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setLogLevel(II)V

    return-void
.end method

.method public setRegion(Ljava/lang/String;)I
    .locals 2

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object p1, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "setRegion fail region is null"

    invoke-static {p1, v1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    return p1

    .line 78
    :cond_0
    invoke-static {p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->setRegion(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public unInitialize()V
    .locals 1

    .line 104
    const-string v0, ""

    invoke-static {v0, v0, v0}, Lcom/gme/video/sdk/jni/BaseNativeJni;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
