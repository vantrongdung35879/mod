.class public Lcom/tencent/tme/live/framework/view/base/TMEImageView;
.super Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/framework/view/base/TMEImageView$b;
    }
.end annotation


# instance fields
.field public f:Lcom/tencent/tme/live/framework/view/base/TMEImageView$b;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->g:Z

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/framework/view/base/TMEImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->g:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->f:Lcom/tencent/tme/live/framework/view/base/TMEImageView$b;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->g:Z

    if-eqz p2, :cond_2

    iput-boolean v0, p0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->g:Z

    check-cast p1, Lcom/tencent/tme/live/reward/d;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/reward/d;->b:Lcom/tencent/tme/live/reward/b$c;

    iget-object p1, p1, Lcom/tencent/tme/live/reward/b$c;->c:Lcom/tencent/tme/live/reward/b;

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/reward/b;->j:Lcom/tencent/tme/live/d1/b;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/tme/live/d1/b;->dismiss()V

    :cond_2
    :goto_0
    return v0
.end method

.method public setOnTMELongClickListener(Lcom/tencent/tme/live/framework/view/base/TMEImageView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->f:Lcom/tencent/tme/live/framework/view/base/TMEImageView$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->g:Z

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    new-instance p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView$a;

    invoke-direct {p1, p0}, Lcom/tencent/tme/live/framework/view/base/TMEImageView$a;-><init>(Lcom/tencent/tme/live/framework/view/base/TMEImageView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
