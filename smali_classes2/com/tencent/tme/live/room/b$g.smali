.class public Lcom/tencent/tme/live/room/b$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/room/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/room/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/room/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/room/b$g;->a:Lcom/tencent/tme/live/room/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/room/b$g;->a:Lcom/tencent/tme/live/room/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/tme/live/room/b;->a(Lcom/tencent/tme/live/room/b;Z)Z

    iget-object p1, p0, Lcom/tencent/tme/live/room/b$g;->a:Lcom/tencent/tme/live/room/b;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/room/b$g;->a:Lcom/tencent/tme/live/room/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/tme/live/room/b;->a(Lcom/tencent/tme/live/room/b;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/room/b$g;->a:Lcom/tencent/tme/live/room/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/tme/live/room/b;->a(Lcom/tencent/tme/live/room/b;Z)Z

    iget-object p1, p0, Lcom/tencent/tme/live/room/b$g;->a:Lcom/tencent/tme/live/room/b;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/room/b;->l:Lcom/tencent/tme/live/chat/HotEmojView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tencent/tme/live/chat/HotEmojView;->a()V

    :cond_0
    return-void
.end method
