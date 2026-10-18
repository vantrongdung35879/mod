.class public abstract Lcom/gme/video/sdk/IGmeVideoPlayControl;
.super Ljava/lang/Object;
.source "IGmeVideoPlayControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/IGmeVideoPlayControl$VideoPlayType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/app/Activity;Landroid/view/ViewGroup;)I
.end method

.method public abstract getFileDuration()J
.end method

.method public abstract getVideoUrl()Ljava/lang/String;
.end method

.method public abstract getVolume()F
.end method

.method public abstract isLoop()Z
.end method

.method public abstract pause()I
.end method

.method public abstract play()I
.end method

.method public abstract resume()I
.end method

.method public abstract seek(I)I
.end method

.method public abstract setAutoPlay(Z)V
.end method

.method public abstract setLoop(Z)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)I
.end method

.method public abstract setUpdatePlayingProgressFrequency(I)I
.end method

.method public abstract setVideoControlCallback(Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;)I
.end method

.method public abstract setVideoPlayControlVideoProcessCallback(Lcom/gme/video/sdk/IGmeVideoPlayControlVideoProcessCallback;)I
.end method

.method public abstract setVideoURL(Ljava/lang/String;)I
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract stop()I
.end method

.method public abstract unBindView(Landroid/app/Activity;Landroid/view/ViewGroup;)I
.end method
