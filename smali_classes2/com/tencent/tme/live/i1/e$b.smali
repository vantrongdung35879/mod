.class public Lcom/tencent/tme/live/i1/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/v0/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/i1/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/v0/h<",
        "Lcom/tencent/tme/live/w0/o$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/i1/e;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/i1/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/i1/e$b;->a:Lcom/tencent/tme/live/i1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/tencent/tme/live/w0/o$b;

    .line 1
    iget-object p2, p0, Lcom/tencent/tme/live/i1/e$b;->a:Lcom/tencent/tme/live/i1/e;

    .line 2
    iget-object v0, p2, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    if-nez v0, :cond_0

    .line 3
    const-string p1, "PopTvPalyerManager"

    const-string p2, "samplePlayer already exists, ignore streaminfo!!!"

    invoke-static {p1, p2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-static {p2, p1}, Lcom/tencent/tme/live/i1/e;->a(Lcom/tencent/tme/live/i1/e;Lcom/tencent/tme/live/w0/o$b;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/i1/e$b;->a:Lcom/tencent/tme/live/i1/e;

    .line 4
    iget-object p1, p1, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    .line 5
    check-cast p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 6
    iget-object p1, p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/tencent/tme/live/g1/b;

    .line 7
    invoke-virtual {p1}, Lcom/tencent/tme/live/g1/b;->a()V

    iget-object p2, p1, Lcom/tencent/tme/live/g1/b;->j:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/tme/live/s2/h;->c(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    sget p2, Lcom/tencent/tme/live/biz/R$string;->tme_no_network_warn:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/tencent/tme/live/biz/R$string;->tme_play_failed:I

    :goto_0
    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/g1/b;->b(I)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/tencent/tme/live/i1/e$b;->a:Lcom/tencent/tme/live/i1/e;

    invoke-virtual {p2}, Lcom/tencent/tme/live/i1/e;->a()V

    iget-object p2, p0, Lcom/tencent/tme/live/i1/e$b;->a:Lcom/tencent/tme/live/i1/e;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object p2, p0, Lcom/tencent/tme/live/i1/e$b;->a:Lcom/tencent/tme/live/i1/e;

    .line 11
    iget-object p2, p2, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    .line 12
    invoke-interface {p2, p1}, Lcom/tencent/tme/live/h1/b;->setVideoStream(Lcom/tencent/tme/live/w0/o$b;)V

    iget-object p1, p0, Lcom/tencent/tme/live/i1/e$b;->a:Lcom/tencent/tme/live/i1/e;

    .line 13
    iget-object p1, p1, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    .line 14
    check-cast p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 15
    iget-object p2, p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    if-eqz p2, :cond_4

    check-cast p2, Lcom/tencent/tme/live/g1/b;

    .line 16
    iget-object v0, p2, Lcom/tencent/tme/live/g1/b;->f:Lcom/tencent/tme/live/i1/b;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/tencent/tme/live/g1/b;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tme/live/s2/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_no_network_warn:I

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/g1/b;->b(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p2, Lcom/tencent/tme/live/g1/b;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_4

    iget-object v0, p2, Lcom/tencent/tme/live/g1/b;->f:Lcom/tencent/tme/live/i1/b;

    .line 17
    iget-boolean v0, v0, Lcom/tencent/tme/live/i1/b;->b:Z

    if-nez v0, :cond_4

    .line 18
    iput-boolean v1, p2, Lcom/tencent/tme/live/g1/b;->n:Z

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_mobile_net_warn:I

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/g1/b;->b(I)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object p2, p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a:Lcom/tencent/tme/live/e1/a;

    if-eqz p2, :cond_5

    check-cast p2, Lcom/tencent/tme/live/e1/d;

    invoke-virtual {p2}, Lcom/tencent/tme/live/e1/d;->b()I

    move-result p2

    goto :goto_1

    :cond_5
    const/4 p2, -0x1

    :goto_1
    iget-object p1, p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/tencent/tme/live/g1/b;

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/g1/b;->a(I)V

    :cond_6
    :goto_2
    return-void
.end method
