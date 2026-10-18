.class public Lcom/tencent/tme/live/room/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/framework/view/base/TMESwitchView$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/room/b$h;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public b:Landroid/view/View;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/tencent/tme/live/room/a;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/tencent/tme/live/danmu/DanmuView;

.field public h:Lcom/tencent/tme/live/danmu/DanmuSettingView;

.field public i:Lcom/tencent/tme/live/room/PlayerQualitySetView;

.field public j:Landroid/widget/LinearLayout;

.field public k:Landroid/widget/TextView;

.field public l:Lcom/tencent/tme/live/chat/HotEmojView;

.field public m:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

.field public n:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

.field public o:Z

.field public p:Lcom/tencent/tme/live/room/a$a;

.field public final q:Ljava/lang/Runnable;

.field public r:Z

.field public s:Lcom/tencent/tme/live/room/b$h;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/room/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/room/b;->o:Z

    new-instance v1, Lcom/tencent/tme/live/room/b$a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/room/b$a;-><init>(Lcom/tencent/tme/live/room/b;)V

    iput-object v1, p0, Lcom/tencent/tme/live/room/b;->p:Lcom/tencent/tme/live/room/a$a;

    new-instance v1, Lcom/tencent/tme/live/room/b$f;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/room/b$f;-><init>(Lcom/tencent/tme/live/room/b;)V

    iput-object v1, p0, Lcom/tencent/tme/live/room/b;->q:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/tencent/tme/live/room/b;->r:Z

    invoke-virtual {p1}, Lcom/tencent/tme/live/room/a;->a()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/room/b;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/tme/live/room/b;->d:Lcom/tencent/tme/live/room/a;

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->p:Lcom/tencent/tme/live/room/a$a;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/room/a;->a(Lcom/tencent/tme/live/room/a$a;)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/room/a;->b()Lcom/tencent/tme/live/danmu/DanmuView;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/b;->d()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/b;->b()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/b;->a()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/b;->c()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/b;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/tme/live/room/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/room/b;->r:Z

    return p1
.end method

