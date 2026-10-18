.class public Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;
.super Ljava/lang/Object;
.source "ScreenRecordNativeJni.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/jni/ScreenRecordNativeJni$MosaicCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenRecordNativeJni"


# instance fields
.field mMosaicCallback:Lcom/gme/video/sdk/jni/ScreenRecordNativeJni$MosaicCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native setMosaicPath(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method private native startMosaicVideo()I
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 28
    sget-object v0, Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onComplete"

    invoke-static {v0, v2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;->mMosaicCallback:Lcom/gme/video/sdk/jni/ScreenRecordNativeJni$MosaicCallback;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1, p2, p3}, Lcom/gme/video/sdk/jni/ScreenRecordNativeJni$MosaicCallback;->onRecordComplete(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMosaicPathJni(Ljava/lang/String;ILjava/lang/String;)I
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;->setMosaicPath(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startMosaicVideoJni(Lcom/gme/video/sdk/jni/ScreenRecordNativeJni$MosaicCallback;)I
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;->mMosaicCallback:Lcom/gme/video/sdk/jni/ScreenRecordNativeJni$MosaicCallback;

    .line 21
    invoke-direct {p0}, Lcom/gme/video/sdk/jni/ScreenRecordNativeJni;->startMosaicVideo()I

    move-result p1

    return p1
.end method
