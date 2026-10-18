.class public Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/player/TMEVideoPlayControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;->a:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/tencent/tme/player/TMEPlayerEvent;Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$a;-><init>(Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;Lcom/tencent/tme/player/TMEPlayerEvent;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/r2/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlayingProgress(JI)V
    .locals 3

    iget-object p3, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;->a:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 1
    iget-object p3, p3, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    if-eqz p3, :cond_0

    .line 2
    check-cast p3, Lcom/tencent/tme/live/g1/b;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 3
    iget-object p1, p3, Lcom/tencent/tme/live/g1/b;->b:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/tencent/tme/live/g1/b;->a()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;->a:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->c:Lcom/tencent/tme/live/f1/a;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public onState(Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;-><init>(Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/r2/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
