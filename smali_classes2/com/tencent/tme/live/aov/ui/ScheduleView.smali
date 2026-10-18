.class public Lcom/tencent/tme/live/aov/ui/ScheduleView;
.super Landroid/widget/FrameLayout;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/m;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/tencent/tme/live/c1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/c1/a<",
            "Lcom/tencent/tme/live/w0/m;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:Lcom/tencent/tme/live/w0/n;

.field public h:Lcom/tencent/tme/live/r0/c;

.field public i:Lcom/tencent/tme/live/d1/d;

.field public j:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$Fq7XNLs5akroPCsQoFbl_K3dKRQ(Lcom/tencent/tme/live/aov/ui/ScheduleView;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QFqySUeis_GaZnCeJkseyyK6qpg(Lcom/tencent/tme/live/aov/ui/ScheduleView;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$maT161Jc8CKOOD9KBtY5jVWaQ-8(Lcom/tencent/tme/live/aov/ui/ScheduleView;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ns_SVp38lsKvMglguSVj0LhK8Ng(Lcom/tencent/tme/live/aov/ui/ScheduleView;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->d(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->e:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->f:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->e:Z

    iput-boolean p2, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->f:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/aov/ui/ScheduleView;)Lcom/tencent/tme/live/r0/c;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->getLiveShatter()Lcom/tencent/tme/live/r0/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/tencent/tme/live/aov/ui/ScheduleView;Lcom/tencent/tme/live/w0/m$a;Landroid/widget/LinearLayout;)V
    .locals 12

    .line 4
    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tme_match_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    const/high16 v4, 0x42680000    # 58.0f

    invoke-static {v3, v4}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v5, -0x1

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v5}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/tencent/tme/live/biz/R$id;->match_item_root:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/tencent/tme/live/biz/R$string;->match_background_match:I

    iget-object v1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    const/high16 v3, 0x43240000    # 164.0f

    invoke-static {v1, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v3

    sget-object v4, Lcom/tencent/tme/live/b1/f;->b:Lcom/tencent/tme/live/b1/f;

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/b1/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0, v1, v3, p2, v2}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;IILandroid/view/View;Lcom/tencent/tme/live/l0/c;)V

    .line 7
    :goto_0
    sget v0, Lcom/tencent/tme/live/biz/R$id;->text_match_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->text_match_state:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/tencent/tme/live/biz/R$id;->img_match_left_team:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/tencent/tme/live/biz/R$id;->txt_match_left_team_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/tencent/tme/live/biz/R$id;->img_match_right_team:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v6, Lcom/tencent/tme/live/biz/R$id;->txt_match_right_team_name:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/tencent/tme/live/biz/R$id;->txt_match_score:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-wide v7, p1, Lcom/tencent/tme/live/w0/m$a;->f:J

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    .line 8
    new-instance v9, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    const-string v11, "HH:mm"

    invoke-direct {v9, v11, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MatchFill:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ScheduleView"

    invoke-static {v7, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    iget v7, p1, Lcom/tencent/tme/live/w0/m$a;->g:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_1

    .line 10
    const-string v0, ""

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/tencent/tme/live/biz/R$string;->tme_over:I

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/tencent/tme/live/biz/R$string;->tme_ongoing:I

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/tencent/tme/live/biz/R$string;->tme_upcoming:I

    :goto_1
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    iget v0, p1, Lcom/tencent/tme/live/w0/m$a;->g:I

    if-ne v0, v9, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/tme/live/biz/R$color;->tme_match_status_focus_color:I

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/tencent/tme/live/biz/R$color;->tme_match_status_normal_color:I

    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 13
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p1, Lcom/tencent/tme/live/w0/m$a;->b:Lcom/tencent/tme/live/w0/m$d;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/tencent/tme/live/w0/m$d;->c:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/tencent/tme/live/w0/m$a;->b:Lcom/tencent/tme/live/w0/m$d;

    iget-object p0, p0, Lcom/tencent/tme/live/w0/m$d;->b:Ljava/lang/String;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p0, p1, Lcom/tencent/tme/live/w0/m$a;->c:Lcom/tencent/tme/live/w0/m$d;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/tencent/tme/live/w0/m$d;->c:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/tencent/tme/live/w0/m$a;->c:Lcom/tencent/tme/live/w0/m$d;

    iget-object p0, p0, Lcom/tencent/tme/live/w0/m$d;->b:Ljava/lang/String;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget p0, p1, Lcom/tencent/tme/live/w0/m$a;->d:I

    iget v0, p1, Lcom/tencent/tme/live/w0/m$a;->e:I

    iget p1, p1, Lcom/tencent/tme/live/w0/m$a;->g:I

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v3, v4, v10

    const-string v2, "%d : %d"

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v10, :cond_7

    const-string v1, "- : -"

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ne p1, v8, :cond_a

    if-ne p0, v0, :cond_8

    if-lez v0, :cond_8

    :try_start_0
    const-string p1, "#ffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_4

    :cond_8
    const/16 p1, -0x184e

    :goto_4
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    if-le p0, v0, :cond_9

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v10

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p0, p1

    add-int/lit8 v5, p0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    :goto_5
    const/16 p1, 0x11

    invoke-virtual {v2, v3, v5, p0, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_a
    :goto_6
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/aov/ui/ScheduleView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tme/live/b1/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->i:Lcom/tencent/tme/live/d1/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/tme/live/d1/d;

    iget-object v1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/tme/live/d1/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->i:Lcom/tencent/tme/live/d1/d;

    new-instance p1, Lcom/tencent/tme/live/s0/b;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/s0/b;-><init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->i:Lcom/tencent/tme/live/d1/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->i:Lcom/tencent/tme/live/d1/d;

    invoke-virtual {p1}, Lcom/tencent/tme/live/d1/a;->show()V

    invoke-direct {p0}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->getLiveShatter()Lcom/tencent/tme/live/r0/c;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/tencent/tme/live/w2/b;->c:Z

    .line 3
    invoke-virtual {p0}, Lcom/tencent/tme/live/r0/c;->e()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic a(Ljava/util/List;Ljava/lang/Object;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->d:Lcom/tencent/tme/live/c1/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_0
    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->f:Z

    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i()V

    return-void
.end method

.method private synthetic b(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/tencent/tme/live/aov/ui/ScheduleView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tme/live/aov/ui/ScheduleView$$ExternalSyntheticLambda3;-><init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;Ljava/util/List;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic c(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->d:Lcom/tencent/tme/live/c1/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->e:Z

    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i()V

    return-void
.end method

.method private synthetic d(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/tencent/tme/live/aov/ui/ScheduleView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tme/live/aov/ui/ScheduleView$$ExternalSyntheticLambda2;-><init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;Ljava/util/List;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getLiveShatter()Lcom/tencent/tme/live/r0/c;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->h:Lcom/tencent/tme/live/r0/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    instance-of v1, v0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;

    invoke-virtual {v0}, Lcom/tencent/tme/live/framework/common/TMEBaseActivity;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$id;->content:I

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/w2/c;->a(I)Lcom/tencent/tme/live/w2/b;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/r0/c;

    iput-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->h:Lcom/tencent/tme/live/r0/c;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->h:Lcom/tencent/tme/live/r0/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/w0/m;

    iget-wide v0, v0, Lcom/tencent/tme/live/w0/m;->a:J

    iget-boolean v2, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->f:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i()V

    return-void

    :cond_0
    new-instance v2, Lcom/tencent/tme/live/aov/ui/ScheduleView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/aov/ui/ScheduleView$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;)V

    const/4 v3, 0x2

    invoke-static {v3, v0, v1, v2}, Lcom/tencent/tme/live/p0/b;->a(IJLcom/tencent/tme/live/p0/b$b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b()V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_schedule_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->refresh_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tme_schedule_empty_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->setEmptyView(Landroid/view/View;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->scoreboard_score_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->j:Landroid/widget/TextView;

    .line 16
    new-instance p1, Lcom/tencent/tme/live/s0/d;

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    sget v3, Lcom/tencent/tme/live/biz/R$layout;->tme_schedule_item:I

    invoke-direct {p1, p0, v0, v1, v3}, Lcom/tencent/tme/live/s0/d;-><init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;Landroid/content/Context;Ljava/util/List;I)V

    iput-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->d:Lcom/tencent/tme/live/c1/a;

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;)V

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->d:Lcom/tencent/tme/live/c1/a;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/tencent/tme/live/u2/a;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/u2/a;->setReleaseLabel(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/tencent/tme/live/u2/a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/u2/a;->setPullLabel(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/tencent/tme/live/u2/a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/u2/a;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/tencent/tme/live/u2/a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/u2/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/tencent/tme/live/u2/a;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/tencent/tme/live/u2/a;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshAdapterViewBase;->setShowIndicator(Z)V

    iget-object p1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/tencent/tme/live/s0/e;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/s0/e;-><init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;)V

    invoke-virtual {p1, v1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->setOnRefreshListener(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$h;)V

    .line 17
    new-instance p1, Lcom/tencent/tme/live/aov/ui/ScheduleView$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/aov/ui/ScheduleView$a;-><init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, p1, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    sget p1, Lcom/tencent/tme/live/biz/R$id;->icon_score:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setTouchable(Z)V

    sget p1, Lcom/tencent/tme/live/biz/R$id;->scoreboard_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 19
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/w0/d;->e:Lcom/tencent/tme/live/w0/n;

    iput-object v1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->g:Lcom/tencent/tme/live/w0/n;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/tencent/tme/live/w0/n;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->g:Lcom/tencent/tme/live/w0/n;

    iget-boolean v1, v1, Lcom/tencent/tme/live/w0/n;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 20
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/tencent/tme/live/s0/c;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/s0/c;-><init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance p1, Lcom/tencent/tme/live/aov/ui/ScheduleView$b;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/aov/ui/ScheduleView$b;-><init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;)V

    const-string v0, "enterLiveConfigRefresh"

    invoke-static {v0, p1}, Lcom/tencent/tme/live/x0/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/o2/c;)V

    return-void
.end method

.method public b()V
    .locals 4

    new-instance v0, Lcom/tencent/tme/live/aov/ui/ScheduleView$c;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/aov/ui/ScheduleView$c;-><init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/tme/live/p0/b;->a(IJLcom/tencent/tme/live/p0/b$b;)V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/w0/m;

    iget-wide v0, v0, Lcom/tencent/tme/live/w0/m;->a:J

    iget-boolean v2, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->e:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i()V

    return-void

    :cond_0
    new-instance v2, Lcom/tencent/tme/live/aov/ui/ScheduleView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/aov/ui/ScheduleView$$ExternalSyntheticLambda1;-><init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;)V

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/tencent/tme/live/p0/b;->a(IJLcom/tencent/tme/live/p0/b$b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->b()V

    :goto_0
    return-void
.end method
