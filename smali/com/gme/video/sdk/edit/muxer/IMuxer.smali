.class public interface abstract Lcom/gme/video/sdk/edit/muxer/IMuxer;
.super Ljava/lang/Object;
.source "IMuxer.java"


# virtual methods
.method public abstract addAudioTrack(Landroid/media/MediaFormat;)V
.end method

.method public abstract addVideoTrack(Landroid/media/MediaFormat;)V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract writeAudioSample(Lcom/gme/video/sdk/edit/model/GmeVideoSample;)V
.end method

.method public abstract writeVideoSample(Lcom/gme/video/sdk/edit/model/GmeVideoSample;)V
.end method
