.class public Lcom/tencent/tme/live/danmu/DanmuSettingView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/tencent/tme/live/framework/view/base/TMETabView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/danmu/DanmuSettingView$d;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/framework/view/base/TMETabView;

.field public b:Lcom/tencent/tme/live/framework/view/base/TMETabView;

.field public c:Lcom/tencent/tme/live/framework/view/base/TMETabView;

.field public d:Z

.field public e:Lcom/tencent/tme/live/danmu/DanmuSettingView$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->d:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/danmu/DanmuSettingView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->d:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/danmu/DanmuSettingView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    if-eqz p2, :cond_2

    sget p2, Lcom/tencent/tme/live/biz/R$id;->img_full_screen:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/danmu/DanmuSettingView;->b(IZ)V

    goto :goto_1

    :cond_0
    sget p2, Lcom/tencent/tme/live/biz/R$id;->img_up_screen:I

    if-ne p1, p2, :cond_1

    invoke-virtual {p0, v0, v0}, Lcom/tencent/tme/live/danmu/DanmuSettingView;->b(IZ)V

    goto :goto_1

    :cond_1
    sget p2, Lcom/tencent/tme/live/biz/R$id;->img_down_screen:I

    if-ne p1, p2, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 8

    new-instance v7, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;

    invoke-direct {v7, p1}, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$color;->tme_setting_start_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_setting_end_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v5, 0x3f266666    # 0.65f

    const/4 v6, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tme/live/framework/view/base/LinearGradientView;->a(IIFFFF)V

    const/4 v0, -0x1

    invoke-virtual {p0, v7, v0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_danmu_setting_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/tencent/tme/live/danmu/DanmuSettingView$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/danmu/DanmuSettingView$a;-><init>(Lcom/tencent/tme/live/danmu/DanmuSettingView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_full_screen:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->a:Lcom/tencent/tme/live/framework/view/base/TMETabView;

    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setOnCheckChangeListener(Lcom/tencent/tme/live/framework/view/base/TMETabView$a;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_up_screen:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->b:Lcom/tencent/tme/live/framework/view/base/TMETabView;

    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setOnCheckChangeListener(Lcom/tencent/tme/live/framework/view/base/TMETabView$a;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_down_screen:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    iput-object v0, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->c:Lcom/tencent/tme/live/framework/view/base/TMETabView;

    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setOnCheckChangeListener(Lcom/tencent/tme/live/framework/view/base/TMETabView$a;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/tme/live/v0/l;->b(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/tencent/tme/live/danmu/DanmuSettingView;->b(IZ)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->danmu_size_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/danmu/DanmuSizeBar;

    new-instance v1, Lcom/tencent/tme/live/danmu/DanmuSettingView$b;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/danmu/DanmuSettingView$b;-><init>(Lcom/tencent/tme/live/danmu/DanmuSettingView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/danmu/DanmuSizeBar;->setSizeTypeCallback(Lcom/tencent/tme/live/danmu/DanmuSizeBar$a;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->danmu_seek_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/danmu/DanmuSeekBar;

    new-instance v1, Lcom/tencent/tme/live/danmu/DanmuSettingView$c;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/danmu/DanmuSettingView$c;-><init>(Lcom/tencent/tme/live/danmu/DanmuSettingView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/danmu/DanmuSeekBar;->setCallback(Lcom/tencent/tme/live/danmu/DanmuSeekBar$c;)V

    sget v0, Lcom/tencent/tme/live/biz/R$id;->plugin_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x4c4c788

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(IZ)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->a:Lcom/tencent/tme/live/framework/view/base/TMETabView;

    invoke-virtual {v6, v2}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setCheck(Z)V

    iget-object v2, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->b:Lcom/tencent/tme/live/framework/view/base/TMETabView;

    invoke-virtual {v2, v3}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setCheck(Z)V

    iget-object v2, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->c:Lcom/tencent/tme/live/framework/view/base/TMETabView;

    invoke-virtual {v2, v5}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setCheck(Z)V

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->e:Lcom/tencent/tme/live/danmu/DanmuSettingView$d;

    if-eqz p2, :cond_3

    check-cast p2, Lcom/tencent/tme/live/room/b$c;

    .line 1
    iget-object p2, p2, Lcom/tencent/tme/live/room/b$c;->a:Lcom/tencent/tme/live/room/b;

    .line 2
    iget-object p2, p2, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/danmu/DanmuView;->setShowType(I)V

    .line 4
    :cond_3
    const-string p2, "live_danmu_show_type"

    invoke-static {p2}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/tencent/tme/live/b1/l;->b(Ljava/lang/String;I)V

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x2

    .line 5
    :goto_3
    iget-boolean p1, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->d:Z

    if-nez p1, :cond_6

    iput-boolean v1, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->d:Z

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object p1

    const-string p2, "1"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "TVWordBarrageSetting"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_6
    iput-boolean v1, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->d:Z

    :cond_7
    return-void
.end method

.method public setSettingCallback(Lcom/tencent/tme/live/danmu/DanmuSettingView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->e:Lcom/tencent/tme/live/danmu/DanmuSettingView$d;

    return-void
.end method
