.class public Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/question/ui/RingGradientProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/question/ui/RingGradientProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    .line 1
    iget-boolean v1, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->g:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->d:I

    add-int/lit8 v1, v1, -0x1

    .line 3
    iput v1, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->d:I

    .line 4
    iget-object v1, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->i:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    .line 6
    iget v1, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->d:I

    if-gtz v1, :cond_4

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/tencent/tme/live/c/a;->a(Landroid/view/View;)Lcom/tencent/tme/live/c/a;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean v1, v0, Lcom/tencent/tme/live/c/a;->i:Z

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/tencent/tme/live/c/a;->stop()V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    .line 11
    iget-object v1, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->l:Lcom/tencent/tme/live/question/ui/RingGradientProgress$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 12
    iget-boolean v1, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->g:Z

    if-eqz v1, :cond_3

    .line 13
    invoke-static {v0, v2}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->a(Lcom/tencent/tme/live/question/ui/RingGradientProgress;Z)Z

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    .line 14
    iget-object v1, v0, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->j:Ljava/lang/Runnable;

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    .line 16
    invoke-virtual {v0}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->b()V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/question/ui/RingGradientProgress$a;->a:Lcom/tencent/tme/live/question/ui/RingGradientProgress;

    invoke-static {v0, v2}, Lcom/tencent/tme/live/question/ui/RingGradientProgress;->a(Lcom/tencent/tme/live/question/ui/RingGradientProgress;Z)Z

    :cond_4
    return-void
.end method
