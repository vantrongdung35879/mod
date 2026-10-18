.class public Lcom/tencent/tme/live/k1/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/k1/e;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/k1/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/k1/a;->a:Lcom/tencent/tme/live/k1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/tencent/tme/live/k1/a;->a:Lcom/tencent/tme/live/k1/e;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/k1/e;->t:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->g:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-static {p1, v0}, Lcom/tencent/tme/live/i1/d;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/k1/a;->a:Lcom/tencent/tme/live/k1/e;

    .line 4
    iget-object v0, p1, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/tencent/tme/live/g1/b$b;->c:Lcom/tencent/tme/live/g1/b$b;

    invoke-interface {v0, v1}, Lcom/tencent/tme/live/h1/b;->setVideoStateCtrlLayerMode(Lcom/tencent/tme/live/g1/b$b;)V

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 8
    iget-object v0, v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a:Lcom/tencent/tme/live/e1/a;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/tencent/tme/live/e1/d;

    invoke-virtual {v0}, Lcom/tencent/tme/live/e1/d;->a()V

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/tme/live/k1/e;->i()V

    return-void
.end method
