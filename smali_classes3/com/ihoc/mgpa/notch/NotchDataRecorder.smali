.class public Lcom/ihoc/mgpa/notch/NotchDataRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private densityDpi:I

.field private hasNotchSupport:Z

.field private iNotch:Lcom/ihoc/mgpa/notch/INotchSupport;

.field private mContext:Landroid/content/Context;

.field private notchSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private screenWh:[I

.field private statusBarHeight:I

.field private supportType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ihoc/mgpa/notch/INotchSupport;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->hasNotchSupport:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->notchSize:Ljava/util/List;

    .line 13
    iput-object p2, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->iNotch:Lcom/ihoc/mgpa/notch/INotchSupport;

    .line 14
    iput-object p1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->mContext:Landroid/content/Context;

    .line 15
    invoke-interface {p2}, Lcom/ihoc/mgpa/notch/INotchSupport;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->supportType:Ljava/lang/String;

    .line 16
    invoke-interface {p2, p1}, Lcom/ihoc/mgpa/notch/INotchSupport;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->statusBarHeight:I

    .line 17
    invoke-interface {p2, p1}, Lcom/ihoc/mgpa/notch/INotchSupport;->getDisplayDensityDpi(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->densityDpi:I

    .line 18
    invoke-interface {p2, p1}, Lcom/ihoc/mgpa/notch/INotchSupport;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->screenWh:[I

    return-void
.end method


# virtual methods
.method public getNotchSize()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->notchSize:Ljava/util/List;

    return-object v0
.end method

.method public isHasNotchSupport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->hasNotchSupport:Z

    return v0
.end method

.method public setHasNotchSupport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->hasNotchSupport:Z

    return-void
.end method

.method public setNotchSize(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->notchSize:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->iNotch:Lcom/ihoc/mgpa/notch/INotchSupport;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    const-string v1, "notchInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "hasNotch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->hasNotchSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5
    const-string v1, ", isHideNotch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->iNotch:Lcom/ihoc/mgpa/notch/INotchSupport;

    iget-object v2, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/ihoc/mgpa/notch/INotchSupport;->isHideNotch(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6
    const-string v1, ", notchSupportType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->supportType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-boolean v1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->hasNotchSupport:Z

    if-eqz v1, :cond_0

    .line 8
    const-string v1, ", notchSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->notchSize:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_0
    const-string v1, ", statusBarHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->statusBarHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", densityDpi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", screenWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->screenWh:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ihoc/mgpa/notch/NotchDataRecorder;->screenWh:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
