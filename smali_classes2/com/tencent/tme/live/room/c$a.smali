.class public Lcom/tencent/tme/live/room/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/player/TMEVideoPlayControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/room/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public final d:Ljava/lang/Runnable;

.field public final synthetic e:Lcom/tencent/tme/live/room/c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/room/c;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/tme/live/room/c$a;->e:Lcom/tencent/tme/live/room/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tme/live/room/c$a;->a:J

    iput-wide v0, p0, Lcom/tencent/tme/live/room/c$a;->b:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/live/room/c$a;->c:I

    new-instance p1, Lcom/tencent/tme/live/room/c$a$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/room/c$a$a;-><init>(Lcom/tencent/tme/live/room/c$a;)V

    iput-object p1, p0, Lcom/tencent/tme/live/room/c$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/tencent/tme/player/TMEPlayerEvent;Landroid/os/Message;)V
    .locals 8

    const-string v0, "setVideoControlCallback[onEvent]"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LivePlayerWrapper"

    invoke-static {v0, p2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/tencent/tme/player/TMEPlayerEvent;->BufferingStart:Lcom/tencent/tme/player/TMEPlayerEvent;

    const-wide/16 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/tme/live/room/c$a;->b:J

    iget-wide v2, p0, Lcom/tencent/tme/live/room/c$a;->a:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    iput-wide p1, p0, Lcom/tencent/tme/live/room/c$a;->a:J

    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tme/live/room/c$a;->d:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {p1}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x4b0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3
    :cond_1
    sget-object p2, Lcom/tencent/tme/player/TMEPlayerEvent;->BufferingEnd:Lcom/tencent/tme/player/TMEPlayerEvent;

    if-ne p1, p2, :cond_3

    .line 4
    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tme/live/room/c$a;->d:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p1}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/tencent/tme/live/room/c$a;->a:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v6, p0, Lcom/tencent/tme/live/room/c$a;->b:J

    sub-long/2addr p1, v6

    div-long/2addr p1, v4

    const-wide/16 v4, 0x3c

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    const-wide/16 v2, 0xa

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    iget p1, p0, Lcom/tencent/tme/live/room/c$a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/tme/live/room/c$a;->c:I

    const/4 p2, 0x3

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/room/c$a;->e:Lcom/tencent/tme/live/room/c;

    .line 7
    invoke-virtual {p1}, Lcom/tencent/tme/live/room/c;->u()V

    .line 8
    iput-wide v0, p0, Lcom/tencent/tme/live/room/c$a;->a:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/live/room/c$a;->c:I

    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/room/c$a;->e:Lcom/tencent/tme/live/room/c;

    .line 9
    invoke-virtual {p1}, Lcom/tencent/tme/live/room/c;->h()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPlayingProgress(JI)V
    .locals 0

    return-void
.end method

.method public onState(Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V
    .locals 2

    const-string v0, "setVideoControlCallback[onState]"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LivePlayerWrapper"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c$a;->e:Lcom/tencent/tme/live/room/c;

    .line 1
    iput-object p1, v0, Lcom/tencent/tme/live/room/c;->o:Lcom/tencent/tme/player/TMEPlayerState;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/tencent/tme/live/room/c;->b(Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V

    return-void
.end method
