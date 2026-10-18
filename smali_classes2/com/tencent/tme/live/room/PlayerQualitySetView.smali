.class public Lcom/tencent/tme/live/room/PlayerQualitySetView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/room/PlayerQualitySetView$c;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Lcom/tencent/tme/live/c1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/c1/b<",
            "Lcom/tencent/tme/live/w0/o$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/o$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/tencent/tme/live/w0/o$b;

.field public e:Lcom/tencent/tme/live/room/PlayerQualitySetView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/PlayerQualitySetView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/PlayerQualitySetView;->a()V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/room/PlayerQualitySetView;Lcom/tencent/tme/live/w0/o$b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->d:Lcom/tencent/tme/live/w0/o$b;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/o$b;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tme/live/w0/o$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->d:Lcom/tencent/tme/live/w0/o$b;

    iget-object v0, p1, Lcom/tencent/tme/live/w0/o$b;->a:Ljava/lang/String;

    .line 2
    const-string v1, "live_quality"

    invoke-static {v1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/tme/live/b1/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->e:Lcom/tencent/tme/live/room/PlayerQualitySetView$c;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/tencent/tme/live/room/b$b;

    .line 4
    iget-object v1, v0, Lcom/tencent/tme/live/room/b$b;->a:Lcom/tencent/tme/live/room/b;

    iget-object v2, p1, Lcom/tencent/tme/live/w0/o$b;->a:Ljava/lang/String;

    .line 5
    iget-object v3, v1, Lcom/tencent/tme/live/room/b;->d:Lcom/tencent/tme/live/room/a;

    check-cast v3, Lcom/tencent/tme/live/room/c;

    .line 6
    iget-object v3, v3, Lcom/tencent/tme/live/room/c;->r:Lcom/tencent/tme/live/w0/o$b;

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, v3, Lcom/tencent/tme/live/w0/o$b;->a:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    const-string v3, "0"

    .line 7
    :goto_0
    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object v4

    iget-object v1, v1, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefinitionSelectInfo"

    invoke-virtual {v4, v2, v1}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10
    iget-object v1, v0, Lcom/tencent/tme/live/room/b$b;->a:Lcom/tencent/tme/live/room/b;

    .line 11
    iget-object v1, v1, Lcom/tencent/tme/live/room/b;->d:Lcom/tencent/tme/live/room/a;

    .line 12
    check-cast v1, Lcom/tencent/tme/live/room/c;

    .line 13
    iput-object p1, v1, Lcom/tencent/tme/live/room/c;->r:Lcom/tencent/tme/live/w0/o$b;

    iget-object v2, p1, Lcom/tencent/tme/live/w0/o$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/room/c;->a(Ljava/lang/String;)V

    .line 14
    iget-object v0, v0, Lcom/tencent/tme/live/room/b$b;->a:Lcom/tencent/tme/live/room/b;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget-object v0, v0, Lcom/tencent/tme/live/room/b;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/tencent/tme/live/w0/o$b;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_2
    iget-object p0, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->b:Lcom/tencent/tme/live/c1/b;

    invoke-virtual {p0}, Lcom/tencent/tme/live/c1/b;->a()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tme_player_quality_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/tencent/tme/live/room/PlayerQualitySetView$a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/room/PlayerQualitySetView$a;-><init>(Lcom/tencent/tme/live/room/PlayerQualitySetView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/tencent/tme/live/biz/R$id;->list_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->a:Landroid/widget/LinearLayout;

    .line 19
    new-instance v1, Lcom/tencent/tme/live/room/d;

    iget-object v2, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->c:Ljava/util/List;

    invoke-direct {v1, p0, v2, v0}, Lcom/tencent/tme/live/room/d;-><init>(Lcom/tencent/tme/live/room/PlayerQualitySetView;Ljava/util/List;Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->b:Lcom/tencent/tme/live/c1/b;

    return-void
.end method

.method public final a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    new-instance v0, Lcom/tencent/tme/live/room/PlayerQualitySetView$b;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/room/PlayerQualitySetView$b;-><init>(Lcom/tencent/tme/live/room/PlayerQualitySetView;)V

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->e:Lcom/tencent/tme/live/room/PlayerQualitySetView$c;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/tencent/tme/live/room/b$b;

    .line 18
    iget-object p1, p1, Lcom/tencent/tme/live/room/b$b;->a:Lcom/tencent/tme/live/room/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tencent/tme/live/room/b;->b(Lcom/tencent/tme/live/room/b;Z)V

    :cond_1
    return-void
.end method

.method public setQualityCallback(Lcom/tencent/tme/live/room/PlayerQualitySetView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->e:Lcom/tencent/tme/live/room/PlayerQualitySetView$c;

    return-void
.end method
