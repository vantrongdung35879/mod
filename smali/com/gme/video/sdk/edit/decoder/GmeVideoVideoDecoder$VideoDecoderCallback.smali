.class public interface abstract Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder$VideoDecoderCallback;
.super Ljava/lang/Object;
.source "GmeVideoVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/edit/decoder/GmeVideoVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoDecoderCallback"
.end annotation


# virtual methods
.method public abstract onDecoderEvent(ILjava/lang/String;)V
.end method

.method public abstract onImageDecoder(Lcom/gme/video/sdk/edit/model/GmeVideoFrame;)V
.end method
