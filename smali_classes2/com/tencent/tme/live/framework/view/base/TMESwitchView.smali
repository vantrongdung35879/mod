.class public Lcom/tencent/tme/live/framework/view/base/TMESwitchView;
.super Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/framework/view/base/TMESwitchView$a;
    }
.end annotation


# instance fields
.field public f:Lcom/tencent/tme/live/framework/view/base/TMESwitchView$a;


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
.method public a(ZZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->e:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->f:Lcom/tencent/tme/live/framework/view/base/TMESwitchView$a;

    if-eqz v0, :cond_18

    if-eqz p2, :cond_18

    invoke-virtual {p0}, Landroid/widget/ImageView;->getId()I

    move-result p2

    check-cast v0, Lcom/tencent/tme/live/room/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget v1, Lcom/tencent/tme/live/biz/R$id;->scale_btn:I

    if-ne p2, v1, :cond_12

    .line 2
    iget-object p2, v0, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    iget-object p2, v0, Lcom/tencent/tme/live/room/b;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/tencent/tme/live/biz/R$dimen;->tme_video_top_height:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p2, v0, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    .line 3
    iput-boolean p1, p2, Lcom/tencent/tme/live/danmu/DanmuView;->g:Z

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/tencent/tme/live/danmu/DanmuView;->e:Lcom/tencent/tme/live/o/d;

    if-eqz p1, :cond_2

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v3, v4}, Lcom/tencent/tme/live/o/d;->a(F)Lcom/tencent/tme/live/o/d;

    iget v3, p2, Lcom/tencent/tme/live/danmu/DanmuView;->b:I

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/tencent/tme/live/o/d;->a(F)Lcom/tencent/tme/live/o/d;

    iget v3, p2, Lcom/tencent/tme/live/danmu/DanmuView;->b:I

    add-int/lit8 v3, v3, -0x2

    :goto_1
    iput v3, p2, Lcom/tencent/tme/live/danmu/DanmuView;->b:I

    .line 4
    iget-object p2, p2, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    if-eqz p2, :cond_3

    .line 5
    iget-object p2, p2, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-eqz p2, :cond_3

    .line 6
    iget-object p2, p2, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-eqz p2, :cond_3

    invoke-interface {p2, v1}, Lcom/tencent/tme/live/m/n;->a(Z)V

    .line 7
    :cond_3
    iget-object p2, v0, Lcom/tencent/tme/live/room/b;->s:Lcom/tencent/tme/live/room/b$h;

    if-eqz p2, :cond_18

    const/16 v3, 0x8

    if-eqz p1, :cond_8

    check-cast p2, Lcom/tencent/tme/live/r0/c$c;

    .line 8
    iget-object p2, p2, Lcom/tencent/tme/live/r0/c$c;->a:Lcom/tencent/tme/live/r0/c;

    .line 9
    iget-object v4, p2, Lcom/tencent/tme/live/r0/c;->h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v5, Lcom/tencent/tme/live/biz/R$color;->tme_black:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p2, Lcom/tencent/tme/live/r0/c;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v4, p2, Lcom/tencent/tme/live/r0/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/tencent/tme/live/r0/c;->i()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/tencent/tme/live/r0/c;->i()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_4
    sput-boolean v1, Lcom/tencent/tme/live/v0/f;->g:Z

    .line 11
    invoke-virtual {p2, v1}, Lcom/tencent/tme/live/r0/c;->d(Z)V

    invoke-virtual {p2, v1}, Lcom/tencent/tme/live/r0/c;->c(Z)V

    .line 12
    iget-object v4, p2, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 13
    check-cast v4, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;

    .line 14
    sget v5, Lcom/tencent/tme/live/biz/R$id;->tab_line:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v3, p2, Lcom/tencent/tme/live/r0/c;->x:Lcom/tencent/tme/live/reward/RewardEnterView;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/tencent/tme/live/reward/RewardEnterView;->c()V

    :cond_5
    iget-object v3, p2, Lcom/tencent/tme/live/r0/c;->y:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->b()V

    :cond_6
    iget-object v3, p2, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/tencent/tmes/live/redpacket/h;->c()V

    :cond_7
    invoke-virtual {p2, v1}, Lcom/tencent/tme/live/r0/c;->b(Z)V

    .line 16
    iput-boolean v1, v0, Lcom/tencent/tme/live/room/b;->o:Z

    iget-object p2, v0, Lcom/tencent/tme/live/room/b;->e:Landroid/view/View;

    if-eqz p2, :cond_11

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_8
    check-cast p2, Lcom/tencent/tme/live/r0/c$c;

    .line 17
    iget-object p2, p2, Lcom/tencent/tme/live/r0/c$c;->a:Lcom/tencent/tme/live/r0/c;

    .line 18
    iget-object v4, p2, Lcom/tencent/tme/live/r0/c;->h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v5, Lcom/tencent/tme/live/biz/R$string;->main_bg:I

    invoke-virtual {v4, v5}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    iget-object v4, p2, Lcom/tencent/tme/live/r0/c;->n:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p2, Lcom/tencent/tme/live/r0/c;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/tencent/tme/live/r0/c;->i()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p2}, Lcom/tencent/tme/live/r0/c;->i()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v4, p2, Lcom/tencent/tme/live/r0/c;->A:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_a

    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    :cond_a
    sput-boolean v2, Lcom/tencent/tme/live/v0/f;->g:Z

    .line 20
    invoke-virtual {p2, v2}, Lcom/tencent/tme/live/r0/c;->d(Z)V

    invoke-virtual {p2, v2}, Lcom/tencent/tme/live/r0/c;->c(Z)V

    .line 21
    iget-object v1, p2, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 22
    check-cast v1, Lcom/tencent/tme/live/aov/activities/TMELiveActivity;

    .line 23
    sget v4, Lcom/tencent/tme/live/biz/R$id;->tab_line:I

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->x:Lcom/tencent/tme/live/reward/RewardEnterView;

    if-eqz v1, :cond_c

    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->m:Lcom/tencent/tme/live/r0/a;

    .line 25
    sget v4, Lcom/tencent/tme/live/biz/R$string;->tme_chat_room:I

    invoke-virtual {v1, v4}, Lcom/tencent/tme/live/r0/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 26
    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->x:Lcom/tencent/tme/live/reward/RewardEnterView;

    invoke-virtual {v1}, Lcom/tencent/tme/live/reward/RewardEnterView;->c()V

    goto :goto_2

    :cond_b
    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->x:Lcom/tencent/tme/live/reward/RewardEnterView;

    .line 27
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 28
    :cond_c
    :goto_2
    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->y:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    if-eqz v1, :cond_e

    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->m:Lcom/tencent/tme/live/r0/a;

    .line 29
    sget v3, Lcom/tencent/tme/live/biz/R$string;->tme_chat_room:I

    invoke-virtual {v1, v3}, Lcom/tencent/tme/live/r0/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 30
    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->y:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    invoke-virtual {v1}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->b()V

    goto :goto_3

    :cond_d
    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->y:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    invoke-virtual {v1}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a()V

    :cond_e
    :goto_3
    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    if-eqz v1, :cond_10

    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->m:Lcom/tencent/tme/live/r0/a;

    .line 31
    sget v3, Lcom/tencent/tme/live/biz/R$string;->tme_chat_room:I

    invoke-virtual {v1, v3}, Lcom/tencent/tme/live/r0/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 32
    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    invoke-virtual {v1}, Lcom/tencent/tmes/live/redpacket/h;->c()V

    goto :goto_4

    :cond_f
    iget-object v1, p2, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    invoke-virtual {v1}, Lcom/tencent/tmes/live/redpacket/h;->b()V

    :cond_10
    :goto_4
    invoke-virtual {p2, v2}, Lcom/tencent/tme/live/r0/c;->b(Z)V

    .line 33
    iput-boolean v2, v0, Lcom/tencent/tme/live/room/b;->o:Z

    iget-object p2, v0, Lcom/tencent/tme/live/room/b;->e:Landroid/view/View;

    if-eqz p2, :cond_11

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    :goto_5
    iget-object p2, v0, Lcom/tencent/tme/live/room/b;->l:Lcom/tencent/tme/live/chat/HotEmojView;

    if-eqz p2, :cond_18

    if-nez p1, :cond_18

    invoke-virtual {p2}, Lcom/tencent/tme/live/chat/HotEmojView;->a()V

    goto :goto_8

    .line 34
    :cond_12
    sget v1, Lcom/tencent/tme/live/biz/R$id;->play_btn:I

    const-string v2, "1"

    if-ne p2, v1, :cond_15

    if-eqz p1, :cond_14

    iget-object p1, v0, Lcom/tencent/tme/live/room/b;->d:Lcom/tencent/tme/live/room/a;

    invoke-virtual {p1}, Lcom/tencent/tme/live/room/a;->e()V

    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object p1

    iget-boolean p2, v0, Lcom/tencent/tme/live/room/b;->o:Z

    if-eqz p2, :cond_13

    const-string v2, "2"

    :cond_13
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p2

    const-string v1, "PlayPauseWarn"

    invoke-virtual {p1, v1, p2}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    iget-object p1, v0, Lcom/tencent/tme/live/room/b;->d:Lcom/tencent/tme/live/room/a;

    invoke-virtual {p1}, Lcom/tencent/tme/live/room/a;->f()V

    :goto_6
    invoke-virtual {v0}, Lcom/tencent/tme/live/room/b;->f()V

    goto :goto_8

    :cond_15
    sget v1, Lcom/tencent/tme/live/biz/R$id;->danmu_switch:I

    if-ne p2, v1, :cond_18

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/room/b;->a(Z)V

    .line 35
    const-string p2, "live_danmu_show"

    invoke-static {p2}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-static {}, Lcom/tencent/tme/live/b1/l;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/tencent/tme/live/b1/l;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    :cond_16
    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object p2

    if-eqz p1, :cond_17

    goto :goto_7

    :cond_17
    const-string v2, "0"

    :goto_7
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "WordFlowSwitchInfo"

    invoke-virtual {p2, v0, p1}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_18
    :goto_8
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->e:Z

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->setCheck(Z)V

    :cond_0
    return p2
.end method

.method public setCheck(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->a(ZZ)V

    return-void
.end method

.method public setOnCheckChangeListener(Lcom/tencent/tme/live/framework/view/base/TMESwitchView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->f:Lcom/tencent/tme/live/framework/view/base/TMESwitchView$a;

    return-void
.end method
