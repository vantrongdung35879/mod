.class public Lcom/tencent/tme/live/m/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/m/h;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/m/h;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/m/h;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/m/h$a;->a:Lcom/tencent/tme/live/m/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/m/h$a;->a:Lcom/tencent/tme/live/m/h;

    const-wide/16 v1, 0x0

    .line 1
    iput-wide v1, v0, Lcom/tencent/tme/live/m/h;->c:J

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/tme/live/m/h;->a(Lcom/tencent/tme/live/m/h;Z)Z

    iget-object v0, p0, Lcom/tencent/tme/live/m/h$a;->a:Lcom/tencent/tme/live/m/h;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/m/h;->g:Lcom/tencent/tme/live/m/h$b;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/tencent/tme/live/danmu/DanmuView$b;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/danmu/DanmuView$b;->a:Lcom/tencent/tme/live/danmu/DanmuView;

    .line 6
    iget-object v0, v0, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    .line 7
    invoke-virtual {v0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->g()V

    :cond_0
    return-void
.end method
