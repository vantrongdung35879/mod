.class public abstract Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;
.super Landroid/widget/ImageView;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->d:Z

    iput-boolean p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->d:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->e:Z

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->d:Z

    iput-boolean p3, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->e:Z

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(IIZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lcom/tencent/tme/live/biz/R$styleable;->TMEBaseImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/tencent/tme/live/biz/R$styleable;->TMEBaseImageView_tme_def_res_name:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/tencent/tme/live/biz/R$styleable;->TMEBaseImageView_tme_act_res_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$styleable;->TMEBaseImageView_tme_is_act:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2, v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    .line 2
    invoke-static/range {v1 .. v7}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;ZIIZLcom/tencent/tme/live/l0/c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p0}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/tme/live/b1/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/tencent/tme/live/b1/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public abstract a(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->e:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput p2, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0, p1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setLocalUri(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalUri(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->d:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
