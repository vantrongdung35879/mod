.class public Lcom/tencent/tmes/live/redpacket/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmes/live/redpacket/h$c;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

.field public b:Lcom/tencent/tme/live/y2/c;

.field public c:Lcom/tencent/tmes/live/redpacket/a;

.field public d:Lcom/tencent/tme/live/w0/j;

.field public e:Landroid/view/ViewGroup;

.field public f:Z

.field public g:Lcom/tencent/tmes/live/redpacket/h$c;

.field public h:Lcom/tencent/tmes/live/redpacket/h$c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmes/live/redpacket/h;->f:Z

    new-instance v0, Lcom/tencent/tmes/live/redpacket/h$a;

    invoke-direct {v0, p0}, Lcom/tencent/tmes/live/redpacket/h$a;-><init>(Lcom/tencent/tmes/live/redpacket/h;)V

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/h;->g:Lcom/tencent/tmes/live/redpacket/h$c;

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/h;->e:Landroid/view/ViewGroup;

    new-instance p1, Lcom/tencent/tme/live/y2/c;

    invoke-direct {p1}, Lcom/tencent/tme/live/y2/c;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/h;->b:Lcom/tencent/tme/live/y2/c;

    new-instance p1, Lcom/tencent/tmes/live/redpacket/a;

    invoke-direct {p1}, Lcom/tencent/tmes/live/redpacket/a;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/h;->c:Lcom/tencent/tmes/live/redpacket/a;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tmes/live/redpacket/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tmes/live/redpacket/h;->f:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/tencent/tme/live/w0/j;ZLcom/tencent/tmes/live/redpacket/h$c;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "RedPacketEntry"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1
    const-string v1, "playRedPacketAnim, packetListBean null"

    invoke-static {v2, v1, v3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "playRedPacketAnim, rootView null"

    invoke-static {v2, v1, v3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2
    :cond_1
    iget-object v4, v1, Lcom/tencent/tme/live/w0/j;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3
    const-string v1, "playRedPacketAnim, entryPic null"

    invoke-static {v2, v1, v3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_2
    iget-object v4, v0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 5
    iget-object v4, v4, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c:Lcom/tencent/tmes/live/redpacket/g;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6
    const-string v4, "playRedPacketAnim, redPacketOpening"

    invoke-static {v2, v4, v3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iput-object v1, v0, Lcom/tencent/tmes/live/redpacket/h;->d:Lcom/tencent/tme/live/w0/j;

    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->getPacketListBean()Lcom/tencent/tme/live/w0/j;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    invoke-virtual {v1}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->getPacketListBean()Lcom/tencent/tme/live/w0/j;

    move-result-object v1

    .line 8
    iput-boolean v5, v1, Lcom/tencent/tme/live/w0/j;->j:Z

    :cond_3
    return-void

    .line 9
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tmes/live/redpacket/h;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    invoke-virtual {v4, v1}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->setData(Lcom/tencent/tme/live/w0/j;)V

    .line 10
    const-string v4, "playRedPacketAnim, alreadyMount update"

    invoke-static {v2, v4, v3}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    move-object/from16 v2, p4

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmes/live/redpacket/h;->a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tmes/live/redpacket/h$c;)V

    :goto_0
    const/4 v2, 0x0

    if-nez p3, :cond_7

    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a(Z)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tmes/live/redpacket/h;->b()V

    return-void

    :cond_7
    iget-object v4, v0, Lcom/tencent/tmes/live/redpacket/h;->c:Lcom/tencent/tmes/live/redpacket/a;

    if-eqz v4, :cond_9

    iget-object v6, v0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    new-instance v7, Lcom/tencent/tmes/live/redpacket/h$b;

    invoke-direct {v7, v0, v1}, Lcom/tencent/tmes/live/redpacket/h$b;-><init>(Lcom/tencent/tmes/live/redpacket/h;Lcom/tencent/tme/live/w0/j;)V

    if-nez v6, :cond_8

    goto/16 :goto_1

    .line 12
    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/tmes/live/redpacket/a;->a:Landroid/content/Context;

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v1, v8}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v4, Lcom/tencent/tmes/live/redpacket/a;->b:F

    iget-object v1, v4, Lcom/tencent/tmes/live/redpacket/a;->a:Landroid/content/Context;

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v1, v8}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v4, Lcom/tencent/tmes/live/redpacket/a;->c:F

    const/4 v1, 0x0

    iput v1, v4, Lcom/tencent/tmes/live/redpacket/a;->d:F

    iget-object v8, v4, Lcom/tencent/tmes/live/redpacket/a;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/tencent/tme/live/biz/R$dimen;->redpacket_entry_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, v4, Lcom/tencent/tmes/live/redpacket/a;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/tencent/tme/live/biz/R$dimen;->redpacket_entry_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setPivotX(F)V

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setPivotY(F)V

    .line 13
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v9, 0x2

    new-array v10, v9, [F

    fill-array-data v10, :array_0

    const-string v11, "scaleX"

    invoke-static {v3, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    new-array v12, v9, [F

    fill-array-data v12, :array_1

    const-string v13, "scaleY"

    invoke-static {v3, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget v14, v4, Lcom/tencent/tmes/live/redpacket/a;->b:F

    new-array v15, v9, [F

    aput v14, v15, v2

    aput v14, v15, v5

    const-string v14, "translationX"

    invoke-static {v3, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget v1, v4, Lcom/tencent/tmes/live/redpacket/a;->c:F

    new-array v3, v9, [F

    aput v1, v3, v2

    aput v1, v3, v5

    const-string v1, "translationY"

    const/4 v9, 0x0

    invoke-static {v9, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    const/4 v9, 0x4

    new-array v0, v9, [Landroid/animation/Animator;

    aput-object v10, v0, v2

    aput-object v12, v0, v5

    const/4 v10, 0x2

    aput-object v15, v0, v10

    const/4 v12, 0x3

    aput-object v3, v0, v12

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/16 v0, 0x7d0

    int-to-long v2, v0

    invoke-virtual {v8, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 14
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v10, [F

    fill-array-data v2, :array_2

    const/4 v3, 0x0

    invoke-static {v3, v11, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    new-array v11, v10, [F

    fill-array-data v11, :array_3

    invoke-static {v3, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget v13, v4, Lcom/tencent/tmes/live/redpacket/a;->b:F

    new-array v15, v10, [F

    const/16 v16, 0x0

    aput v13, v15, v16

    const/4 v13, 0x0

    aput v13, v15, v5

    invoke-static {v3, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget v14, v4, Lcom/tencent/tmes/live/redpacket/a;->c:F

    iget v15, v4, Lcom/tencent/tmes/live/redpacket/a;->d:F

    new-array v12, v10, [F

    aput v14, v12, v16

    aput v15, v12, v5

    invoke-static {v3, v1, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v2, v3, v16

    aput-object v11, v3, v5

    aput-object v13, v3, v10

    const/4 v2, 0x3

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/16 v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 15
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v4, Lcom/tencent/tmes/live/redpacket/a;->e:Landroid/animation/AnimatorSet;

    new-array v2, v10, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, v4, Lcom/tencent/tmes/live/redpacket/a;->e:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/tencent/tme/live/y2/a;

    invoke-direct {v1, v4, v7}, Lcom/tencent/tme/live/y2/a;-><init>(Lcom/tencent/tmes/live/redpacket/a;Lcom/tencent/tme/live/y2/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v4, Lcom/tencent/tmes/live/redpacket/a;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_9
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x407a6f4e
        0x407a6f4e
    .end array-data

    :array_1
    .array-data 4
        0x407b6db7
        0x407b6db7
    .end array-data

    :array_2
    .array-data 4
        0x407a6f4e
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x407b6db7
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tmes/live/redpacket/h$c;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/h;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->setData(Lcom/tencent/tme/live/w0/j;)V

    :cond_2
    const-string p1, "RedPacketEntry"

    const-string p2, "alreadyMount entry view"

    invoke-static {p1, p2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iput-object p2, p0, Lcom/tencent/tmes/live/redpacket/h;->h:Lcom/tencent/tmes/live/redpacket/h$c;

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h;->g:Lcom/tencent/tmes/live/redpacket/h$c;

    invoke-virtual {v1, v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->setShowStateCallback(Lcom/tencent/tmes/live/redpacket/h$c;)V

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    invoke-virtual {v0, p1}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->setData(Lcom/tencent/tme/live/w0/j;)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    invoke-interface {p2, p1}, Lcom/tencent/tmes/live/redpacket/h$c;->a(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/h;->e:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/h;->g:Lcom/tencent/tmes/live/redpacket/h$c;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Lcom/tencent/tmes/live/redpacket/h$c;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz v0, :cond_1

    .line 1
    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h;->d:Lcom/tencent/tme/live/w0/j;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->setData(Lcom/tencent/tme/live/w0/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/h;->d:Lcom/tencent/tme/live/w0/j;

    :cond_2
    return-void
.end method
