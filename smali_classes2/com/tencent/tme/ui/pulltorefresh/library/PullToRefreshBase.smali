.class public abstract Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$j;,
        Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;,
        Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;,
        Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;,
        Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$h;,
        Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$i;,
        Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$g;,
        Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$f;,
        Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;,
        Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# static fields
.field public static final synthetic A:I


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:Z

.field public g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

.field public h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

.field public i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

.field public j:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public k:Landroid/widget/FrameLayout;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Landroid/view/animation/Interpolator;

.field public r:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

.field public s:Lcom/tencent/tme/live/v2/d;

.field public t:Lcom/tencent/tme/live/v2/d;

.field public u:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public v:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public w:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$g<",
            "TT;>;"
        }
    .end annotation
.end field

.field public x:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase<",
            "TT;>.l;"
        }
    .end annotation
.end field

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    iput-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    iput-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->p:Z

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;->a:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

    iput-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->r:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->y:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->z:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    iput-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    iput-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->p:Z

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;->a:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

    iput-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->r:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->y:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->z:Z

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    iput-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    iput-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->p:Z

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;->a:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

    iput-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->r:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->y:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->z:Z

    iput-object p2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    iput-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    iput-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->p:Z

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;->a:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->y:Z

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->z:Z

    iput-object p2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    iput-object p3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->r:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, -0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getMaximumPullScroll()I
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public a(ZZ)Lcom/tencent/tme/live/u2/b;
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/u2/b;

    invoke-direct {v0}, Lcom/tencent/tme/live/u2/b;-><init>()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/u2/b;->a(Lcom/tencent/tme/live/v2/d;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/u2/b;->a(Lcom/tencent/tme/live/v2/d;)V

    :cond_1
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Landroid/content/res/TypedArray;)Lcom/tencent/tme/live/v2/d;
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->r:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/tencent/tme/live/v2/e;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/tencent/tme/live/v2/e;-><init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;Landroid/content/res/TypedArray;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/tme/live/v2/b;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/tencent/tme/live/v2/b;-><init>(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;Landroid/content/res/TypedArray;)V

    :goto_0
    const/4 p1, 0x4

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-object v0
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->u:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$i;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->v:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$h;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    sget-object v2, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/tencent/tme/live/s0/e;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/s0/e;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    invoke-virtual {v0}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c()V

    goto :goto_0

    .line 2
    :cond_1
    sget-object v2, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->d:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-ne v1, v2, :cond_2

    check-cast v0, Lcom/tencent/tme/live/s0/e;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/s0/e;->a:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    invoke-virtual {v0}, Lcom/tencent/tme/live/aov/ui/ScheduleView;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    .line 9
    invoke-virtual/range {v1 .. v7}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(IJJLcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$j;)V

    return-void
.end method

.method public final a(IJJLcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$j;)V
    .locals 8

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->x:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->f:Z

    iget-object v1, v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    :goto_0
    move v3, v0

    if-eq v3, p1, :cond_4

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    :cond_2
    new-instance v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;-><init>(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;IIJLcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$j;)V

    iput-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->x:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$l;

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-lez p3, :cond_3

    invoke-virtual {p0, v0, p4, p5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Landroid/content/res/TypedArray;)V
    .locals 0

    return-void
.end method

.method public final varargs a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget-boolean p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->k()V

    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->w:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$g;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-interface {p1, p0, p2, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$g;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;)V

    :cond_4
    return-void
.end method

