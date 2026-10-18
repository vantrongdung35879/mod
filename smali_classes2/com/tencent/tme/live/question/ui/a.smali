.class public Lcom/tencent/tme/live/question/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/question/ui/QuestionVoteBar;II)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    iput p2, p0, Lcom/tencent/tme/live/question/ui/a;->a:I

    iput p3, p0, Lcom/tencent/tme/live/question/ui/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->e:Landroid/widget/TextView;

    .line 2
    iget v1, p0, Lcom/tencent/tme/live/question/ui/a;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->f:Landroid/widget/TextView;

    .line 4
    iget v1, p0, Lcom/tencent/tme/live/question/ui/a;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/tencent/tme/live/question/ui/a;->a:I

    iget v1, p0, Lcom/tencent/tme/live/question/ui/a;->b:I

    add-int v2, v0, v1

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v0, v0, v3

    int-to-float v4, v2

    div-float/2addr v0, v4

    int-to-float v1, v1

    mul-float v1, v1, v3

    div-float/2addr v1, v4

    if-gtz v2, :cond_0

    iget-object v4, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    iget-object v4, v4, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    if-eqz v4, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f000000    # 0.5f

    :cond_0
    iget-object v4, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 5
    iget-object v4, v4, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->d:Landroid/view/View;

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 7
    iget-object v5, v5, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    .line 8
    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    iget-object v3, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 9
    iget-object v3, v3, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->b:Landroid/view/View;

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 11
    iget-object v6, v6, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->c:Landroid/view/View;

    .line 12
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    mul-float v0, v0, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v5, v7

    sub-float/2addr v0, v7

    mul-float v1, v1, v4

    sub-float/2addr v1, v7

    iget-object v7, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 13
    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->g:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->b:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->c:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->i:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->j:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->e:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v7, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 15
    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->g:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iget-object v9, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->k:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    iget v9, v9, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->b:I

    invoke-virtual {v7, v9}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->b:Landroid/view/View;

    iget-object v9, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->k:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    iget v9, v9, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->c:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->i:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iget-object v9, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->k:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    iget v9, v9, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->d:I

    invoke-virtual {v7, v9}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->e:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->k:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    iget v10, v10, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->e:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iget-object v9, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->k:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    iget v9, v9, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->a:I

    invoke-virtual {v7, v9}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    .line 16
    iget-object v7, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 17
    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    if-nez v8, :cond_1

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v9, Lcom/tencent/tme/live/biz/R$string;->question_grade_progress_transparent:I

    invoke-virtual {v7, v9}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->c:Landroid/view/View;

    sget v9, Lcom/tencent/tme/live/biz/R$color;->tme_transparent:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->j:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v9, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iget v8, v8, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->b:I

    invoke-virtual {v7, v8}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->c:Landroid/view/View;

    iget-object v9, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    iget v9, v9, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->c:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->j:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iget-object v9, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    iget v9, v9, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->d:I

    invoke-virtual {v7, v9}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->f:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    iget v10, v10, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->e:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iget-object v9, v7, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    iget v9, v9, Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;->a:I

    invoke-virtual {v7, v9}, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    .line 18
    :goto_0
    iget v7, p0, Lcom/tencent/tme/live/question/ui/a;->a:I

    const/4 v8, 0x0

    if-gtz v7, :cond_2

    iget v9, p0, Lcom/tencent/tme/live/question/ui/a;->b:I

    if-lez v9, :cond_2

    sub-float v1, v4, v5

    move v9, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v9, v1

    move v1, v0

    :goto_1
    iget v10, p0, Lcom/tencent/tme/live/question/ui/a;->b:I

    if-gtz v10, :cond_3

    if-lez v7, :cond_3

    sub-float v0, v4, v5

    move v1, v0

    const/4 v9, 0x0

    :cond_3
    if-gtz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    iget-object v2, v2, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->l:Lcom/tencent/tme/live/question/ui/QuestionVoteBar$a;

    if-nez v2, :cond_4

    sub-float v9, v4, v5

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    move v8, v0

    :goto_2
    float-to-int v0, v8

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 19
    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->b:Landroid/view/View;

    .line 20
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    float-to-int v0, v9

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 21
    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->c:Landroid/view/View;

    .line 22
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/a;->c:Lcom/tencent/tme/live/question/ui/QuestionVoteBar;

    .line 23
    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/QuestionVoteBar;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    return-void
.end method
