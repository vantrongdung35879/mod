.class public Lcom/tencent/tme/live/r0/g;
.super Lcom/tencent/tme/live/a1/a;


# static fields
.field public static final j:[Ljava/lang/String;


# instance fields
.field public f:Landroid/view/View;

.field public g:Landroid/widget/FrameLayout;

.field public h:Lcom/tencent/tme/live/n1/b;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/d1/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "questionVoteMsg"

    const-string v1, "openNewWebview"

    const-string v2, "enterRoomConfigRefresh"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/r0/g;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/a1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/r0/g;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/tencent/tme/live/r0/g;->f:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->container_question:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/tencent/tme/live/r0/g;->g:Landroid/widget/FrameLayout;

    .line 1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    sget v0, Lcom/tencent/tme/live/biz/R$dimen;->tme_live_tab_height:I

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/r0/g;->a(I)F

    move-result v0

    sget v1, Lcom/tencent/tme/live/biz/R$dimen;->tme_right_slide_topbar_height:I

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/r0/g;->a(I)F

    move-result v1

    sget v2, Lcom/tencent/tme/live/biz/R$dimen;->tme_right_shatter_tabbar_height:I

    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/r0/g;->a(I)F

    move-result v2

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/tencent/tme/live/r0/g;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/r0/g;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/b1/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/tme/live/d1/d;

    iget-object v1, p0, Lcom/tencent/tme/live/r0/g;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/tencent/tme/live/d1/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/tme/live/r0/g$a;

    invoke-direct {p1, p0, v0}, Lcom/tencent/tme/live/r0/g$a;-><init>(Lcom/tencent/tme/live/r0/g;Lcom/tencent/tme/live/d1/d;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/tencent/tme/live/d1/a;->show()V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/g;->i:Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/r0/g;->i:Ljava/util/List;

    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/r0/g;->i:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "enterRoomConfigRefresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "openNewWebview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "questionVoteMsg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "feature off state"

    const-string v0, "QuestionManagerImpl"

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p2, p0, Lcom/tencent/tme/live/r0/g;->h:Lcom/tencent/tme/live/n1/b;

    if-eqz p2, :cond_c

    check-cast p2, Lcom/tencent/tme/live/m1/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    iget-boolean v1, v1, Lcom/tencent/tme/live/w0/d;->y:Z

    if-nez v1, :cond_3

    .line 3
    invoke-static {v0, p1, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 4
    :cond_3
    iget-object p1, p2, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    if-nez p1, :cond_4

    goto/16 :goto_3

    .line 5
    :cond_4
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_1

    :cond_5
    iget-object p1, p1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    .line 6
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7
    const-string p1, "queryQuestionTask failed, roomId is empty"

    invoke-static {v0, p1, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 8
    :cond_6
    iget-object v0, p2, Lcom/tencent/tme/live/m1/a;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iput-object p1, p2, Lcom/tencent/tme/live/m1/a;->h:Ljava/lang/String;

    iget-object v0, p2, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    .line 9
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->b:Lcom/tencent/tme/live/o1/n;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/tencent/tme/live/o1/n;->a()V

    .line 10
    :cond_8
    invoke-virtual {p2}, Lcom/tencent/tme/live/m1/a;->a()V

    iget-object v0, p2, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    check-cast v0, Lcom/tencent/tme/live/o1/m;

    .line 11
    iput-object v2, v0, Lcom/tencent/tme/live/o1/m;->e:Lcom/tencent/tme/live/w0/k;

    .line 12
    invoke-virtual {v0}, Lcom/tencent/tme/live/o1/m;->a()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lcom/tencent/tme/live/m1/a;->d:Lcom/tencent/tme/live/o1/b;

    check-cast p2, Lcom/tencent/tme/live/o1/m;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v1, Lcom/tencent/tme/live/o1/l;

    invoke-direct {v1, p2, p1, v0}, Lcom/tencent/tme/live/o1/l;-><init>(Lcom/tencent/tme/live/o1/m;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/o1/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tme/live/o1/a$a;)V

    goto :goto_3

    :pswitch_1
    if-eqz p2, :cond_b

    .line 14
    instance-of v1, p2, Lcom/tencent/tme/live/w0/k;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/tencent/tme/live/r0/g;->h:Lcom/tencent/tme/live/n1/b;

    if-eqz v1, :cond_b

    move-object v3, p2

    check-cast v3, Lcom/tencent/tme/live/w0/k;

    check-cast v1, Lcom/tencent/tme/live/m1/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v4

    iget-boolean v4, v4, Lcom/tencent/tme/live/w0/d;->y:Z

    if-nez v4, :cond_9

    .line 16
    invoke-static {v0, p1, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 17
    :cond_9
    invoke-virtual {v3}, Lcom/tencent/tme/live/w0/k;->b()Z

    move-result p1

    if-nez p1, :cond_a

    .line 18
    const-string p1, "data invalidate"

    invoke-static {v0, p1, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 19
    :cond_a
    invoke-virtual {v1, v3}, Lcom/tencent/tme/live/m1/a;->a(Lcom/tencent/tme/live/w0/k;)V

    .line 20
    :cond_b
    :goto_2
    :pswitch_2
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/r0/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "OperationDialogShatter"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p2, p1, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6dc8b68f -> :sswitch_2
        0x2f184423 -> :sswitch_1
        0x36a9c826 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_operation_dialog:I

    return v0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/r0/g;->h:Lcom/tencent/tme/live/n1/b;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/tme/live/m1/a;

    .line 1
    invoke-virtual {v0}, Lcom/tencent/tme/live/m1/a;->b()V

    invoke-virtual {v0}, Lcom/tencent/tme/live/m1/a;->a()V

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tme/live/m1/a;->h:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/tme/live/m1/a;->k:Z

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/r0/g;->i:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/r0/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/d1/d;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/r0/g;->i:Ljava/util/List;

    .line 3
    :cond_4
    :goto_1
    invoke-super {p0}, Lcom/tencent/tme/live/a1/a;->d()V

    return-void
.end method

.method public h()V
    .locals 2

    new-instance v0, Lcom/tencent/tme/live/m1/a;

    iget-object v1, p0, Lcom/tencent/tme/live/r0/g;->g:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/m1/a;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/g;->h:Lcom/tencent/tme/live/n1/b;

    sget-object v0, Lcom/tencent/tme/live/r0/g;->j:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/a1/a;->a([Ljava/lang/String;)V

    return-void
.end method
