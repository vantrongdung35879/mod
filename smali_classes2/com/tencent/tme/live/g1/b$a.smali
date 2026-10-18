.class public Lcom/tencent/tme/live/g1/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/g1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/g1/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/g1/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/g1/b$a;->a:Lcom/tencent/tme/live/g1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/g1/b$a;->a:Lcom/tencent/tme/live/g1/b;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/g1/b;->d:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/g1/b$a;->a:Lcom/tencent/tme/live/g1/b;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/g1/b;->c:Landroid/widget/TextView;

    .line 4
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/tme/live/g1/b$a;->a:Lcom/tencent/tme/live/g1/b;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/g1/b;->k:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/g1/b$a;->a:Lcom/tencent/tme/live/g1/b;

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/g1/b;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/g1/b$a;->a:Lcom/tencent/tme/live/g1/b;

    .line 9
    iget-object v0, v0, Lcom/tencent/tme/live/g1/b;->b:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
