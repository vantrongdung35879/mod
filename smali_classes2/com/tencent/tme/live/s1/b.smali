.class public Lcom/tencent/tme/live/s1/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/framework/view/base/TMETabView$a;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/w0/o$b;

.field public final synthetic b:Lcom/tencent/tme/live/room/d;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/room/d;Lcom/tencent/tme/live/w0/o$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/s1/b;->b:Lcom/tencent/tme/live/room/d;

    iput-object p2, p0, Lcom/tencent/tme/live/s1/b;->a:Lcom/tencent/tme/live/w0/o$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/s1/b;->b:Lcom/tencent/tme/live/room/d;

    iget-object p1, p1, Lcom/tencent/tme/live/room/d;->c:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    const-wide/16 v0, 0x1f4

    .line 1
    invoke-virtual {p1, v0, v1}, Lcom/tencent/tme/live/room/PlayerQualitySetView;->a(J)V

    .line 2
    iget-object p1, p0, Lcom/tencent/tme/live/s1/b;->b:Lcom/tencent/tme/live/room/d;

    iget-object p1, p1, Lcom/tencent/tme/live/room/d;->c:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    iget-object p2, p0, Lcom/tencent/tme/live/s1/b;->a:Lcom/tencent/tme/live/w0/o$b;

    invoke-static {p1, p2}, Lcom/tencent/tme/live/room/PlayerQualitySetView;->a(Lcom/tencent/tme/live/room/PlayerQualitySetView;Lcom/tencent/tme/live/w0/o$b;)V

    :cond_0
    return-void
.end method
