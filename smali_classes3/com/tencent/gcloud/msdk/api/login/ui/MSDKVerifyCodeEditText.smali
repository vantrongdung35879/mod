.class public Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeEditText;
.super Landroid/widget/EditText;
.source "MSDKVerifyCodeEditText.java"


# instance fields
.field private lastTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeEditText;->lastTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 11
    iput-wide p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeEditText;->lastTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 11
    iput-wide p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeEditText;->lastTime:J

    return-void
.end method


# virtual methods
.method protected onSelectionChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selStart",
            "selEnd"
        }
    .end annotation

    .line 28
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 29
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeEditText;->setSelection(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    iget-wide v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeEditText;->lastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 38
    iput-wide v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeEditText;->lastTime:J

    const/4 p1, 0x1

    return p1

    .line 41
    :cond_1
    iput-wide v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeEditText;->lastTime:J

    .line 45
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
