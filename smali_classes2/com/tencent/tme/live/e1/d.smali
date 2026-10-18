.class public Lcom/tencent/tme/live/e1/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/e1/a;


# instance fields
.field public a:Lcom/tencent/tme/player/TMEPlayer;

.field public b:Landroid/view/ViewGroup;

.field public c:Lcom/tencent/tme/player/TMEPlayerState;

.field public d:Lcom/tencent/tme/live/f1/a;

.field public e:Z

.field public f:Landroid/content/Context;

.field public g:Lcom/tencent/tme/live/e1/b;

.field public h:Lcom/tencent/tme/live/w0/o$b;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/tme/player/TMEPlayerState;->Unknown:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object v0, p0, Lcom/tencent/tme/live/e1/d;->c:Lcom/tencent/tme/player/TMEPlayerState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/e1/d;->e:Z

    iput-object p1, p0, Lcom/tencent/tme/live/e1/d;->f:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/tencent/tme/live/e1/d;->i:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->c:Lcom/tencent/tme/player/TMEPlayerState;

    sget-object v1, Lcom/tencent/tme/player/TMEPlayerState;->Playing:Lcom/tencent/tme/player/TMEPlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/tencent/tme/player/TMEPlayerState;->Preparing:Lcom/tencent/tme/player/TMEPlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/tencent/tme/player/TMEPlayerState;->Prepared:Lcom/tencent/tme/player/TMEPlayerState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "pause is called mPlayerState:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/e1/d;->c:Lcom/tencent/tme/player/TMEPlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamplePlayer"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/e1/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz v0, :cond_2

    const-string v0, "stopPlayer is called "

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v0}, Lcom/tencent/tme/player/TMEPlayer;->stop()V

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/tencent/tme/player/TMEPlayer;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()I
    .locals 5

    iget-boolean v0, p0, Lcom/tencent/tme/live/e1/d;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x8

    return v0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->g:Lcom/tencent/tme/live/e1/b;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/tencent/tme/live/e1/b;->getStreamInfo()Lcom/tencent/tme/live/w0/o$b;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, -0x6

    return v0

    .line 2
    :cond_2
    iget-boolean v2, p0, Lcom/tencent/tme/live/e1/d;->e:Z

    if-eqz v2, :cond_3

    const/4 v0, -0x4

    return v0

    :cond_3
    iget-object v2, p0, Lcom/tencent/tme/live/e1/d;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tme/live/s2/h;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, -0x5

    return v0

    :cond_4
    iget-object v2, p0, Lcom/tencent/tme/live/e1/d;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v2, p0, Lcom/tencent/tme/live/e1/d;->h:Lcom/tencent/tme/live/w0/o$b;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, v2, Lcom/tencent/tme/live/w0/o$b;->e:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v4, v0, Lcom/tencent/tme/live/w0/o$b;->e:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4
    iget-object v2, p0, Lcom/tencent/tme/live/e1/d;->c:Lcom/tencent/tme/player/TMEPlayerState;

    sget-object v4, Lcom/tencent/tme/player/TMEPlayerState;->Playing:Lcom/tencent/tme/player/TMEPlayerState;

    if-eq v2, v4, :cond_6

    sget-object v4, Lcom/tencent/tme/player/TMEPlayerState;->Preparing:Lcom/tencent/tme/player/TMEPlayerState;

    if-eq v2, v4, :cond_6

    sget-object v4, Lcom/tencent/tme/player/TMEPlayerState;->Prepared:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne v2, v4, :cond_7

    :cond_6
    const/4 v0, -0x3

    return v0

    .line 5
    :cond_7
    :goto_1
    iput-object v0, p0, Lcom/tencent/tme/live/e1/d;->h:Lcom/tencent/tme/live/w0/o$b;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/o$b;->d:Ljava/lang/String;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "doPlay, videoUrl:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SamplePlayer"

    invoke-static {v4, v2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, -0x2

    goto :goto_2

    :cond_8
    sget-object v2, Lcom/tencent/tme/player/TMEPlayerState;->Unknown:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object v2, p0, Lcom/tencent/tme/live/e1/d;->c:Lcom/tencent/tme/player/TMEPlayerState;

    iget-object v2, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    if-nez v2, :cond_9

    const/4 v3, -0x1

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/tencent/tme/live/e1/d;->d:Lcom/tencent/tme/live/f1/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v2, v0}, Lcom/tencent/tme/player/TMEPlayer;->setVideoURL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v0}, Lcom/tencent/tme/player/TMEPlayer;->play()I

    move-result v0

    if-eqz v0, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playWithURL failed, ret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v4, v0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, -0x7

    :cond_a
    :goto_2
    return v3
.end method

.method public c()I
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/tme/live/e1/d;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x4

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/tme/live/e1/d;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/e1/d;->d()Z

    move-result v0

    const-string v2, "SamplePlayer"

    if-eqz v0, :cond_3

    const-string v0, "resume is called mPlayerState:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/tme/live/e1/d;->c:Lcom/tencent/tme/player/TMEPlayerState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->c:Lcom/tencent/tme/player/TMEPlayerState;

    sget-object v2, Lcom/tencent/tme/player/TMEPlayerState;->Stopped:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    return v0

    :cond_2
    invoke-interface {v0}, Lcom/tencent/tme/player/TMEPlayer;->play()I

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->c:Lcom/tencent/tme/player/TMEPlayerState;

    sget-object v3, Lcom/tencent/tme/player/TMEPlayerState;->UserPaused:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne v0, v3, :cond_4

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/tencent/tme/player/TMEPlayer;->resume()V

    const-string v0, "resumePlayer is called "

    invoke-static {v2, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public final d()Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->h:Lcom/tencent/tme/live/w0/o$b;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/tencent/tme/live/w0/o$b;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/tencent/tme/player/TMEPlayer;->setVideoLogCallback(Lcom/tencent/tme/player/TMEVideoPlayLogCallback;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v0, v1}, Lcom/tencent/tme/player/TMEPlayer;->setVideoControlCallback(Lcom/tencent/tme/player/TMEVideoPlayControlCallback;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v0}, Lcom/tencent/tme/player/TMEPlayer;->pause()V

    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v0}, Lcom/tencent/tme/player/TMEPlayer;->stop()V

    iget-object v0, p0, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v0}, Lcom/tencent/tme/player/TMEPlayer;->release()V

    :cond_0
    iput-object v1, p0, Lcom/tencent/tme/live/e1/d;->g:Lcom/tencent/tme/live/e1/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/e1/d;->e:Z

    sget-object v2, Lcom/tencent/tme/player/TMEPlayerState;->Unknown:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object v2, p0, Lcom/tencent/tme/live/e1/d;->c:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object v1, p0, Lcom/tencent/tme/live/e1/d;->f:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/tencent/tme/live/e1/d;->i:Z

    return-void
.end method
