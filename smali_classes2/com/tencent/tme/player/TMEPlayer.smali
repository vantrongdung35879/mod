.class public interface abstract Lcom/tencent/tme/player/TMEPlayer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/player/TMEPlayer$SourceType;
    }
.end annotation


# virtual methods
.method public abstract bindView(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end method

.method public abstract getFileDuration()J
.end method

.method public abstract pause()V
.end method

.method public abstract play()I
.end method

.method public abstract release()V
.end method

.method public abstract resume()V
.end method

.method public abstract seek(I)V
.end method

.method public abstract setQuality(I)V
.end method

.method public abstract setSourceType(Lcom/tencent/tme/player/TMEPlayer$SourceType;)V
.end method

.method public abstract setVideoControlCallback(Lcom/tencent/tme/player/TMEVideoPlayControlCallback;)V
.end method

.method public abstract setVideoLogCallback(Lcom/tencent/tme/player/TMEVideoPlayLogCallback;)V
.end method

.method public abstract setVideoURL(Ljava/lang/String;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract stop()V
.end method

.method public abstract unBindView(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end method
