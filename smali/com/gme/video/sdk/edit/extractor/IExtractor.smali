.class public interface abstract Lcom/gme/video/sdk/edit/extractor/IExtractor;
.super Ljava/lang/Object;
.source "IExtractor.java"


# virtual methods
.method public abstract getDurationUs()J
.end method

.method public abstract getLong(Ljava/lang/String;)J
.end method

.method public abstract getMediaFormat()Landroid/media/MediaFormat;
.end method

.method public abstract getSampleFlags()I
.end method

.method public abstract getSampleTimeUs()J
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract readBuffer(Ljava/nio/ByteBuffer;)I
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(J)J
.end method
