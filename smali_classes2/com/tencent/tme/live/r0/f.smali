.class public Lcom/tencent/tme/live/r0/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/r0/c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/r0/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/r0/f;->a:Lcom/tencent/tme/live/r0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/r0/f;->a:Lcom/tencent/tme/live/r0/c;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/r0/c;->n:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
