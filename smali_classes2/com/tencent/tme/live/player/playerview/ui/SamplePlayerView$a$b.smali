.class public Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;->onState(Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/player/TMEPlayerState;

.field public final synthetic b:Landroid/os/Message;

.field public final synthetic c:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;->c:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;

    iput-object p2, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;->a:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object p3, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;->b:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;->c:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;

    iget-object v0, v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;->a:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a:Lcom/tencent/tme/live/e1/a;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;->a:Lcom/tencent/tme/player/TMEPlayerState;

    check-cast v1, Lcom/tencent/tme/live/e1/d;

    .line 3
    iput-object v2, v1, Lcom/tencent/tme/live/e1/d;->c:Lcom/tencent/tme/player/TMEPlayerState;

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;->a:Lcom/tencent/tme/player/TMEPlayerState;

    iget-object v2, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;->b:Landroid/os/Message;

    check-cast v0, Lcom/tencent/tme/live/g1/b;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/g1/b;->a(Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;->c:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;

    iget-object v0, v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;->a:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 6
    iget-object v0, v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->c:Lcom/tencent/tme/live/f1/a;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;->a:Lcom/tencent/tme/player/TMEPlayerState;

    iget-object v2, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;->b:Landroid/os/Message;

    check-cast v0, Lcom/tencent/tme/live/f1/b;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/f1/b;->a(Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a$b;->c:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;

    iget-object v0, v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView$a;->a:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