.method public static b(Lcom/tencent/tme/live/room/b;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->s:Lcom/tencent/tme/live/room/b$h;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/tencent/tme/live/room/b;->o:Z

    check-cast v0, Lcom/tencent/tme/live/r0/c$c;

    if-eqz p0, :cond_3

    .line 2
    iget-object p0, v0, Lcom/tencent/tme/live/r0/c$c;->a:Lcom/tencent/tme/live/r0/c;

    xor-int/lit8 v1, p1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/r0/c;->f(Z)V

    .line 4
    iget-object p0, v0, Lcom/tencent/tme/live/r0/c$c;->a:Lcom/tencent/tme/live/r0/c;

    .line 5
    iget-object p0, p0, Lcom/tencent/tme/live/r0/c;->y:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a()V

    .line 6
    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/tencent/tme/live/r0/c$c;->a:Lcom/tencent/tme/live/r0/c;

    .line 7
    iget-object p0, p0, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/h;->c()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/h;->b()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tme_play_bottom_control_bar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->scale_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    iput-object v0, p0, Lcom/tencent/tme/live/room/b;->n:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->setOnCheckChangeListener(Lcom/tencent/tme/live/framework/view/base/TMESwitchView$a;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->play_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    iput-object v0, p0, Lcom/tencent/tme/live/room/b;->m:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->setOnCheckChangeListener(Lcom/tencent/tme/live/framework/view/base/TMESwitchView$a;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->edit_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/room/b;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/room/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->danmu_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    .line 1
    const-string v1, "live_danmu_show"

    invoke-static {v1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/tme/live/b1/l;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->setCheck(Z)V

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserDanmaSwitch"

    invoke-virtual {v2, v4, v3}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/room/b;->a(Z)V

    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->setOnCheckChangeListener(Lcom/tencent/tme/live/framework/view/base/TMESwitchView$a;)V

    iget-object v2, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    sget v3, Lcom/tencent/tme/live/biz/R$id;->setting_btn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v3

    iget-boolean v3, v3, Lcom/tencent/tme/live/w0/d;->t:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/room/b;->a(Z)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/tencent/tme/live/room/b;->a(Z)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->quality_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/tme/live/room/b;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->txt_quality:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/room/b;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->ll_emoj_entry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/room/b;->g()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 3
    iget-object p1, v0, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->j:Z

    iget-object p1, p1, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/m/h;->a(Ljava/lang/Long;)V

    .line 5
    :cond_2
    :goto_0
    new-instance p1, Lcom/tencent/tme/live/w0/q;

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_danmu_open:I

    invoke-direct {p1, v0, v1}, Lcom/tencent/tme/live/w0/q;-><init>(Landroid/content/Context;I)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object p1, v0, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p1, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->j:Z

    iget-object p1, p1, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/m/h;->a(Z)J

    .line 9
    :cond_5
    :goto_1
    new-instance p1, Lcom/tencent/tme/live/w0/q;

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_danmu_closed:I

    invoke-direct {p1, v0, v1}, Lcom/tencent/tme/live/w0/q;-><init>(Landroid/content/Context;I)V

    .line 6
    :goto_2
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v0

    const-string v1, "showTipOnVideoCenter"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/danmu/DanmuSettingView;

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/danmu/DanmuSettingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tme/live/room/b;->h:Lcom/tencent/tme/live/danmu/DanmuSettingView;

    new-instance v1, Lcom/tencent/tme/live/room/b$c;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/room/b$c;-><init>(Lcom/tencent/tme/live/room/b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/danmu/DanmuSettingView;->setSettingCallback(Lcom/tencent/tme/live/danmu/DanmuSettingView$d;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->h:Lcom/tencent/tme/live/danmu/DanmuSettingView;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->h:Lcom/tencent/tme/live/danmu/DanmuSettingView;

    const/16 v1, 0x8

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, v0, Lcom/tencent/tme/live/danmu/DanmuSettingView;->e:Lcom/tencent/tme/live/danmu/DanmuSettingView$d;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/tme/live/room/b$c;

    .line 9
    iget-object v0, v0, Lcom/tencent/tme/live/room/b$c;->a:Lcom/tencent/tme/live/room/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tme/live/room/b;->b(Lcom/tencent/tme/live/room/b;Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/chat/HotEmojView;

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/chat/HotEmojView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tme/live/room/b;->l:Lcom/tencent/tme/live/chat/HotEmojView;

    new-instance v1, Lcom/tencent/tme/live/room/b$d;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/room/b$d;-><init>(Lcom/tencent/tme/live/room/b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/chat/HotEmojView;->setCallback(Lcom/tencent/tme/live/chat/HotEmojView$c;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v1, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    const/high16 v2, 0x43660000    # 230.0f

    invoke-static {v1, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v1, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    const/high16 v2, 0x423c0000    # 47.0f

    invoke-static {v1, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/tme/live/room/b;->l:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->l:Lcom/tencent/tme/live/chat/HotEmojView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/chat/HotEmojView;->setFullScreen(Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->l:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-virtual {v0}, Lcom/tencent/tme/live/chat/HotEmojView;->a()V

    return-void
.end method

.method public final d()V
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/room/PlayerQualitySetView;

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/room/PlayerQualitySetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tme/live/room/b;->i:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/tme/live/room/b;->i:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->i:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    new-instance v1, Lcom/tencent/tme/live/room/b$b;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/room/b$b;-><init>(Lcom/tencent/tme/live/room/b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/room/PlayerQualitySetView;->setQualityCallback(Lcom/tencent/tme/live/room/PlayerQualitySetView$c;)V

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->i:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/room/PlayerQualitySetView;->a(J)V

    return-void
.end method

.method public final e()V
    .locals 4

    new-instance v0, Lcom/tencent/tme/live/room/e;

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/tme/live/room/b;->d:Lcom/tencent/tme/live/room/a;

    .line 1
    iget-object v2, v2, Lcom/tencent/tme/live/room/a;->a:Lcom/tencent/tme/live/w2/b;

    .line 2
    iget-object v2, v2, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 3
    new-instance v3, Lcom/tencent/tme/live/room/b$e;

    invoke-direct {v3, p0}, Lcom/tencent/tme/live/room/b$e;-><init>(Lcom/tencent/tme/live/room/b;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tme/live/room/e;-><init>(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    new-instance v2, Lcom/tencent/tme/live/room/b$g;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/room/b$g;-><init>(Lcom/tencent/tme/live/room/b;)V

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    .line 1
    :cond_1
    sget v4, Lcom/tencent/tme/live/biz/R$anim;->tme_video_bottom_out:I

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iget-object v2, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->l:Lcom/tencent/tme/live/chat/HotEmojView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/tme/live/chat/HotEmojView;->a()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->s:Lcom/tencent/tme/live/room/b$h;

    if-eqz v0, :cond_7

    iget-boolean v2, p0, Lcom/tencent/tme/live/room/b;->o:Z

    check-cast v0, Lcom/tencent/tme/live/r0/c$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_7

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/r0/c$c;->a:Lcom/tencent/tme/live/r0/c;

    .line 6
    iget-object v2, v0, Lcom/tencent/tme/live/r0/c;->n:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 7
    iget-object v2, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 8
    new-instance v4, Lcom/tencent/tme/live/r0/f;

    invoke-direct {v4, v0}, Lcom/tencent/tme/live/r0/f;-><init>(Lcom/tencent/tme/live/r0/c;)V

    if-nez v2, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    sget v3, Lcom/tencent/tme/live/biz/R$anim;->tme_video_top_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 11
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setStartTime(J)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_2
    if-eqz v3, :cond_6

    .line 12
    iget-object v0, v0, Lcom/tencent/tme/live/r0/c;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :cond_6
    iget-object v0, v0, Lcom/tencent/tme/live/r0/c;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/room/b;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->q:Ljava/lang/Runnable;

    .line 1
    invoke-virtual {v0}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->q:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    .line 3
    invoke-virtual {v0}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/tencent/tme/live/b1/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->edit_text:I

    const-string v1, ""

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/tencent/tme/live/room/b;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/tencent/tme/live/chat/a;

    iget-object v2, p0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/tme/live/chat/a;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/tencent/tme/live/chat/a;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/live/room/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tme/live/chat/a;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/room/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tme/live/chat/a;->a(Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/room/b;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget v0, Lcom/tencent/tme/live/biz/R$id;->setting_btn:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/tencent/tme/live/room/b;->h:Lcom/tencent/tme/live/danmu/DanmuSettingView;

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p1, Lcom/tencent/tme/live/danmu/DanmuSettingView;->e:Lcom/tencent/tme/live/danmu/DanmuSettingView$d;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/tencent/tme/live/room/b$c;

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/room/b$c;->a:Lcom/tencent/tme/live/room/b;

    invoke-static {p1, v2}, Lcom/tencent/tme/live/room/b;->b(Lcom/tencent/tme/live/room/b;Z)V

    .line 3
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/tme/live/room/b;->f()V

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object p1

    const-string v0, "3"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "TVWordBarrageSetting"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget v0, Lcom/tencent/tme/live/biz/R$id;->quality_group:I

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/tencent/tme/live/room/b;->i:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p1, Lcom/tencent/tme/live/room/PlayerQualitySetView;->e:Lcom/tencent/tme/live/room/PlayerQualitySetView$c;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/tencent/tme/live/room/b$b;

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/room/b$b;->a:Lcom/tencent/tme/live/room/b;

    invoke-static {p1, v2}, Lcom/tencent/tme/live/room/b;->b(Lcom/tencent/tme/live/room/b;Z)V

    .line 6
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/tme/live/room/b;->f()V

    goto :goto_2

    :cond_7
    sget v0, Lcom/tencent/tme/live/biz/R$id;->ll_emoj_entry:I

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/tencent/tme/live/room/b;->l:Lcom/tencent/tme/live/chat/HotEmojView;

    if-eqz p1, :cond_9

    .line 7
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    .line 8
    :cond_8
    iget-boolean p1, p0, Lcom/tencent/tme/live/room/b;->r:Z

    if-nez p1, :cond_9

    sget-boolean p1, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {p1}, Lcom/tencent/tme/live/y0/a;->a(Z)V

    iget-object p1, p0, Lcom/tencent/tme/live/room/b;->l:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-virtual {p1}, Lcom/tencent/tme/live/chat/HotEmojView;->b()V

    goto :goto_2

    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/tencent/tme/live/room/b;->l:Lcom/tencent/tme/live/chat/HotEmojView;

    invoke-virtual {p1}, Lcom/tencent/tme/live/chat/HotEmojView;->a()V

    :cond_a
    :goto_2
    return-void
.end method
