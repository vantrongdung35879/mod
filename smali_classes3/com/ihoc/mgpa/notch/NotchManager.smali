.class public final Lcom/ihoc/mgpa/notch/NotchManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/notch/INotchSupport;


# static fields
.field private static volatile mNotchManager:Lcom/ihoc/mgpa/notch/NotchManager;


# instance fields
.field private mNotchDataRecorder:Lcom/ihoc/mgpa/notch/NotchDataRecorder;

.field private mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    .line 4
    iput-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchDataRecorder:Lcom/ihoc/mgpa/notch/NotchDataRecorder;

    return-void
.end method

.method public static getInstance()Lcom/ihoc/mgpa/notch/NotchManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchManager:Lcom/ihoc/mgpa/notch/NotchManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/notch/NotchManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchManager:Lcom/ihoc/mgpa/notch/NotchManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/notch/NotchManager;

    invoke-direct {v1}, Lcom/ihoc/mgpa/notch/NotchManager;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchManager:Lcom/ihoc/mgpa/notch/NotchManager;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchManager:Lcom/ihoc/mgpa/notch/NotchManager;

    return-object v0
.end method


# virtual methods
.method public createNotchSupport(Landroid/content/Context;)Lcom/ihoc/mgpa/notch/INotchSupport;
    .locals 3

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/notch/NotchCloudConfig;

    invoke-direct {v0}, Lcom/ihoc/mgpa/notch/NotchCloudConfig;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/ihoc/mgpa/notch/NotchCloudConfig;->getNotchCloudData()Lcom/ihoc/mgpa/notch/NotchCloudData;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/ihoc/mgpa/notch/NotchCloudConfig;->isNotchBlack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/ihoc/mgpa/notch/impl/NotSupportNotch;

    invoke-direct {v0}, Lcom/ihoc/mgpa/notch/impl/NotSupportNotch;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    goto :goto_0

    .line 8
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_1

    if-eqz v1, :cond_1

    .line 9
    new-instance v0, Lcom/ihoc/mgpa/notch/impl/CloudNotch;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/notch/NotchCloudData;->getNotchWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/ihoc/mgpa/notch/NotchCloudData;->getNotchHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/ihoc/mgpa/notch/impl/CloudNotch;-><init>(II)V

    iput-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/ihoc/mgpa/notch/NotchFactory;->createNotch(Landroid/content/Context;)Lcom/ihoc/mgpa/notch/INotchSupport;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    .line 14
    :goto_0
    new-instance v0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;

    iget-object v1, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    invoke-direct {v0, p1, v1}, Lcom/ihoc/mgpa/notch/NotchDataRecorder;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/notch/INotchSupport;)V

    iput-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchDataRecorder:Lcom/ihoc/mgpa/notch/NotchDataRecorder;

    .line 15
    iget-object p1, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    return-object p1
.end method

.method public getDisplayDensityDpi(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/notch/INotchSupport;->getDisplayDensityDpi(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getDisplayRealSize(Landroid/content/Context;)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/notch/INotchSupport;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object p1

    return-object p1
.end method

.method public getNotchInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchDataRecorder:Lcom/ihoc/mgpa/notch/NotchDataRecorder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotchSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;
    .locals 1
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

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    invoke-interface {v0, p1, p2}, Lcom/ihoc/mgpa/notch/INotchSupport;->getNotchSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchDataRecorder:Lcom/ihoc/mgpa/notch/NotchDataRecorder;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->getNotchSize()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchDataRecorder:Lcom/ihoc/mgpa/notch/NotchDataRecorder;

    invoke-virtual {p2, p1}, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->setNotchSize(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    invoke-interface {v0, p1, p2}, Lcom/ihoc/mgpa/notch/INotchSupport;->getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getStatusBarHeight(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/notch/INotchSupport;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    invoke-interface {v0}, Lcom/ihoc/mgpa/notch/INotchSupport;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    invoke-interface {v1, p1, p2}, Lcom/ihoc/mgpa/notch/INotchSupport;->hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result v0

    .line 3
    iget-object p1, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchDataRecorder:Lcom/ihoc/mgpa/notch/NotchDataRecorder;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->isHasNotchSupport()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchDataRecorder:Lcom/ihoc/mgpa/notch/NotchDataRecorder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->setHasNotchSupport(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public isHideNotch(Landroid/content/Context;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    invoke-interface {v0, p1}, Lcom/ihoc/mgpa/notch/INotchSupport;->isHideNotch(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public notchProbe(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/ihoc/mgpa/notch/NotchFactory;->createNotch(Landroid/content/Context;)Lcom/ihoc/mgpa/notch/INotchSupport;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchSupport:Lcom/ihoc/mgpa/notch/INotchSupport;

    .line 3
    new-instance v1, Lcom/ihoc/mgpa/notch/NotchDataRecorder;

    invoke-direct {v1, p1, v0}, Lcom/ihoc/mgpa/notch/NotchDataRecorder;-><init>(Landroid/content/Context;Lcom/ihoc/mgpa/notch/INotchSupport;)V

    iput-object v1, p0, Lcom/ihoc/mgpa/notch/NotchManager;->mNotchDataRecorder:Lcom/ihoc/mgpa/notch/NotchDataRecorder;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/ihoc/mgpa/notch/NotchManager;->hasNotchSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/ihoc/mgpa/notch/NotchManager;->getNotchSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;

    :cond_0
    return-void
.end method
