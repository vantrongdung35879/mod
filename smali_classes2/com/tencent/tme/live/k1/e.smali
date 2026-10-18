.class public Lcom/tencent/tme/live/k1/e;
.super Lcom/tencent/tme/live/a1/a;


# static fields
.field public static A:F

.field public static final z:[Ljava/lang/String;


# instance fields
.field public f:Ljava/lang/String;

.field public g:Landroid/view/View;

.field public h:Lcom/tencent/tme/live/i1/e;

.field public i:Lcom/tencent/tme/live/i1/a;

.field public j:Landroid/widget/RelativeLayout;

.field public k:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

.field public l:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public m:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public n:Landroid/view/View;

.field public o:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public p:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public q:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public r:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public s:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

.field public t:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

.field public u:Lcom/tencent/tme/live/i1/c;

.field public v:Lcom/tencent/tme/live/l1/c;

.field public w:Landroid/widget/RelativeLayout;

.field public x:I

.field public y:Lcom/tencent/tme/live/i1/c$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "netStateChange"

    const-string v1, "poptvShowPauseImage"

    const-string v2, "httpAuth"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/k1/e;->z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tme/live/a1/a;-><init>()V

    const-string v0, "PopTVShatter"

    iput-object v0, p0, Lcom/tencent/tme/live/k1/e;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/k1/e;->x:I

    new-instance v0, Lcom/tencent/tme/live/k1/e$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/k1/e$a;-><init>(Lcom/tencent/tme/live/k1/e;)V

    iput-object v0, p0, Lcom/tencent/tme/live/k1/e;->y:Lcom/tencent/tme/live/i1/c$b;

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/k1/e;Z)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string p1, "jump2MainTVPage"

    invoke-static {p1}, Lcom/tencent/tme/live/x0/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/tencent/tme/live/g1/b$b;->c:Lcom/tencent/tme/live/g1/b$b;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/h1/b;->setVideoStateCtrlLayerMode(Lcom/tencent/tme/live/g1/b$b;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    .line 4
    iget-object p1, p1, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a:Lcom/tencent/tme/live/e1/a;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/tencent/tme/live/e1/d;

    invoke-virtual {p1}, Lcom/tencent/tme/live/e1/d;->a()V

    .line 6
    :cond_1
    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object p1

    new-instance v0, Lcom/tencent/tme/live/k1/d;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/k1/d;-><init>(Lcom/tencent/tme/live/k1/e;)V

    .line 7
    invoke-virtual {p1}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static j()F
    .locals 2

    sget v0, Lcom/tencent/tme/live/k1/e;->A:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const v0, 0x3fe38e39

    sput v0, Lcom/tencent/tme/live/k1/e;->A:F

    :cond_0
    sget v0, Lcom/tencent/tme/live/k1/e;->A:F

    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/view/View;)V
    .locals 8

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->g:Landroid/view/View;

    .line 8
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->f:Ljava/lang/String;

    const-string v0, "launchLivePanel"

    invoke-static {p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget p1, Lcom/tencent/tme/live/biz/R$id;->iv_background:I

    .line 10
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 11
    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->l:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->iv_close:I

    .line 12
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->m:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->container_close:I

    .line 14
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->n:Landroid/view/View;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->iv_player_border:I

    .line 16
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 17
    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->p:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->iv_top_title:I

    .line 18
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 19
    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->o:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->iv_bottom_operation:I

    .line 20
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 21
    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->q:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->iv_jump_2_tv:I

    .line 22
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 23
    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->r:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->background_container:I

    .line 24
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->j:Landroid/widget/RelativeLayout;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->player_view:I

    .line 26
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 27
    check-cast p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->k:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->scorebar:I

    .line 28
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 29
    check-cast p1, Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->s:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->j:Landroid/widget/RelativeLayout;

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {}, Lcom/tencent/tme/live/k1/e;->j()F

    move-result v0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->s:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->t:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->setData(Lcom/tencent/tme/live/framework/model/PopTVCfgBean;)V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->s:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    .line 32
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget v5, p1, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->g:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget v6, p1, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->h:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v6, v0, [F

    fill-array-data v6, :array_2

    invoke-static {v1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget v6, p1, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->i:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v3, v7, v2

    const/4 v3, 0x1

    aput-object v5, v7, v3

    aput-object v4, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v0, Lcom/tencent/tme/live/l1/a;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/l1/a;-><init>(Lcom/tencent/tme/live/poptv/ui/ScoreBar;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    iput-object v6, p1, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->j:Landroid/animation/AnimatorSet;

    .line 33
    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->g:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->player_border_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->w:Landroid/widget/RelativeLayout;

    sget v0, Lcom/tencent/tme/live/biz/R$dimen;->tmes_poptv_player_border_height:I

    sget v3, Lcom/tencent/tme/live/biz/R$dimen;->tmes_poptv_player_border_topmargin:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/tencent/tme/live/k1/e;->a(Landroid/view/ViewGroup;II)V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->k:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    sget v0, Lcom/tencent/tme/live/biz/R$dimen;->tmes_poptv_player_height:I

    sget v3, Lcom/tencent/tme/live/biz/R$dimen;->tmes_poptv_player_topmargin:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/tencent/tme/live/k1/e;->a(Landroid/view/ViewGroup;II)V

    .line 34
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;)I

    move-result p1

    sget v0, Lcom/tencent/tme/live/biz/R$dimen;->tmes_poptv_player_height:I

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/k1/e;->a(I)I

    move-result v0

    sget v3, Lcom/tencent/tme/live/biz/R$dimen;->tmes_poptv_player_topmargin:I

    invoke-virtual {p0, v3}, Lcom/tencent/tme/live/k1/e;->a(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/tme/live/k1/e;->k()I

    move-result v4

    mul-int v0, v0, p1

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-static {}, Lcom/tencent/tme/live/k1/e;->j()F

    move-result v5

    mul-float v5, v5, v0

    float-to-int v0, v5

    add-int/lit8 v0, v0, -0x9

    mul-int p1, p1, v3

    div-int/2addr p1, v4

    iget-object v3, p0, Lcom/tencent/tme/live/k1/e;->s:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v3, v2, p1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->s:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;)I

    move-result p1

    sget v0, Lcom/tencent/tme/live/biz/R$dimen;->tmes_poptv_operation_container_height:I

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/k1/e;->a(I)I

    move-result v0

    sget v3, Lcom/tencent/tme/live/biz/R$dimen;->tmes_poptv_player_width:I

    invoke-virtual {p0, v3}, Lcom/tencent/tme/live/k1/e;->a(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/tme/live/k1/e;->k()I

    move-result v4

    mul-int v0, v0, p1

    div-int/2addr v0, v4

    mul-int p1, p1, v3

    div-int/2addr p1, v4

    iget-object v3, p0, Lcom/tencent/tme/live/k1/e;->g:Landroid/view/View;

    sget v4, Lcom/tencent/tme/live/biz/R$id;->jump_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;)I

    move-result p1

    sget v0, Lcom/tencent/tme/live/biz/R$dimen;->tmes_poptv_close_top_margin:I

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/k1/e;->a(I)I

    move-result v0

    sget v3, Lcom/tencent/tme/live/biz/R$dimen;->tmes_poptv_close_right_margin:I

    invoke-virtual {p0, v3}, Lcom/tencent/tme/live/k1/e;->a(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/tme/live/k1/e;->k()I

    move-result v4

    mul-int v0, v0, p1

    div-int/2addr v0, v4

    mul-int p1, p1, v3

    div-int/2addr p1, v4

    iget-object v3, p0, Lcom/tencent/tme/live/k1/e;->n:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v2, v0, p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->n:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->t:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 38
    iget-object p1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->b:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->l:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-static {p1, v0}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->t:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 40
    iget-object p1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->d:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->m:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v3, Lcom/tencent/tme/live/biz/R$string;->poptv_close:I

    invoke-static {p1, v0, v3}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;I)V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->o:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->t:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 42
    iget-object p1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->e:Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/tencent/tme/live/k1/e;->r:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v4, Lcom/tencent/tme/live/biz/R$string;->poptv_jump2main:I

    invoke-static {p1, v3, v4}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;I)V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->q:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->t:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 44
    iget-object p1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->c:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->p:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-static {p1, v0}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->p:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->t:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 46
    iget-object v0, v0, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->c:Ljava/lang/String;

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->n:Landroid/view/View;

    new-instance v0, Lcom/tencent/tme/live/s2/c;

    new-instance v2, Lcom/tencent/tme/live/k1/a;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/k1/a;-><init>(Lcom/tencent/tme/live/k1/e;)V

    const-wide/16 v3, 0x5dc

    invoke-direct {v0, v2, v3, v4}, Lcom/tencent/tme/live/s2/c;-><init>(Landroid/view/View$OnClickListener;J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->r:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    new-instance v0, Lcom/tencent/tme/live/s2/c;

    new-instance v2, Lcom/tencent/tme/live/k1/b;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/k1/b;-><init>(Lcom/tencent/tme/live/k1/e;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/tencent/tme/live/s2/c;-><init>(Landroid/view/View$OnClickListener;J)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->C:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->w:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/tencent/tme/live/s2/c;

    new-instance v2, Lcom/tencent/tme/live/k1/c;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/k1/c;-><init>(Lcom/tencent/tme/live/k1/e;)V

    const-wide/16 v3, 0x1f4

    .line 49
    invoke-direct {v0, v2, v3, v4}, Lcom/tencent/tme/live/s2/c;-><init>(Landroid/view/View$OnClickListener;J)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_2
    new-instance p1, Lcom/tencent/tme/live/i1/e;

    .line 52
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 53
    iget-object v2, p0, Lcom/tencent/tme/live/k1/e;->k:Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    iget-object v3, p0, Lcom/tencent/tme/live/k1/e;->t:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    invoke-direct {p1, v0, v2, v3}, Lcom/tencent/tme/live/i1/e;-><init>(Landroid/app/Activity;Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;Lcom/tencent/tme/live/framework/model/PopTVCfgBean;)V

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    .line 54
    new-instance v2, Lcom/tencent/tme/live/f1/b;

    invoke-direct {v2}, Lcom/tencent/tme/live/f1/b;-><init>()V

    new-instance v3, Lcom/tencent/tme/live/e1/d;

    invoke-direct {v3, v0}, Lcom/tencent/tme/live/e1/d;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object v2, v3, Lcom/tencent/tme/live/e1/d;->d:Lcom/tencent/tme/live/f1/a;

    .line 56
    iget-object v0, p1, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    iget-object v4, p1, Lcom/tencent/tme/live/i1/e;->a:Landroid/app/Activity;

    invoke-interface {v0, v4}, Lcom/tencent/tme/live/h1/b;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p1, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    check-cast v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    invoke-virtual {v0, v3}, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a(Lcom/tencent/tme/live/e1/a;)V

    iget-object v0, p1, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    move-object v3, v0

    check-cast v3, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 57
    iput-object v2, v3, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->c:Lcom/tencent/tme/live/f1/a;

    .line 58
    iget-object v2, p1, Lcom/tencent/tme/live/i1/e;->f:Lcom/tencent/tme/live/h1/a;

    invoke-interface {v0, v2}, Lcom/tencent/tme/live/h1/b;->setPlayerStateCallback(Lcom/tencent/tme/live/h1/a;)V

    new-instance v0, Lcom/tencent/tme/live/j1/c;

    invoke-direct {v0}, Lcom/tencent/tme/live/j1/c;-><init>()V

    iput-object v0, p1, Lcom/tencent/tme/live/i1/e;->d:Lcom/tencent/tme/live/j1/a;

    .line 59
    new-instance v0, Lcom/tencent/tme/live/g1/b;

    invoke-direct {v0}, Lcom/tencent/tme/live/g1/b;-><init>()V

    new-instance v2, Lcom/tencent/tme/live/i1/b;

    iget-object v3, p1, Lcom/tencent/tme/live/i1/e;->c:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    invoke-direct {v2, v3}, Lcom/tencent/tme/live/i1/b;-><init>(Lcom/tencent/tme/live/framework/model/PopTVCfgBean;)V

    .line 60
    iput-object v2, v0, Lcom/tencent/tme/live/g1/b;->f:Lcom/tencent/tme/live/i1/b;

    .line 61
    iget-object p1, p1, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    check-cast p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 62
    iput-object v0, p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    iget-object v2, p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a:Lcom/tencent/tme/live/e1/a;

    iget-object v3, p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->e:Lcom/tencent/tme/live/h1/a;

    .line 63
    iput-object v2, v0, Lcom/tencent/tme/live/g1/b;->h:Lcom/tencent/tme/live/e1/a;

    iput-object v3, v0, Lcom/tencent/tme/live/g1/b;->g:Lcom/tencent/tme/live/h1/a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/tencent/tme/live/biz/R$layout;->tmes_layout_sample_videoview_state:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tme/live/g1/b;->a:Landroid/view/View;

    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 64
    iget-object v0, p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    iget-object v1, p1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->f:Landroid/content/Context;

    check-cast v0, Lcom/tencent/tme/live/g1/b;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tme/live/g1/b;->a(Landroid/content/Context;Lcom/tencent/tme/live/e1/b;)V

    .line 65
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    invoke-virtual {p1}, Lcom/tencent/tme/live/i1/e;->b()V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/tme/live/j1/b;->a:J

    .line 67
    const-string p1, "live_poptv_open_timestamp"

    invoke-static {p1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {}, Lcom/tencent/tme/live/b1/l;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/tencent/tme/live/b1/l;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    :cond_3
    new-instance p1, Lcom/tencent/tme/live/i1/c;

    invoke-direct {p1}, Lcom/tencent/tme/live/i1/c;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/k1/e;->u:Lcom/tencent/tme/live/i1/c;

    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->y:Lcom/tencent/tme/live/i1/c$b;

    .line 70
    iput-object v0, p1, Lcom/tencent/tme/live/i1/c;->c:Lcom/tencent/tme/live/i1/c$b;

    iget-object v0, p1, Lcom/tencent/tme/live/i1/c;->a:Landroid/os/Handler;

    iget-object v1, p1, Lcom/tencent/tme/live/i1/c;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tme/live/w0/d;->j:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/tencent/tme/live/i1/c;->b:I

    iget-object v0, p1, Lcom/tencent/tme/live/i1/c;->a:Landroid/os/Handler;

    iget-object p1, p1, Lcom/tencent/tme/live/i1/c;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    .line 72
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 73
    iget-object v1, p0, Lcom/tencent/tme/live/k1/e;->t:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 74
    iget-object p1, p1, Lcom/tencent/tme/live/i1/e;->e:Lcom/tencent/tme/live/i1/d;

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    goto :goto_1

    .line 75
    :cond_4
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v2

    new-instance p1, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 76
    new-instance v4, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v4, p1}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 77
    new-instance p1, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    sget-object v3, Lcom/tencent/tme/live/b/a;->b:Ljava/lang/String;

    .line 78
    iput-object v3, p1, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 79
    iget-object v3, v1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    .line 80
    iput-object v3, p1, Lcom/tencent/tme/live/z0/c$a;->b:Ljava/lang/String;

    .line 81
    iget-object v1, v1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->o:Ljava/lang/String;

    .line 82
    iput-object v1, p1, Lcom/tencent/tme/live/z0/c$a;->c:Ljava/lang/String;

    .line 83
    new-instance v5, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v5, p1}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 84
    new-instance p1, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    invoke-static {v0}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result v0

    .line 85
    iput v0, p1, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 86
    new-instance v6, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v6, p1}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 87
    new-instance p1, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 88
    new-instance v7, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v7, p1}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 89
    const-string v3, "PoptvShow_aov"

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    :cond_5
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final a(Landroid/view/ViewGroup;II)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/k1/e;->a(I)I

    move-result p2

    invoke-virtual {p0, p3}, Lcom/tencent/tme/live/k1/e;->a(I)I

    move-result p3

    invoke-virtual {p0}, Lcom/tencent/tme/live/k1/e;->k()I

    move-result v1

    mul-int p2, p2, v0

    div-int/2addr p2, v1

    int-to-float v2, p2

    invoke-static {}, Lcom/tencent/tme/live/k1/e;->j()F

    move-result v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    add-int/lit8 v2, v2, -0x9

    mul-int v0, v0, p3

    div-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 p2, 0x0

    invoke-virtual {p3, p2, v0, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "poptvShowPauseImage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "netStateChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "httpAuth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    if-eqz p2, :cond_d

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_d

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 90
    iget-object p2, p0, Lcom/tencent/tme/live/k1/e;->w:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/tencent/tme/live/k1/e;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-nez p2, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object p2, p0, Lcom/tencent/tme/live/k1/e;->v:Lcom/tencent/tme/live/l1/c;

    if-nez p2, :cond_4

    new-instance p2, Lcom/tencent/tme/live/l1/c;

    invoke-direct {p2}, Lcom/tencent/tme/live/l1/c;-><init>()V

    iput-object p2, p0, Lcom/tencent/tme/live/k1/e;->v:Lcom/tencent/tme/live/l1/c;

    :cond_4
    iget-object p2, p0, Lcom/tencent/tme/live/k1/e;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tme/live/k1/e;->v:Lcom/tencent/tme/live/l1/c;

    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_5

    goto/16 :goto_5

    .line 91
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "tme_video_toast"

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 92
    :cond_7
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v1, v5}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v5

    sget v6, Lcom/tencent/tme/live/biz/R$string;->chat_background_message:I

    invoke-static {v6, v4}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, v2, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_live_label_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/tencent/tme/live/l1/b;

    invoke-direct {v0, p2, v4}, Lcom/tencent/tme/live/l1/b;-><init>(Lcom/tencent/tme/live/l1/c;Landroid/widget/TextView;)V

    iput-object v0, p2, Lcom/tencent/tme/live/l1/c;->a:Ljava/lang/Runnable;

    :goto_1
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lcom/tencent/tme/live/l1/c;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_d

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p2, Lcom/tencent/tme/live/l1/c;->a:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {v4, p1, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 94
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    if-eqz p1, :cond_d

    const/4 p1, 0x3

    if-nez p2, :cond_8

    const/4 p2, 0x3

    goto :goto_2

    :cond_8
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_2
    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    .line 95
    iget-object v0, v0, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    if-eqz v0, :cond_d

    check-cast v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 96
    iget-object v0, v0, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    if-eqz v0, :cond_d

    check-cast v0, Lcom/tencent/tme/live/g1/b;

    .line 97
    iget-object v2, v0, Lcom/tencent/tme/live/g1/b;->f:Lcom/tencent/tme/live/i1/b;

    if-eqz v2, :cond_d

    if-ne p2, p1, :cond_9

    .line 98
    iget-object p1, v0, Lcom/tencent/tme/live/g1/b;->h:Lcom/tencent/tme/live/e1/a;

    if-eqz p1, :cond_d

    .line 99
    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_no_network_warn:I

    .line 100
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/g1/b;->b(I)V

    .line 101
    iget-object p1, v0, Lcom/tencent/tme/live/g1/b;->h:Lcom/tencent/tme/live/e1/a;

    .line 102
    check-cast p1, Lcom/tencent/tme/live/e1/d;

    invoke-virtual {p1}, Lcom/tencent/tme/live/e1/d;->a()V

    goto :goto_5

    :cond_9
    if-ne p2, v1, :cond_a

    goto :goto_3

    :cond_a
    if-ne p2, v3, :cond_d

    .line 103
    iget-boolean p1, v2, Lcom/tencent/tme/live/i1/b;->b:Z

    if-eqz p1, :cond_c

    .line 104
    :goto_3
    iget-object p1, v0, Lcom/tencent/tme/live/g1/b;->h:Lcom/tencent/tme/live/e1/a;

    if-eqz p1, :cond_d

    .line 105
    iget-boolean p2, v0, Lcom/tencent/tme/live/g1/b;->n:Z

    if-eqz p2, :cond_b

    .line 106
    move-object p2, p1

    check-cast p2, Lcom/tencent/tme/live/e1/d;

    .line 107
    iget-object v1, p2, Lcom/tencent/tme/live/e1/d;->h:Lcom/tencent/tme/live/w0/o$b;

    if-nez v1, :cond_b

    .line 108
    invoke-virtual {p2}, Lcom/tencent/tme/live/e1/d;->b()I

    move-result p1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/tencent/tme/live/e1/d;

    invoke-virtual {p1}, Lcom/tencent/tme/live/e1/d;->c()I

    move-result p1

    :goto_4
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/g1/b;->a(I)V

    goto :goto_5

    .line 109
    :cond_c
    iget-object p1, v0, Lcom/tencent/tme/live/g1/b;->h:Lcom/tencent/tme/live/e1/a;

    .line 110
    check-cast p1, Lcom/tencent/tme/live/e1/d;

    invoke-virtual {p1}, Lcom/tencent/tme/live/e1/d;->a()V

    invoke-static {v0, v3}, Lcom/tencent/tme/live/g1/b;->a(Lcom/tencent/tme/live/g1/b;Z)Z

    sget p1, Lcom/tencent/tme/live/biz/R$string;->tme_mobile_net_warn:I

    .line 111
    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/g1/b;->b(I)V

    goto :goto_5

    .line 112
    :pswitch_2
    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/tencent/tme/live/i1/e;->a()V

    iget-object p1, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    invoke-virtual {p1}, Lcom/tencent/tme/live/i1/e;->b()V

    :cond_d
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f729b0 -> :sswitch_2
        0x31f21dc4 -> :sswitch_1
        0x4099fb55 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tmes_layout_poptv_container:I

    return v0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    if-eqz v0, :cond_1

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 2
    iget-object v1, v1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a:Lcom/tencent/tme/live/e1/a;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/tencent/tme/live/e1/d;

    .line 3
    iput-boolean v2, v1, Lcom/tencent/tme/live/e1/d;->e:Z

    .line 4
    invoke-virtual {v1}, Lcom/tencent/tme/live/e1/d;->a()V

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/i1/e;->e:Lcom/tencent/tme/live/i1/d;

    if-eqz v0, :cond_1

    .line 6
    iput-boolean v2, v0, Lcom/tencent/tme/live/i1/d;->h:Z

    :cond_1
    return-void
.end method

.method public f()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tencent/tme/live/i1/e;->a()V

    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    .line 1
    iget-object v3, v0, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    if-eqz v3, :cond_3

    check-cast v3, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 2
    iget-object v3, v3, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a:Lcom/tencent/tme/live/e1/a;

    if-eqz v3, :cond_0

    check-cast v3, Lcom/tencent/tme/live/e1/d;

    .line 3
    iget-object v4, v3, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz v4, :cond_0

    const-string v4, "SamplePlayer"

    const-string v5, "stopPlayer is called "

    invoke-static {v4, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/tencent/tme/live/e1/d;->a:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v3}, Lcom/tencent/tme/player/TMEPlayer;->stop()V

    .line 4
    :cond_0
    iget-object v3, v0, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    check-cast v3, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 5
    iget-object v4, v3, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a:Lcom/tencent/tme/live/e1/a;

    if-eqz v4, :cond_1

    check-cast v4, Lcom/tencent/tme/live/e1/d;

    invoke-virtual {v4}, Lcom/tencent/tme/live/e1/d;->e()V

    :cond_1
    iget-object v4, v3, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    if-eqz v4, :cond_2

    check-cast v4, Lcom/tencent/tme/live/g1/b;

    invoke-virtual {v4}, Lcom/tencent/tme/live/g1/b;->b()V

    :cond_2
    iput-object v2, v3, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->g:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 6
    iput-object v2, v0, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    :cond_3
    iput-object v2, v0, Lcom/tencent/tme/live/i1/e;->d:Lcom/tencent/tme/live/j1/a;

    iget-object v3, v0, Lcom/tencent/tme/live/i1/e;->e:Lcom/tencent/tme/live/i1/d;

    if-eqz v3, :cond_6

    .line 7
    iput-boolean v1, v3, Lcom/tencent/tme/live/i1/d;->g:Z

    iput-object v2, v3, Lcom/tencent/tme/live/i1/d;->d:Landroid/content/Context;

    iput-boolean v1, v3, Lcom/tencent/tme/live/i1/d;->h:Z

    iput v1, v3, Lcom/tencent/tme/live/i1/d;->e:I

    .line 8
    iget-object v4, v3, Lcom/tencent/tme/live/i1/d;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Lcom/tencent/tme/live/i1/d;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_4
    iput-object v2, v3, Lcom/tencent/tme/live/i1/d;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 9
    iget-object v4, v3, Lcom/tencent/tme/live/i1/d;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_5
    iput-object v2, v3, Lcom/tencent/tme/live/i1/d;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    :cond_6
    iput-object v2, v0, Lcom/tencent/tme/live/i1/e;->e:Lcom/tencent/tme/live/i1/d;

    .line 11
    iput-object v2, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    :cond_7
    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->i:Lcom/tencent/tme/live/i1/a;

    if-eqz v0, :cond_9

    .line 12
    iget-object v3, v0, Lcom/tencent/tme/live/i1/a;->a:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_8

    if-eqz v3, :cond_8

    .line 13
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_8
    iput-object v2, v0, Lcom/tencent/tme/live/i1/a;->a:Landroid/animation/AnimatorSet;

    .line 14
    iput-object v2, p0, Lcom/tencent/tme/live/k1/e;->i:Lcom/tencent/tme/live/i1/a;

    :cond_9
    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->s:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    if-eqz v0, :cond_b

    .line 15
    iget-object v3, v0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->j:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v2, v0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->j:Landroid/animation/AnimatorSet;

    .line 16
    :cond_a
    iput-object v2, p0, Lcom/tencent/tme/live/k1/e;->s:Lcom/tencent/tme/live/poptv/ui/ScoreBar;

    :cond_b
    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->u:Lcom/tencent/tme/live/i1/c;

    if-eqz v0, :cond_d

    .line 17
    iput-object v2, v0, Lcom/tencent/tme/live/i1/c;->c:Lcom/tencent/tme/live/i1/c$b;

    iget-object v3, v0, Lcom/tencent/tme/live/i1/c;->a:Landroid/os/Handler;

    iget-object v4, v0, Lcom/tencent/tme/live/i1/c;->e:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/tencent/tme/live/i1/c;->a:Landroid/os/Handler;

    iput-boolean v1, v0, Lcom/tencent/tme/live/i1/c;->g:Z

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tme/live/i1/c;->f:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/tme/live/i1/c;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    if-eqz v1, :cond_c

    sput-object v1, Lcom/tencent/tme/live/v0/f;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    :cond_c
    iput-object v2, v0, Lcom/tencent/tme/live/i1/c;->d:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 18
    :cond_d
    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->v:Lcom/tencent/tme/live/l1/c;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/tme/live/k1/e;->w:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_e

    goto :goto_0

    .line 19
    :cond_e
    iget-object v3, v0, Lcom/tencent/tme/live/l1/c;->a:Ljava/lang/Runnable;

    if-eqz v3, :cond_f

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, v0, Lcom/tencent/tme/live/l1/c;->a:Ljava/lang/Runnable;

    :cond_f
    :goto_0
    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/k1/e;->h:Lcom/tencent/tme/live/i1/e;

    if-eqz v0, :cond_2

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/i1/e;->b:Lcom/tencent/tme/live/h1/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;

    .line 2
    iget-object v3, v1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->a:Lcom/tencent/tme/live/e1/a;

    if-eqz v3, :cond_0

    check-cast v3, Lcom/tencent/tme/live/e1/d;

    .line 3
    iput-boolean v2, v3, Lcom/tencent/tme/live/e1/d;->e:Z

    .line 4
    invoke-virtual {v3}, Lcom/tencent/tme/live/e1/d;->c()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-object v1, v1, Lcom/tencent/tme/live/player/playerview/ui/SamplePlayerView;->b:Lcom/tencent/tme/live/g1/a;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/tencent/tme/live/g1/b;

    invoke-virtual {v1, v3}, Lcom/tencent/tme/live/g1/b;->a(I)V

    .line 5
    :cond_1
    iget-object v0, v0, Lcom/tencent/tme/live/i1/e;->e:Lcom/tencent/tme/live/i1/d;

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v2, v0, Lcom/tencent/tme/live/i1/d;->h:Z

    :cond_2
    return-void
.end method

.method public h()V
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/k1/e;->z:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/a1/a;->a([Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/tencent/tme/live/k1/e;->x:I

    if-gtz v0, :cond_0

    sget v0, Lcom/tencent/tme/live/biz/R$dimen;->tmes_poptv_ui_effect_height:I

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/k1/e;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/k1/e;->x:I

    :cond_0
    iget v0, p0, Lcom/tencent/tme/live/k1/e;->x:I

    return v0
.end method
