.class public Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout$a;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout;->a:Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout$a;

    if-eqz p1, :cond_0

    if-le p2, p4, :cond_0

    if-eqz p4, :cond_0

    check-cast p1, Lcom/tencent/tme/live/chat/a$b$a;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/chat/a$b$a;->a:Lcom/tencent/tme/live/chat/a$b;

    iget-object p1, p1, Lcom/tencent/tme/live/chat/a$b;->b:Lcom/tencent/tme/live/chat/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/chat/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public setOnResizeRelativeListener(Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout;->a:Lcom/tencent/tme/live/framework/view/base/ResizeLinearLayout$a;

    return-void
.end method
