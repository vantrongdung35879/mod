.class public Lcom/tencent/tme/live/s0/d;
.super Lcom/tencent/tme/live/c1/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/c1/a<",
        "Lcom/tencent/tme/live/w0/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/tencent/tme/live/aov/ui/ScheduleView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/ui/ScheduleView;Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/s0/d;->d:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/tme/live/c1/a;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/c1/d;Ljava/lang/Object;)V
    .locals 12

    check-cast p2, Lcom/tencent/tme/live/w0/m;

    .line 1
    sget v0, Lcom/tencent/tme/live/biz/R$id;->text_date:I

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/c1/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/tme/live/c1/a;->a:Landroid/content/Context;

    iget-wide v2, p2, Lcom/tencent/tme/live/w0/m;->a:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 2
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v5, "yyyy.MM.dd"

    invoke-direct {v2, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "E"

    invoke-direct {v3, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v4, "Mon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/tme/live/biz/R$string;->tme_monday:I

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v4, "Tue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/tme/live/biz/R$string;->tme_tuesday:I

    goto :goto_0

    :cond_2
    const-string v4, "Wed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/tme/live/biz/R$string;->tme_wednesday:I

    goto :goto_0

    :cond_3
    const-string v4, "Thu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/tme/live/biz/R$string;->tme_thursday:I

    goto :goto_0

    :cond_4
    const-string v4, "Fri"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/tme/live/biz/R$string;->tme_friday:I

    goto :goto_0

    :cond_5
    const-string v4, "Sat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/tme/live/biz/R$string;->tme_saturday:I

    goto :goto_0

    :cond_6
    const-string v4, "Sun"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/tme/live/biz/R$string;->tme_sunday:I

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v1, 0x2

    .line 4
    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v3, "%s %s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "DateFill:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ScheduleView"

    invoke-static {v4, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->match_layout:I

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/c1/d;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p2, Lcom/tencent/tme/live/w0/m;->b:Ljava/util/List;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tme/live/w0/m$b;

    iget-object v6, v4, Lcom/tencent/tme/live/w0/m$b;->d:Ljava/util/List;

    if-eqz v6, :cond_12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_9

    goto/16 :goto_7

    :cond_9
    iget-object v6, v4, Lcom/tencent/tme/live/w0/m$b;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/tme/live/w0/m$c;

    if-eqz v7, :cond_a

    iget-object v8, v7, Lcom/tencent/tme/live/w0/m$c;->b:Ljava/util/List;

    if-eqz v8, :cond_a

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_b

    goto :goto_2

    :cond_b
    iget-object v8, p0, Lcom/tencent/tme/live/c1/a;->a:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/tencent/tme/live/biz/R$layout;->tme_schedule_season_layout:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-virtual {p1, v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    sget v9, Lcom/tencent/tme/live/biz/R$id;->txt_season:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, v4, Lcom/tencent/tme/live/w0/m$b;->d:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-nez v9, :cond_c

    const/4 v9, 0x1

    goto :goto_3

    :cond_c
    const/4 v9, 0x0

    :goto_3
    iget-object v10, p2, Lcom/tencent/tme/live/w0/m;->b:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-nez v10, :cond_d

    if-eqz v9, :cond_d

    invoke-virtual {v8, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    :cond_d
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_e

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v10, p0, Lcom/tencent/tme/live/c1/a;->a:Landroid/content/Context;

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-static {v10, v11}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    :goto_4
    iget-object v9, v7, Lcom/tencent/tme/live/w0/m$c;->a:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, v4, Lcom/tencent/tme/live/w0/m$b;->b:Ljava/lang/String;

    iget-object v10, v7, Lcom/tencent/tme/live/w0/m$c;->a:Ljava/lang/String;

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v9, v11, v5

    aput-object v10, v11, v2

    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_f
    iget-object v9, v4, Lcom/tencent/tme/live/w0/m$b;->b:Ljava/lang/String;

    :goto_5
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v7, Lcom/tencent/tme/live/w0/m$c;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v4, Lcom/tencent/tme/live/w0/m$b;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tencent/tme/live/w0/m$a;

    if-eqz v10, :cond_11

    iget-object v11, v10, Lcom/tencent/tme/live/w0/m$a;->a:Ljava/lang/String;

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/tencent/tme/live/s0/d;->d:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    invoke-static {v11, v10, p1}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a(Lcom/tencent/tme/live/aov/ui/ScheduleView;Lcom/tencent/tme/live/w0/m$a;Landroid/widget/LinearLayout;)V

    goto :goto_6

    :cond_12
    :goto_7
    iget-object v6, p0, Lcom/tencent/tme/live/c1/a;->a:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/tencent/tme/live/biz/R$layout;->tme_schedule_season_layout:I

    invoke-virtual {v6, v7, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/tencent/tme/live/biz/R$id;->txt_season:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v4, Lcom/tencent/tme/live/w0/m$b;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v4, Lcom/tencent/tme/live/w0/m$b;->c:Ljava/util/List;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tme/live/w0/m$a;

    iget-object v7, p0, Lcom/tencent/tme/live/s0/d;->d:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    invoke-static {v7, v6, p1}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a(Lcom/tencent/tme/live/aov/ui/ScheduleView;Lcom/tencent/tme/live/w0/m$a;Landroid/widget/LinearLayout;)V

    goto :goto_8

    :cond_13
    return-void
.end method
