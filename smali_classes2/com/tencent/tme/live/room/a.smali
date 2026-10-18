.class public abstract Lcom/tencent/tme/live/room/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/room/a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/tencent/tme/live/w2/b;

.field public final b:Landroid/view/ViewGroup;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/content/Context;

.field public e:Landroid/widget/FrameLayout;

.field public f:Landroid/widget/FrameLayout;

.field public final g:Landroid/widget/FrameLayout;

.field public h:Lcom/tencent/tme/live/danmu/DanmuView;

.field public i:Lcom/tencent/tme/live/room/a$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/w2/b;Landroid/view/ViewGroup;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/room/a;->a:Lcom/tencent/tme/live/w2/b;

    iput-object p2, p0, Lcom/tencent/tme/live/room/a;->b:Landroid/view/ViewGroup;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/room/a;->c:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/a;->d()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/a;->c()V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/tencent/tme/live/room/a;->g:Landroid/widget/FrameLayout;

    const/4 p1, -0x1

    invoke-virtual {p2, p3, p1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/room/a;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public a(Lcom/tencent/tme/live/room/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/room/a;->i:Lcom/tencent/tme/live/room/a$a;

    return-void
.end method

.method public b()Lcom/tencent/tme/live/danmu/DanmuView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/room/a;->h:Lcom/tencent/tme/live/danmu/DanmuView;

    return-object v0
.end method

.method public final c()V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/tme/live/room/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tme/live/room/a;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/tme/live/room/a;->b:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v0, Lcom/tencent/tme/live/danmu/DanmuView;

    iget-object v1, p0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/danmu/DanmuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tme/live/room/a;->h:Lcom/tencent/tme/live/danmu/DanmuView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$dimen;->tme_video_bottom_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/tencent/tme/live/room/a;->f:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/tme/live/room/a;->h:Lcom/tencent/tme/live/danmu/DanmuView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d()V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/tme/live/room/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tme/live/room/a;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/tme/live/room/a;->b:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method
