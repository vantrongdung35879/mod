.class public Lcom/tencent/tme/live/question/ui/QuestionVoteBar;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public i:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public j:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public k:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

.field public l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->k:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->k:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    iput-object p2, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->k:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    iput-object p2, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_question_vote_bar:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1
    new-instance v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->k:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->question_line_progress_yellow:I

    iput v1, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->b:I

    sget v1, Lcom/tencent/tme/live/biz/R$color;->tme_question_left_yellow:I

    iput v1, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->c:I

    sget v1, Lcom/tencent/tme/live/biz/R$string;->question_people_brown:I

    iput v1, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->d:I

    sget v1, Lcom/tencent/tme/live/biz/R$color;->tme_question_brown:I

    iput v1, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->e:I

    sget v1, Lcom/tencent/tme/live/biz/R$string;->question_line_progress_mid_bar:I

    iput v1, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->a:I

    new-instance v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    sget v2, Lcom/tencent/tme/live/biz/R$string;->question_line_progress_blue_right:I

    iput v2, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->b:I

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_question_right_blue:I

    iput v2, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->c:I

    sget v2, Lcom/tencent/tme/live/biz/R$string;->question_people_white:I

    iput v2, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->d:I

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_white:I

    iput v2, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->e:I

    iput v1, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->a:I

    .line 2
    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_background_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->g:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->question_progress_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->b:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_head_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->i:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->tv_count_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->e:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->count_container_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_background_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->question_progress_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->c:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_head_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->j:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->tv_count_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->f:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->count_container_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->question_dot_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->quesiton_progress_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->d:Landroid/view/View;

    .line 3
    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->g:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->i:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->question_people_white:I

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->j:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->question_people_white:I

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->e:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
