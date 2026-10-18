.class public interface abstract Lcom/gme/video/sdk/IGmeVideoPlayControlCallback;
.super Ljava/lang/Object;
.source "IGmeVideoPlayControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;
    }
.end annotation


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onFirstFrameDecoded(Lcom/gme/video/sdk/IGmeVideoPlayControlCallback$GmeVideoOverlay;)V
.end method

.method public abstract onPlay()V
.end method

.method public abstract onPlayBufferingEnd()V
.end method

.method public abstract onPlayBufferingStart()V
.end method

.method public abstract onPlayStop()V
.end method

.method public abstract onPlayingProgress(JI)V
.end method