.method public a(Z)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v0}, Lcom/tencent/tme/live/v2/d;->b()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v0}, Lcom/tencent/tme/live/v2/d;->b()V

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->l:Z

    if-eqz p1, :cond_3

    new-instance v6, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$b;

    invoke-direct {v6, p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$b;-><init>(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;)V

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result p1

    neg-int p1, p1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result p1

    :goto_0
    move v1, p1

    .line 7
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result p1

    int-to-long v2, p1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(IJJLcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$j;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a()V

    :goto_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a:I

    sget-object v0, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrMode:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrMode:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a(I)Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    :cond_1
    sget v3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrAnimationStyle:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrAnimationStyle:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 1
    sget-object v3, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;->a:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

    .line 2
    :goto_1
    iput-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->r:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$d;

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    .line 3
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    invoke-virtual {v3, p2, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object p2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-super {p0, p2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5
    sget-object p2, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Landroid/content/res/TypedArray;)Lcom/tencent/tme/live/v2/d;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    sget-object p2, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->d:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;Landroid/content/res/TypedArray;)Lcom/tencent/tme/live/v2/d;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    sget p1, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrRefreshableViewBackground:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrRefreshableViewBackground:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_4
    sget p1, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrAdapterViewBackground:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ptrAdapterViewBackground"

    const-string p2, "ptrRefreshableViewBackground"

    invoke-static {p1, p2}, Lcom/tencent/tme/live/v2/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrAdapterViewBackground:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5

    :goto_2
    iget-object p2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    sget p1, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrOverScroll:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrOverScroll:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->o:Z

    :cond_6
    sget p1, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lcom/tencent/tme/live/biz/R$styleable;->TMEPullToRefresh_tme_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m:Z

    :cond_7
    invoke-virtual {p0, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m()V

    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->f:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    .line 1
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v0

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f()Z

    move-result v0

    return v0
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->f:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getCurrentMode()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->n:Z

    return v0
.end method

.method public final getFooterLayout()Lcom/tencent/tme/live/v2/d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    return-object v0
.end method

.method public final getFooterSize()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v0}, Lcom/tencent/tme/live/v2/d;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getHeaderLayout()Lcom/tencent/tme/live/v2/d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    return-object v0
.end method

.method public final getHeaderSize()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v0}, Lcom/tencent/tme/live/v2/d;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/tencent/tme/live/u2/a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/tencent/tme/live/u2/b;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;
.end method

.method public getPullToRefreshScrollDuration()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public getPullToRefreshScrollDurationLonger()I
    .locals 1

    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->j:Landroid/view/View;

    return-object v0
.end method

.method public getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->l:Z

    return v0
.end method

.method public final getState()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    return-object v0
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_0
    iget-object v2, v0, Lcom/tencent/tme/live/v2/d;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/tme/live/v2/d;->a()V

    :goto_1
    return-void
.end method

.method public final i()V
    .locals 1

    new-instance v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$a;-><init>(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/v2/d;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_0
    iget-object v2, v0, Lcom/tencent/tme/live/v2/d;->k:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/tme/live/v2/d;->d()V

    :goto_1
    return-void
.end method

.method public k()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->p:Z

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v1}, Lcom/tencent/tme/live/v2/d;->e()V

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v1}, Lcom/tencent/tme/live/v2/d;->e()V

    invoke-virtual {p0, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(I)V

    return-void
.end method

.method public final l()V
    .locals 8

    invoke-direct {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/v2/d;->setWidth(I)V

    neg-int v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v3}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v3, v0}, Lcom/tencent/tme/live/v2/d;->setWidth(I)V

    neg-int v3, v0

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v2}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v2, v0}, Lcom/tencent/tme/live/v2/d;->setHeight(I)V

    neg-int v2, v0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v4}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v4, v0}, Lcom/tencent/tme/live/v2/d;->setHeight(I)V

    neg-int v4, v0

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public m()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    const/4 v2, 0x0

    .line 1
    invoke-super {p0, v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    const/4 v2, -0x1

    .line 3
    invoke-super {p0, v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->l()V

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    sget-object v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    :goto_0
    iput-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    if-eqz v3, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->c:F

    sub-float v1, v0, v1

    iget v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b:F

    sub-float v3, p1, v3

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b:F

    sub-float v1, p1, v1

    iget v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->c:F

    sub-float v3, v0, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_9

    iget-boolean v5, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->n:Z

    if-eqz v5, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_9

    :cond_6
    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v3}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_7

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f()Z

    move-result v3

    if-eqz v3, :cond_7

    iput v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->c:F

    iput p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b:F

    iput-boolean v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-ne p1, v0, :cond_9

    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    :goto_1
    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v3}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a()Z

    move-result v3

    if-eqz v3, :cond_9

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_9

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    iput v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->c:F

    iput p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b:F

    iput-boolean v2, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-ne p1, v0, :cond_9

    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->d:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->e:F

    iput v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->d:F

    iput p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b:F

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    :cond_9
    :goto_2
    iget-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    return p1

    :cond_a
    :goto_3
    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    return v1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ptr_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a(I)Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;)V

    const-string v0, "ptr_current_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a(I)Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    const-string v0, "ptr_disable_scrolling"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m:Z

    const-string v0, "ptr_show_refreshing_view"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->l:Z

    const-string v0, "ptr_super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "ptr_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 1
    invoke-static {}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->values()[Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 2
    iget v6, v5, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->a:I

    if-ne p1, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v5, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    .line 4
    :goto_1
    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    if-eq v5, p1, :cond_2

    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->f:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    if-ne v5, p1, :cond_3

    :cond_2
    new-array p1, v2, [Z

    aput-boolean v2, p1, v1

    invoke-virtual {p0, v5, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V

    :cond_3
    return-void

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    .line 1
    iget v1, v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->a:I

    .line 2
    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    .line 3
    iget v1, v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a:I

    .line 4
    const-string v2, "ptr_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    .line 5
    iget v1, v1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a:I

    .line 6
    const-string v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m:Z

    const-string v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->l:Z

    const-string v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "ptr_super"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->l()V

    .line 1
    iget-object p3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    if-eq p4, p2, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq p2, p1, :cond_2

    iput p1, p3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget p1, p3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq p1, p2, :cond_2

    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2
    :cond_2
    :goto_1
    new-instance p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$c;

    invoke-direct {p1, p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$c;-><init>(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_e

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_a

    goto/16 :goto_4

    :cond_3
    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b:F

    .line 1
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v2, :cond_4

    iget p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->e:F

    iget v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->c:F

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->d:F

    iget v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b:F

    :goto_0
    iget-object v4, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    sub-float/2addr p1, v0

    if-eq v4, v3, :cond_5

    invoke-static {p1, v6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v0

    goto :goto_1

    :cond_5
    invoke-static {p1, v6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->i:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eq v5, v3, :cond_6

    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    .line 2
    iget-boolean v5, v3, Lcom/tencent/tme/live/v2/d;->d:Z

    if-nez v5, :cond_7

    goto :goto_2

    .line 3
    :cond_6
    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    .line 4
    iget-boolean v5, v3, Lcom/tencent/tme/live/v2/d;->d:Z

    if-nez v5, :cond_7

    :goto_2
    invoke-virtual {v3, v4}, Lcom/tencent/tme/live/v2/d;->a(F)V

    .line 5
    :cond_7
    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    sget-object v4, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    if-eq v3, v4, :cond_8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v0, v3, :cond_8

    new-array p1, v1, [Z

    invoke-virtual {p0, v4, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    if-ne v3, v4, :cond_9

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_9

    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->d:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-array v0, v1, [Z

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V

    :cond_9
    :goto_3
    return v2

    .line 6
    :cond_a
    iget-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    if-eqz p1, :cond_f

    iput-boolean v1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->f:Z

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->d:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->u:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$i;

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->v:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$h;

    if-eqz p1, :cond_c

    :cond_b
    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-array v0, v2, [Z

    aput-boolean v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0, v1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(I)V

    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-array v0, v1, [Z

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V

    return v2

    :cond_d
    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    new-array v0, v1, [Z

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V

    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->e:F

    iput v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->d:F

    iput p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->b:F

    return v2

    :cond_f
    :goto_4
    return v1
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    return-void
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->n:Z

    return-void
.end method

.method public setFooterVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->z:Z

    return-void
.end method

.method public setHeaderScroll(I)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    if-lez p1, :cond_1

    iget-boolean v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->z:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->s:Lcom/tencent/tme/live/v2/d;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->t:Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v1}, Landroid/widget/LinearLayout;->scrollTo(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1, p1}, Landroid/widget/LinearLayout;->scrollTo(II)V

    :goto_2
    return-void
.end method

.method public setHeaderVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->y:Z

    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/tencent/tme/live/u2/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/live/u2/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/tencent/tme/live/u2/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/live/u2/a;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method public final setMode(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->h:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m()V

    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$g<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->w:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$g;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$h<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->v:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$h;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->u:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$i;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$i<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->u:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$i;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->v:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$h;

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/tencent/tme/live/u2/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/live/u2/a;->setPullLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->c:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;)V

    return-void
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->o:Z

    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;->f:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$m;[Z)V

    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/tencent/tme/live/u2/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tme/live/u2/a;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->e:Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;

    .line 1
    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->b()Z

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase$e;->a()Z

    move-result v0

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/tencent/tme/live/u2/b;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/u2/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/v2/d;

    invoke-virtual {v1, p1}, Lcom/tencent/tme/live/v2/d;->setReleaseLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->m:Z

    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/ui/pulltorefresh/library/PullToRefreshBase;->l:Z

    return-void
.end method
