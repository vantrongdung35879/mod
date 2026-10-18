.class public Lcom/tencent/tme/live/t0/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/chat/HotEmojView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/chat/HotEmojView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/t0/b;->a:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/t0/b;->a:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    int-to-float v1, v0

    const v2, 0x3f5b6db7

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/tencent/tme/live/t0/b;->a:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tencent/tme/live/t0/b;->a:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
