.class public Lcom/tencent/tme/live/danmu/DanmuSizeBar;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/danmu/DanmuSizeBar$a;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public b:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public c:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/tencent/tme/live/danmu/DanmuSizeBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 7

    const/16 v0, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xd

    if-ne p1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xf

    if-ne p1, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v5, Lcom/tencent/tme/live/biz/R$string;->chat_icon_bulletoption:I

    invoke-virtual {v0, v5}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/tencent/tme/live/biz/R$color;->tme_setting_txt_color:I

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v5, Lcom/tencent/tme/live/biz/R$color;->tme_transparent:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/tencent/tme/live/biz/R$color;->tme_setting_txt_gray_color:I

    :goto_3
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->b:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    if-eqz v3, :cond_4

    sget v2, Lcom/tencent/tme/live/biz/R$string;->chat_icon_bulletoption:I

    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/tme/live/biz/R$color;->tme_setting_txt_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_4
    sget v1, Lcom/tencent/tme/live/biz/R$color;->tme_transparent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/tme/live/biz/R$color;->tme_setting_txt_gray_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    :goto_4
    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->c:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    if-eqz v4, :cond_5

    sget v1, Lcom/tencent/tme/live/biz/R$string;->chat_icon_bulletoption:I

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_setting_txt_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x2

    goto :goto_5

    :cond_5
    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_transparent:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/tme/live/biz/R$color;->tme_setting_txt_gray_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->g:Lcom/tencent/tme/live/danmu/DanmuSizeBar$a;

    if-eqz p2, :cond_6

    check-cast p2, Lcom/tencent/tme/live/danmu/DanmuSettingView$b;

    .line 1
    iget-object p2, p2, Lcom/tencent/tme/live/danmu/DanmuSettingView$b;->a:Lcom/tencent/tme/live/danmu/DanmuSettingView;

    .line 2
    iget-object v0, p2, Lcom/tencent/tme/live/danmu/DanmuSettingView;->e:Lcom/tencent/tme/live/danmu/DanmuSettingView$d;

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    int-to-float v2, p1

    invoke-static {p2, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result p2

    check-cast v0, Lcom/tencent/tme/live/room/b$c;

    .line 4
    iget-object v0, v0, Lcom/tencent/tme/live/room/b$c;->a:Lcom/tencent/tme/live/room/b;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/danmu/DanmuView;->setSize(I)V

    .line 7
    :cond_6
    const-string p2, "live_danmu_size"

    invoke-static {p2}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/tencent/tme/live/b1/l;->b(Ljava/lang/String;I)V

    .line 8
    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object p1

    const-string p2, "0"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "TVWordBarrageSetting"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_danmu_size_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_small:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_middle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->b:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_big:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->c:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->txt_small:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->d:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->txt_middle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->e:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->txt_big:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->f:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->b:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->c:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p1, 0xd

    invoke-static {p1}, Lcom/tencent/tme/live/v0/l;->c(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->a(IZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_small:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xb

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->a(IZ)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_middle:I

    if-ne p1, v0, :cond_1

    const/16 p1, 0xd

    goto :goto_0

    :cond_1
    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_big:I

    if-ne p1, v0, :cond_2

    const/16 p1, 0xf

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setSizeTypeCallback(Lcom/tencent/tme/live/danmu/DanmuSizeBar$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->g:Lcom/tencent/tme/live/danmu/DanmuSizeBar$a;

    return-void
.end method
