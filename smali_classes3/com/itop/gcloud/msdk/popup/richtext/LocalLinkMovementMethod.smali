.class public Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LocalLinkMovementMethod.java"


# static fields
.field static sInstance:Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;
    .locals 1

    .line 16
    sget-object v0, Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;->sInstance:Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;

    invoke-direct {v0}, Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;->sInstance:Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;

    .line 20
    :cond_0
    sget-object v0, Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;->sInstance:Lcom/itop/gcloud/msdk/popup/richtext/LocalLinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 25
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 30
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 32
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 35
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 36
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 38
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 39
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    int-to-float v2, v2

    .line 40
    invoke-virtual {v4, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 42
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 44
    array-length v3, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-ne v0, v1, :cond_2

    .line 46
    aget-object p2, v2, v4

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 48
    aget-object p1, v2, v4

    .line 49
    invoke-interface {p2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    aget-object p3, v2, v4

    .line 50
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    .line 48
    invoke-static {p2, p1, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_3
    :goto_1
    return v1

    .line 55
    :cond_4
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 56
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    return v4
.end method
