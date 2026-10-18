.class public Lcom/tencent/tme/live/room/c;
.super Lcom/tencent/tme/live/room/a;


# instance fields
.field public A:Z

.field public B:Landroid/widget/ImageView;

.field public C:Ljava/lang/String;

.field public j:Lcom/tencent/tme/player/TMEPlayer;

.field public k:Landroid/widget/LinearLayout;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public n:Landroid/widget/ProgressBar;

.field public o:Lcom/tencent/tme/player/TMEPlayerState;

.field public p:Lcom/tencent/tme/player/TMEPlayerState;

.field public q:I

.field public r:Lcom/tencent/tme/live/w0/o$b;

.field public s:J

.field public t:J

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public final y:Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

.field public z:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$68KL2acWpGB_xc7pGS-edOeuHGk(Lcom/tencent/tme/live/room/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/room/c;->m()V

    return-void
.end method

.method public static synthetic $r8$lambda$IdSmVWK9wOOfya8OAo1FDyo8nKw(Lcom/tencent/tme/live/room/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/room/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VPCf-mtuRwCTNKVdND_LPITYtCU(Lcom/tencent/tme/live/room/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/room/c;->n()V

    return-void
.end method

.method public static synthetic $r8$lambda$hhOts3XJurw3_fwx2hhe0xw1XR4(Lcom/tencent/tme/live/room/c;Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/room/c;->a(Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/w2/b;Landroid/view/ViewGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/room/a;-><init>(Lcom/tencent/tme/live/w2/b;Landroid/view/ViewGroup;I)V

    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->Unknown:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object p1, p0, Lcom/tencent/tme/live/room/c;->o:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object p1, p0, Lcom/tencent/tme/live/room/c;->p:Lcom/tencent/tme/player/TMEPlayerState;

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/tme/live/room/c;->q:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/tencent/tme/live/room/c;->t:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/room/c;->u:Z

    iput-boolean p1, p0, Lcom/tencent/tme/live/room/c;->v:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/tencent/tme/live/room/c;->w:Z

    iput-boolean p1, p0, Lcom/tencent/tme/live/room/c;->x:Z

    new-instance p2, Lcom/tencent/tme/live/room/c$a;

    invoke-direct {p2, p0}, Lcom/tencent/tme/live/room/c$a;-><init>(Lcom/tencent/tme/live/room/c;)V

    iput-object p2, p0, Lcom/tencent/tme/live/room/c;->y:Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    iput-boolean p1, p0, Lcom/tencent/tme/live/room/c;->A:Z

    iget-object p1, p0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/room/c;->q:I

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->w:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->i()V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->j()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/tencent/tme/live/room/c;->q:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/tencent/tme/live/room/c;->u:Z

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->h()V

    iget-boolean p1, p0, Lcom/tencent/tme/live/room/c;->w:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->q()V

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/tencent/tme/live/room/c;->v:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/room/c;->v:Z

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->q()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->r()V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V
    .locals 9

    sget-object v0, Lcom/tencent/tme/player/TMEPlayerState;->UserPaused:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, v0, :cond_0

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_play_pause:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/room/c;->b(I)V

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/tencent/tme/player/TMEPlayerState;->Stopped:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, v0, :cond_1

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_play_stop:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/tme/player/TMEPlayerState;->Interrupt:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, v0, :cond_2

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_play_failed:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/tme/player/TMEPlayerState;->Error:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, v0, :cond_3

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_play_failed:I

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/room/c;->b(I)V

    if-eqz p2, :cond_9

    iget p1, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/room/c;->a(I)V

    goto/16 :goto_3

    :cond_3
    sget-object p2, Lcom/tencent/tme/player/TMEPlayerState;->Playing:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, p2, :cond_8

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->g()V

    iget-object p1, p0, Lcom/tencent/tme/live/room/a;->i:Lcom/tencent/tme/live/room/a$a;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/tencent/tme/live/room/b$a;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/room/b$a;->a:Lcom/tencent/tme/live/room/b;

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/room/b;->m:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2, p2}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->a(ZZ)V

    .line 4
    :cond_4
    iget-wide p1, p0, Lcom/tencent/tme/live/room/c;->t:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/tencent/tme/live/room/c;->t:J

    sub-long/2addr p1, v2

    iput-wide v0, p0, Lcom/tencent/tme/live/room/c;->t:J

    iget-object v2, p0, Lcom/tencent/tme/live/room/c;->r:Lcom/tencent/tme/live/w0/o$b;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/tencent/tme/live/w0/o$b;->a:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    move-object v8, v2

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object v2

    sget-object v3, Lcom/tencent/tme/live/b/a;->b:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Lcom/tencent/tme/live/b1/c;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/tencent/tme/live/room/a;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    .line 7
    invoke-static {v6}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPlayMonitor"

    invoke-virtual {v2, p2, p1}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9
    :goto_2
    iget-wide p1, p0, Lcom/tencent/tme/live/room/c;->s:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/tencent/tme/live/room/c;->s:J

    sub-long/2addr p1, v0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/tme/live/room/c;->s:J

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object v0

    sget-object v1, Lcom/tencent/tme/live/b/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    .line 10
    invoke-static {v2}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, v2, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "EnterRoomLoadTime"

    invoke-virtual {v0, p2, p1}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 12
    :cond_8
    sget-object p2, Lcom/tencent/tme/player/TMEPlayerState;->Preparing:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne p1, p2, :cond_9

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->o()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->s()V

    :cond_9
    :goto_3
    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/tme/live/room/c;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->r:Lcom/tencent/tme/live/w0/o$b;

    if-nez v0, :cond_1

    .line 1
    const-string v0, "loadRoomDataEvent"

    invoke-static {v0}, Lcom/tencent/tme/live/x0/a;->a(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic n()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->l:Landroid/widget/TextView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_quality_change_warn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->r:Lcom/tencent/tme/live/w0/o$b;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/tme/live/w0/o$b;->e:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/tme/live/w0/o$b;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/o$b;->a:Ljava/lang/String;

    move-object v8, v0

    move-object v6, v1

    move-object v7, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v6, v1

    move-object v7, v6

    move-object v8, v7

    :goto_0
    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object v0

    sget-object v2, Lcom/tencent/tme/live/b/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tme/live/room/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    .line 27
    invoke-static {v1}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideoLoadMonitor"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(JLjava/lang/String;I)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    sget-object p1, Lcom/tencent/tme/live/b/a;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result p2

    long-to-int v1, v0

    .line 13
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v2

    new-instance v0, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 14
    new-instance v4, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v4, v0}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 15
    new-instance v0, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 16
    iput-object p1, v0, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 17
    new-instance v5, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v5, v0}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 18
    new-instance p1, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 19
    iput p2, p1, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 20
    iput v1, p1, Lcom/tencent/tme/live/z0/b$a;->b:I

    .line 21
    iput p4, p1, Lcom/tencent/tme/live/z0/b$a;->c:I

    .line 22
    new-instance v6, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v6, p1}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 23
    new-instance p1, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 24
    iput-object p3, p1, Lcom/tencent/tme/live/z0/d$a;->a:Ljava/lang/String;

    .line 25
    new-instance v7, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v7, p1}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 26
    const-string v3, "DiagramMonitor_aov"

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tme/live/room/c;->t:J

    sget-object v0, Lcom/tencent/tme/player/TMEPlayerState;->Unknown:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object v0, p0, Lcom/tencent/tme/live/room/c;->o:Lcom/tencent/tme/player/TMEPlayerState;

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/tme/player/TMEPlayer;->setVideoURL(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->p()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/room/c;->w:Z

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->l()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->m:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->n:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/tme/live/room/c;->A:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iput-boolean v1, p0, Lcom/tencent/tme/live/room/c;->A:Z

    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/room/a;->i:Lcom/tencent/tme/live/room/a$a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda2;-><init>(Lcom/tencent/tme/live/room/c;Lcom/tencent/tme/player/TMEPlayerState;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/r2/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/room/c;->A:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/room/c;->b(I)V

    return-void
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->o:Lcom/tencent/tme/player/TMEPlayerState;

    sget-object v1, Lcom/tencent/tme/player/TMEPlayerState;->Playing:Lcom/tencent/tme/player/TMEPlayerState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/tme/player/TMEPlayerState;->Preparing:Lcom/tencent/tme/player/TMEPlayerState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/tme/player/TMEPlayerState;->Prepared:Lcom/tencent/tme/player/TMEPlayerState;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const-string v0, "pause is called mPlayerState:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/room/c;->o:Lcom/tencent/tme/player/TMEPlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LivePlayerWrapper"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->o:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object v0, p0, Lcom/tencent/tme/live/room/c;->p:Lcom/tencent/tme/player/TMEPlayerState;

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz v0, :cond_3

    const-string v0, "stopPlayer is called "

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v0}, Lcom/tencent/tme/player/TMEPlayer;->stop()V

    goto :goto_0

    .line 2
    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/tencent/tme/player/TMEPlayer;->pause()V

    :cond_3
    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->k()Z

    move-result v0

    const-string v1, "LivePlayerWrapper"

    if-eqz v0, :cond_1

    const-string v0, "resume is called mPlayerState:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tme/live/room/c;->o:Lcom/tencent/tme/player/TMEPlayerState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->o:Lcom/tencent/tme/player/TMEPlayerState;

    sget-object v1, Lcom/tencent/tme/player/TMEPlayerState;->Stopped:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->p()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->o:Lcom/tencent/tme/player/TMEPlayerState;

    sget-object v2, Lcom/tencent/tme/player/TMEPlayerState;->UserPaused:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne v0, v2, :cond_2

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/tencent/tme/player/TMEPlayer;->resume()V

    const-string v0, "resumePlayer is called "

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->n:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    const-string v0, "LivePlayerWrapper"

    const-string v2, "dismissStateLayout is called"

    invoke-static {v0, v2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->k:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda1;-><init>(Lcom/tencent/tme/live/room/c;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/r2/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i()V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tme/live/room/c;->z:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/tme/live/room/a;->e:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    invoke-static {}, Lcom/tencent/tme/player/TMEPlayerFactory;->getPlayer()Lcom/tencent/tme/player/TMEPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    .line 1
    iget-object v1, p0, Lcom/tencent/tme/live/room/a;->a:Lcom/tencent/tme/live/w2/b;

    .line 2
    iget-object v1, v1, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 3
    iget-object v2, p0, Lcom/tencent/tme/live/room/c;->z:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1, v2}, Lcom/tencent/tme/player/TMEPlayer;->bindView(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    sget-object v1, Lcom/tencent/tme/player/TMEPlayer$SourceType;->LiveStream:Lcom/tencent/tme/player/TMEPlayer$SourceType;

    invoke-interface {v0, v1}, Lcom/tencent/tme/player/TMEPlayer;->setSourceType(Lcom/tencent/tme/player/TMEPlayer$SourceType;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    iget-object v1, p0, Lcom/tencent/tme/live/room/c;->y:Lcom/tencent/tme/player/TMEVideoPlayControlCallback;

    invoke-interface {v0, v1}, Lcom/tencent/tme/player/TMEPlayer;->setVideoControlCallback(Lcom/tencent/tme/player/TMEVideoPlayControlCallback;)V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/tme/live/w0/d;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    new-instance v1, Lcom/tencent/tme/live/room/c$b;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/room/c$b;-><init>(Lcom/tencent/tme/live/room/c;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/tencent/tme/player/TMEPlayer;->setVideoLogCallback(Lcom/tencent/tme/player/TMEVideoPlayLogCallback;)V

    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tme_player_state_layout:I

    iget-object v2, p0, Lcom/tencent/tme/live/room/a;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$id;->state_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/tme/live/room/c;->k:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->txt_warn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/tme/live/room/c;->l:Landroid/widget/TextView;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->img_state:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v1, p0, Lcom/tencent/tme/live/room/c;->m:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    new-instance v2, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda3;-><init>(Lcom/tencent/tme/live/room/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/tencent/tme/live/biz/R$id;->progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/tme/live/room/c;->n:Landroid/widget/ProgressBar;

    return-void
.end method

.method public final k()Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->r:Lcom/tencent/tme/live/w0/o$b;

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

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final o()Z
    .locals 3

    const-string v0, "handleMobileNet is called, ignoreMobileNetWarming="

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/tme/live/room/c;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNetState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tme/live/room/c;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LivePlayerWrapper"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/tme/live/room/c;->q:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/tencent/tme/live/room/c;->u:Z

    if-nez v0, :cond_0

    const-string v0, "handleMobileNet is called"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/tencent/tme/live/biz/R$string;->tme_mobile_net_warn:I

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/room/c;->c(I)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->e()V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/tme/player/TMEPlayer;->play()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playPlayer is called error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LivePlayerWrapper"

    invoke-static {v2, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_play_failed:I

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/room/c;->b(I)V

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/room/c;->a(I)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->r:Lcom/tencent/tme/live/w0/o$b;

    if-nez v0, :cond_0

    .line 1
    const-string v0, "loadRoomDataEvent"

    invoke-static {v0}, Lcom/tencent/tme/live/x0/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/w0/o$b;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/room/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final r()V
    .locals 2

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/room/c;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/r2/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->m:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "LivePlayerWrapper"

    const-string v1, "showLoading is called"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->n:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final t()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/tencent/tme/live/biz/R$string;->tme_play_stop:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/tencent/tme/live/biz/R$string;->tme_play_pause:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/room/c;->c(I)V

    return-void
.end method

.method public final u()V
    .locals 2

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/room/c$$ExternalSyntheticLambda4;-><init>(Lcom/tencent/tme/live/room/c;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/r2/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
