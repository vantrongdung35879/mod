.class public Lcom/tencent/tme/live/framework/view/base/TMETabView;
.super Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/framework/view/base/TMETabView$a;
    }
.end annotation


# instance fields
.field public f:Lcom/tencent/tme/live/framework/view/base/TMETabView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a:I

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setCheck(Z)V

    :cond_1
    return p2
.end method

.method public setCheck(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->e:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/base/TMETabView;->f:Lcom/tencent/tme/live/framework/view/base/TMETabView$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/tencent/tme/live/framework/view/base/TMETabView$a;->a(IZ)V

    :cond_1
    return-void
.end method

.method public setOnCheckChangeListener(Lcom/tencent/tme/live/framework/view/base/TMETabView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/base/TMETabView;->f:Lcom/tencent/tme/live/framework/view/base/TMETabView$a;

    return-void
.end method
