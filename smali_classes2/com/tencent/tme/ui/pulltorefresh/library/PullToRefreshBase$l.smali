.class public final Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation


# instance fields
.field public final a:Landroid/view/animation/Interpolator;

.field public final b:I

.field public final c:I

.field public final d:J

.field public e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$j;

.field public f:Z

.field public g:J

.field public h:I

.field public final synthetic i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;IIJLcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$j;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->f:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->g:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->h:I

    iput p2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->c:I

    iput p3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->b:I

    invoke-static {p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->a:Landroid/view/animation/Interpolator;

    iput-wide p4, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->d:J

    iput-object p6, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$j;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-wide v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez v4, :cond_0

    iput-wide v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->g:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v4, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->d:J

    div-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->c:I

    iget v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->b:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->a:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->h:I

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->b:I

    iget v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->h:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$j;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$b;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$b;->a:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;

    sget v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->A:I

    .line 6
    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a()V

    :cond_2
    :goto_1
    return-void
.end method
