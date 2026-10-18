.class public interface abstract Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer$FrameCallback;
.super Ljava/lang/Object;
.source "GmeVideoEditPreviewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/edit/GmeVideoEditPreviewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameCallback"
.end annotation


# virtual methods
.method public abstract onDecoderEvent(ILjava/lang/String;)V
.end method

.method public abstract onFrameCallback(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V
.end method
