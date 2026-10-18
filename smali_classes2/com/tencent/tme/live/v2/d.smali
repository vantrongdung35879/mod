.class public abstract Lcom/tencent/tme/live/v2/d;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/tencent/tme/live/u2/a;


# static fields
.field public static final l:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ProgressBar;

.field public d:Z

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

.field public final h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/v2/d;->l:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;Landroid/content/res/TypedArray;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/tme/live/v2/d;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    iput-object p3, p0, Lcom/tencent/tme/live/v2/d;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    invoke-virtual {p0}, Lcom/tencent/tme/live/v2/d;->getLayoutResId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tme_pull_to_refresh_header_vertical:I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tme_pull_to_refresh_header_horizontal:I

    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_1
    sget v0, Lcom/tencent/tme/live/biz/R$id;->fl_inner:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/tme/live/v2/d;->a:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->pull_to_refresh_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->a:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->pull_to_refresh_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/tme/live/v2/d;->c:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->a:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->pull_to_refresh_sub_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->a:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->pull_to_refresh_image:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;->a:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    if-ne p3, v1, :cond_2

    const/16 p3, 0x50

    goto :goto_2

    :cond_2
    const/4 p3, 0x5

    :goto_2
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget p3, Lcom/tencent/tme/live/biz/R$string;->tme_pull_to_refresh_pull_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/tencent/tme/live/v2/d;->i:Ljava/lang/CharSequence;

    sget p3, Lcom/tencent/tme/live/biz/R$string;->tme_pull_to_refresh_refreshing_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/tencent/tme/live/v2/d;->j:Ljava/lang/CharSequence;

    sget p3, Lcom/tencent/tme/live/biz/R$string;->tme_pull_to_refresh_release_label:I

    goto :goto_4

    :cond_3
    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;->a:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    if-ne p3, v1, :cond_4

    const/16 p3, 0x30

    goto :goto_3

    :cond_4
    const/4 p3, 0x3

    :goto_3
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget p3, Lcom/tencent/tme/live/biz/R$string;->tme_pull_to_refresh_from_bottom_pull_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/tencent/tme/live/v2/d;->i:Ljava/lang/CharSequence;

    sget p3, Lcom/tencent/tme/live/biz/R$string;->tme_pull_to_refresh_from_bottom_refreshing_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/tencent/tme/live/v2/d;->j:Ljava/lang/CharSequence;

    sget p3, Lcom/tencent/tme/live/biz/R$string;->tme_pull_to_refresh_from_bottom_release_label:I

    :goto_4
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/tencent/tme/live/v2/d;->k:Ljava/lang/CharSequence;

    sget p3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrHeaderBackground:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    sget p3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrHeaderBackground:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-static {p0, p3}, Lcom/tencent/tme/live/v2/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    sget p3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrHeaderTextAppearance:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    sget v0, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrHeaderTextAppearance:I

    invoke-virtual {p4, v0, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget p3, p3, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p3}, Lcom/tencent/tme/live/v2/d;->setTextAppearance(I)V

    :cond_6
    sget p3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_7

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    sget v0, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrSubHeaderTextAppearance:I

    invoke-virtual {p4, v0, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget p3, p3, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p3}, Lcom/tencent/tme/live/v2/d;->setSubTextAppearance(I)V

    :cond_7
    sget p3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrHeaderTextColor:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_8

    sget p3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrHeaderTextColor:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-direct {p0, p3}, Lcom/tencent/tme/live/v2/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_8
    sget p3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrHeaderSubTextColor:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_9

    sget p3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrHeaderSubTextColor:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-direct {p0, p3}, Lcom/tencent/tme/live/v2/d;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9
    sget p3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrDrawable:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_a

    sget p3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrDrawable:I

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_5

    :cond_a
    const/4 p3, 0x0

    :goto_5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eq p2, v2, :cond_c

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrDrawableStart:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_b

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrDrawableStart:I

    goto :goto_6

    :cond_b
    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrDrawableTop:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "ptrDrawableTop"

    const-string p3, "ptrDrawableStart"

    invoke-static {p2, p3}, Lcom/tencent/tme/live/v2/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrDrawableTop:I

    goto :goto_6

    :cond_c
    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrDrawableEnd:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_d

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrDrawableEnd:I

    :goto_6
    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_7

    :cond_d
    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrDrawableBottom:I

    invoke-virtual {p4, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "ptrDrawableBottom"

    const-string p3, "ptrDrawableEnd"

    invoke-static {p2, p3}, Lcom/tencent/tme/live/v2/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrDrawableBottom:I

    goto :goto_6

    :cond_e
    :goto_7
    if-nez p3, :cond_f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/tme/live/v2/d;->getDefaultDrawableResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_f
    invoke-virtual {p0, p3}, Lcom/tencent/tme/live/v2/d;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/v2/d;->e()V

    return-void
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSubTextAppearance(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(F)V
.end method

.method public abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/v2/d;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/tme/live/v2/d;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/v2/d;->c()V

    :goto_0
    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/v2/d;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/tencent/tme/live/v2/d;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/v2/d;->f()V

    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->f:Landroid/widget/TextView;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public abstract f()V
.end method

.method public final getContentSize()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public abstract getDefaultDrawableResId()I
.end method

.method public getLayoutResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setHeight(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/v2/d;->setSubHeaderText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/tencent/tme/live/v2/d;->d:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/v2/d;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/v2/d;->i:Ljava/lang/CharSequence;

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/v2/d;->j:Ljava/lang/CharSequence;

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/v2/d;->k:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setWidth(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
