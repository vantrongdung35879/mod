.class public Lcom/tencent/tme/live/poptv/ui/ScoreBar;
.super Landroid/widget/FrameLayout;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public f:Landroid/widget/TextView;

.field public g:I

.field public h:I

.field public i:I

.field public j:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->g:I

    const/16 v1, 0x4e20

    iput v1, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->h:I

    iput v0, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->i:I

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x1f4

    iput p2, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->g:I

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->h:I

    iput p2, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->i:I

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x1f4

    iput p2, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->g:I

    const/16 p3, 0x4e20

    iput p3, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->h:I

    iput p2, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->i:I

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tmes_layout_poptv_scorebar:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->tv_score_left:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->a:Landroid/widget/TextView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->iv_score_icon_left:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->b:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->tv_score_name_left:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->c:Landroid/widget/TextView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->tv_score_right:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->d:Landroid/widget/TextView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->iv_score_icon_right:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->e:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->tv_score_name_right:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->f:Landroid/widget/TextView;

    return-void
.end method

.method public setData(Lcom/tencent/tme/live/framework/model/PopTVCfgBean;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->g:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->a:Landroid/widget/TextView;

    .line 3
    iget v1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->l:I

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->j:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->b:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-static {v0, v1}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->c:Landroid/widget/TextView;

    .line 7
    iget-object v1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->d:Landroid/widget/TextView;

    .line 9
    iget v1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->m:I

    .line 10
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->k:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->e:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-static {v0, v1}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/tencent/tme/live/poptv/ui/ScoreBar;->f:Landroid/widget/TextView;

    .line 13
    iget-object p1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->i:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
