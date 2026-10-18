.class public Lcom/tencent/tme/live/r0/c;
.super Lcom/tencent/tme/live/a1/a;


# static fields
.field public static final M:[Ljava/lang/String;


# instance fields
.field public final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/o;",
            ">;"
        }
    .end annotation
.end field

.field public B:Lcom/tencent/tme/live/w0/o$a;

.field public C:Lcom/tencent/tme/live/s0/h;

.field public D:Lcom/tencent/tme/live/s0/a;

.field public E:Landroid/view/View;

.field public final F:Lcom/tencent/tme/live/room/b$h;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:I

.field public final K:Ljava/lang/Runnable;

.field public L:Lcom/tencent/tmes/live/redpacket/h$c;

.field public f:Ljava/lang/String;

.field public g:Landroid/view/View;

.field public h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public i:Lcom/tencent/tme/live/room/c;

.field public j:Lcom/tencent/tme/live/room/b;

.field public k:Landroid/widget/LinearLayout;

.field public l:Landroid/widget/RelativeLayout;

.field public m:Lcom/tencent/tme/live/r0/a;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public s:Landroid/widget/TextView;

.field public t:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public u:Landroid/view/View;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/FrameLayout;

.field public x:Lcom/tencent/tme/live/reward/RewardEnterView;

.field public y:Lcom/tencent/tme/live/reward/operation/H5EntryView;

.field public z:Lcom/tencent/tmes/live/redpacket/h;


# direct methods
.method public static synthetic $r8$lambda$DgwjRFFrCLhVhWTryOlOQfIhuSg(Lcom/tencent/tme/live/r0/c;Lcom/tencent/tme/live/w0/o$a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/r0/c;->a(Lcom/tencent/tme/live/w0/o$a;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$RVFya0nsmFQ2r0zek_bgK6iVzkk(Lcom/tencent/tme/live/r0/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/r0/c;->j()V

    return-void
.end method

.method public static synthetic $r8$lambda$qe0SD3fxGieM7r-fWbsWVokySc0(Lcom/tencent/tme/live/r0/c;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tme/live/r0/c;->a(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vexx6x2A7z2cp1WKb67JLiAjJTs(Lcom/tencent/tme/live/r0/c;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/r0/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 16

    const-string v14, "emojListChanged"

    const-string v15, "entry_list_show_state_changed"

    const-string v0, "httpAuth"

    const-string v1, "connLogin"

    const-string v2, "noSendChatMsg"

    const-string v3, "receiverChatMsg"

    const-string v4, "updateRoomInfo"

    const-string v5, "updateRoomOnlineNum"

    const-string v6, "operationLiveMsg"

    const-string v7, "enterRoomConfigRefresh"

    const-string v8, "enterLiveConfigRefresh"

    const-string v9, "netStateChange"

    const-string v10, "updateReward"

    const-string v11, "showTipOnVideoCenter"

    const-string v12, "loadRoomDataEvent"

    const-string v13, "redPacketMsg"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/r0/c;->M:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tme/live/a1/a;-><init>()V

    const-string v0, "LiveShatter"

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->A:Ljava/util/List;

    new-instance v0, Lcom/tencent/tme/live/r0/c$c;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/r0/c$c;-><init>(Lcom/tencent/tme/live/r0/c;)V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->F:Lcom/tencent/tme/live/room/b$h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/r0/c;->G:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/r0/c;->H:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/r0/c;->I:Z

    iput v0, p0, Lcom/tencent/tme/live/r0/c;->J:I

    new-instance v0, Lcom/tencent/tme/live/r0/c$e;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/r0/c$e;-><init>(Lcom/tencent/tme/live/r0/c;)V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->K:Ljava/lang/Runnable;

    new-instance v0, Lcom/tencent/tme/live/r0/c$f;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/r0/c$f;-><init>(Lcom/tencent/tme/live/r0/c;)V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->L:Lcom/tencent/tmes/live/redpacket/h$c;

    return-void
.end method

.method private a(Lcom/tencent/tme/live/w0/o$a;Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->p:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/tencent/tme/live/w0/o$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p1, Lcom/tencent/tme/live/w0/o$a;->e:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/r0/c;->a(J)V

    iget v0, p1, Lcom/tencent/tme/live/w0/o$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->s:Landroid/widget/TextView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_live:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->s:Landroid/widget/TextView;

    .line 18
    iget-object v1, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 19
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_live_label_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->t:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->player_label_live:I

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->s:Landroid/widget/TextView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_replay:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->s:Landroid/widget/TextView;

    .line 20
    iget-object v1, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 21
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_replay_label_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->t:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->player_label_replay:I

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->s:Landroid/widget/TextView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_not_broadcast:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->s:Landroid/widget/TextView;

    .line 22
    iget-object v1, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 23
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_null_video_label_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->t:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->player_label_noVideo:I

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->s:Landroid/widget/TextView;

    .line 24
    iget-object v1, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    const/high16 v2, 0x40a00000    # 5.0f

    .line 25
    invoke-static {v1, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    const/16 v2, 0x60

    .line 26
    invoke-static {v0, v2, v1}, Lcom/tencent/tme/live/b1/p;->a(Landroid/widget/TextView;II)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/r0/c;->a(Lcom/tencent/tme/live/w0/o$a;)V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->B:Lcom/tencent/tme/live/w0/o$a;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tme/live/p0/b;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/tencent/tme/live/r0/c;->a(ZLjava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/p0/b;->b()V

    :cond_4
    iput-object p1, p0, Lcom/tencent/tme/live/r0/c;->B:Lcom/tencent/tme/live/w0/o$a;

    sput-object p1, Lcom/tencent/tme/live/v0/f;->e:Lcom/tencent/tme/live/w0/o$a;

    iget-object p2, p0, Lcom/tencent/tme/live/r0/c;->m:Lcom/tencent/tme/live/r0/a;

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p2

    iget-boolean p2, p2, Lcom/tencent/tme/live/w0/d;->B:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/tencent/tme/live/r0/c;->m:Lcom/tencent/tme/live/r0/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iget-object p1, p1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/tme/live/chat/GameDataView;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/r0/c;->H:Z

    iget-object v1, p0, Lcom/tencent/tme/live/r0/c;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tme/live/r0/c;->A:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->A:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/w0/o;

    iget-object v2, v1, Lcom/tencent/tme/live/w0/o;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object p1, v1, Lcom/tencent/tme/live/w0/o;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/w0/o$a;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/r0/c;->b(Lcom/tencent/tme/live/w0/o$a;Z)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tme/live/r0/c;->l()V

    :cond_3
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/Object;)V
    .locals 7

    if-eqz p2, :cond_e

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->i:Lcom/tencent/tme/live/room/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move-object v2, p2

    check-cast v2, Lcom/tencent/tme/live/w0/o$b;

    .line 8
    iget-object v3, v0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v3, v0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v5, v0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v5, v0, Lcom/tencent/tme/live/room/c;->z:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    :cond_3
    iget-object v5, v0, Lcom/tencent/tme/live/room/c;->r:Lcom/tencent/tme/live/w0/o$b;

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, v5, Lcom/tencent/tme/live/w0/o$b;->e:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v6, v2, Lcom/tencent/tme/live/w0/o$b;->e:Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 10
    :goto_3
    iput-object v2, v0, Lcom/tencent/tme/live/room/c;->r:Lcom/tencent/tme/live/w0/o$b;

    iput-boolean v3, v0, Lcom/tencent/tme/live/room/c;->v:Z

    iget-object v3, v0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result v3

    iput v3, v0, Lcom/tencent/tme/live/room/c;->q:I

    if-ne v3, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, v0, Lcom/tencent/tme/live/room/c;->w:Z

    if-eqz v4, :cond_7

    iget-boolean v3, v0, Lcom/tencent/tme/live/room/c;->u:Z

    if-nez v3, :cond_7

    sget v2, Lcom/tencent/tme/live/biz/R$string;->tme_mobile_net_warn:I

    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/room/c;->c(I)V

    goto :goto_6

    :cond_7
    iget-boolean v3, v0, Lcom/tencent/tme/live/room/c;->v:Z

    if-nez v3, :cond_9

    iget-boolean v3, v0, Lcom/tencent/tme/live/room/c;->x:Z

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    if-nez v5, :cond_a

    iget-object v2, v2, Lcom/tencent/tme/live/w0/o$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/room/c;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {v0}, Lcom/tencent/tme/live/room/c;->t()V

    .line 11
    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    if-eqz v0, :cond_e

    .line 12
    iget-object v2, v0, Lcom/tencent/tme/live/room/b;->m:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    iget-object v0, v0, Lcom/tencent/tme/live/room/b;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    check-cast p2, Lcom/tencent/tme/live/w0/o$b;

    .line 14
    iget-object v1, v0, Lcom/tencent/tme/live/room/b;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    iget-object v2, p2, Lcom/tencent/tme/live/w0/o$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_d
    iget-object v0, v0, Lcom/tencent/tme/live/room/b;->i:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    .line 16
    iput-object p2, v0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->d:Lcom/tencent/tme/live/w0/o$b;

    iget-object p2, v0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, v0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, v0, Lcom/tencent/tme/live/room/PlayerQualitySetView;->b:Lcom/tencent/tme/live/c1/b;

    invoke-virtual {p1}, Lcom/tencent/tme/live/c1/b;->a()V

    :cond_e
    return-void
.end method

.method private j()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/w0/o;

    new-instance v4, Landroid/widget/TextView;

    .line 1
    iget-object v5, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 2
    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEms(I)V

    .line 3
    iget-object v2, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 4
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/tencent/tme/live/biz/R$color;->tme_white:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v1, Lcom/tencent/tme/live/w0/o;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tme/live/r0/c$d;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/r0/c$d;-><init>(Lcom/tencent/tme/live/r0/c;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 5
    iget-object v5, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 6
    invoke-static {v5, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    .line 7
    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/tencent/tme/live/r0/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->q:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    const-string p1, "%,d"

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    iput-object p1, p0, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 2
    sget v1, Lcom/tencent/tme/live/biz/R$id;->main_bg:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->liveBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->n:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->ll_game_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->E:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->ll_top_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->o:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->txt_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->p:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->txt_roomOnlineNum:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->q:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_live_num_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->r:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->leftSideBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->k:Landroid/widget/LinearLayout;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->rightSideBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->l:Landroid/widget/RelativeLayout;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_live_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->t:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->txt_live_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->s:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->live_notice_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->u:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_live_notice_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->txt_live_notice_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/tme/live/r0/c;->v:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance v1, Lcom/tencent/tme/live/r0/c$a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/r0/c$a;-><init>(Lcom/tencent/tme/live/r0/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/tme/live/r0/a;

    invoke-direct {v0}, Lcom/tencent/tme/live/r0/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->m:Lcom/tencent/tme/live/r0/a;

    invoke-virtual {p0}, Lcom/tencent/tme/live/w2/b;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$id;->rightSideBar:I

    iget-object v3, p0, Lcom/tencent/tme/live/r0/c;->m:Lcom/tencent/tme/live/r0/a;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tme/live/w2/c;->a(ILcom/tencent/tme/live/w2/b;)Lcom/tencent/tme/live/w2/c;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->playContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->w:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/tencent/tme/live/room/c;

    invoke-direct {v1, p0, v0, v2}, Lcom/tencent/tme/live/room/c;-><init>(Lcom/tencent/tme/live/w2/b;Landroid/view/ViewGroup;I)V

    iput-object v1, p0, Lcom/tencent/tme/live/r0/c;->i:Lcom/tencent/tme/live/room/c;

    new-instance v0, Lcom/tencent/tme/live/room/b;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/room/b;-><init>(Lcom/tencent/tme/live/room/a;)V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    new-instance v0, Lcom/tencent/tme/live/s0/h;

    invoke-direct {v0}, Lcom/tencent/tme/live/s0/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->C:Lcom/tencent/tme/live/s0/h;

    new-instance v0, Lcom/tencent/tme/live/s0/a;

    invoke-direct {v0}, Lcom/tencent/tme/live/s0/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->D:Lcom/tencent/tme/live/s0/a;

    iget-object v1, p0, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/tencent/tme/live/biz/R$layout;->tmes_entry_list:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/tme/live/s0/a;->d:Landroid/view/View;

    sget v4, Lcom/tencent/tme/live/biz/R$id;->fl_reward:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v0, Lcom/tencent/tme/live/s0/a;->a:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/tencent/tme/live/s0/a;->d:Landroid/view/View;

    sget v4, Lcom/tencent/tme/live/biz/R$id;->fl_h5:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v0, Lcom/tencent/tme/live/s0/a;->b:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/tencent/tme/live/s0/a;->d:Landroid/view/View;

    sget v4, Lcom/tencent/tme/live/biz/R$id;->fl_redpacket:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/tencent/tme/live/s0/a;->c:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x55

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v2, v4}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v0, v0, Lcom/tencent/tme/live/s0/a;->d:Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    new-instance v0, Lcom/tencent/tmes/live/redpacket/h;

    iget-object v1, p0, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/tencent/tmes/live/redpacket/h;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    .line 5
    sget v0, Lcom/tencent/tme/live/biz/R$id;->tv_game_data_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$string;->tmes_game_data_entry_title:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    sget p1, Lcom/tencent/tme/live/biz/R$string;->game_data_icon_fullscreen_bg:I

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->E:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->E:Landroid/view/View;

    new-instance v0, Lcom/tencent/tme/live/r0/b;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/r0/b;-><init>(Lcom/tencent/tme/live/r0/c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->B:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->E:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tme/live/w0/o$a;)V
    .locals 10

    iget v0, p1, Lcom/tencent/tme/live/w0/o$a;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->i:Lcom/tencent/tme/live/room/c;

    if-eqz v0, :cond_9

    iget-object v5, p1, Lcom/tencent/tme/live/w0/o$a;->g:Ljava/lang/String;

    .line 86
    iget-object p1, v0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/tme/player/TMEPlayer;->stop()V

    :cond_0
    sget-object p1, Lcom/tencent/tme/player/TMEPlayerState;->Unknown:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object p1, v0, Lcom/tencent/tme/live/room/c;->o:Lcom/tencent/tme/player/TMEPlayerState;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/tencent/tme/live/room/c;->r:Lcom/tencent/tme/live/w0/o$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/tme/live/room/c;->u:Z

    iget-object v4, v0, Lcom/tencent/tme/live/room/c;->z:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/tme/live/room/c;->g()V

    iget-object v4, v0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    const-string v6, "showTipOnVideoCenter"

    if-nez v4, :cond_3

    new-instance v4, Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v7, v0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v7, v0, Lcom/tencent/tme/live/room/a;->f:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_2

    iget-object v8, v0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_2
    iget-object v4, v0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    if-eqz v4, :cond_3

    new-instance v7, Lcom/tencent/tme/live/w0/q;

    sget v8, Lcom/tencent/tme/live/biz/R$string;->tme_no_video_warn:I

    invoke-direct {v7, v4, v8, v3}, Lcom/tencent/tme/live/w0/q;-><init>(Landroid/content/Context;IZ)V

    .line 88
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :cond_3
    iget-object v4, v0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    const/16 v7, 0x8

    if-ne v4, v7, :cond_4

    .line 90
    iget-object v4, v0, Lcom/tencent/tme/live/room/a;->d:Landroid/content/Context;

    if-eqz v4, :cond_5

    new-instance v7, Lcom/tencent/tme/live/w0/q;

    sget v8, Lcom/tencent/tme/live/biz/R$string;->tme_no_video_warn:I

    invoke-direct {v7, v4, v8, v3}, Lcom/tencent/tme/live/w0/q;-><init>(Landroid/content/Context;IZ)V

    .line 91
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_4
    iget-object v4, v0, Lcom/tencent/tme/live/room/c;->C:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    :goto_0
    iget-object v4, v0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iput-object v5, v0, Lcom/tencent/tme/live/room/c;->C:Ljava/lang/String;

    new-instance v1, Lcom/tencent/tme/live/c/c$a;

    const v4, 0x7fffffff

    invoke-direct {v1, v4, v3, v3}, Lcom/tencent/tme/live/c/c$a;-><init>(IZZ)V

    invoke-static {}, Lcom/tencent/tme/live/c/c;->f()Lcom/tencent/tme/live/c/c;

    move-result-object v4

    iget-object v3, v0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    new-instance v8, Lcom/tencent/tme/live/s1/a;

    invoke-direct {v8, v0, v6, v7, v5}, Lcom/tencent/tme/live/s1/a;-><init>(Lcom/tencent/tme/live/room/c;JLjava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/tencent/tme/live/d/d;

    iget-object v6, v4, Lcom/tencent/tme/live/c/c;->e:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 94
    iget-boolean v9, v1, Lcom/tencent/tme/live/c/c$a;->b:Z

    if-nez v9, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Lcom/tencent/tme/live/c/b;

    invoke-direct {p1, v4, v8, v1}, Lcom/tencent/tme/live/c/b;-><init>(Lcom/tencent/tme/live/c/c;Lcom/tencent/tme/live/d/e;Lcom/tencent/tme/live/c/c$a;)V

    .line 95
    :goto_1
    invoke-direct {v0, v6, v7, p1}, Lcom/tencent/tme/live/d/d;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/tencent/tme/live/d/c;)V

    .line 96
    :try_start_0
    new-instance v6, Lcom/tencent/tme/live/k0/b;

    invoke-direct {v6, v3}, Lcom/tencent/tme/live/k0/b;-><init>(Landroid/widget/ImageView;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/tme/live/e0/d;->a(Ljava/lang/String;Lcom/tencent/tme/live/k0/a;Lcom/tencent/tme/live/e0/c;Lcom/tencent/tme/live/l0/a;Lcom/tencent/tme/live/l0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 97
    :cond_8
    const-string p1, ""

    const/4 v1, -0x2

    invoke-virtual {v0, v6, v7, p1, v1}, Lcom/tencent/tme/live/room/c;->a(JLjava/lang/String;I)V

    .line 98
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    if-eqz p1, :cond_f

    .line 99
    iget-object v0, p1, Lcom/tencent/tme/live/room/b;->m:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    iget-object p1, p1, Lcom/tencent/tme/live/room/b;->j:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_b
    if-ne v0, v3, :cond_f

    .line 100
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/tme/live/w0/d;->w:Z

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    if-eqz p1, :cond_d

    .line 101
    iget-object v0, p1, Lcom/tencent/tme/live/room/b;->m:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    iget-object p1, p1, Lcom/tencent/tme/live/room/b;->j:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_d
    return-void

    .line 102
    :cond_e
    new-instance v0, Lcom/tencent/tme/live/r0/c$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/r0/c$$ExternalSyntheticLambda2;-><init>(Lcom/tencent/tme/live/r0/c;)V

    invoke-static {p1, v0}, Lcom/tencent/tme/live/p0/b;->a(Lcom/tencent/tme/live/w0/o$a;Lcom/tencent/tme/live/p0/b$b;)V

    :cond_f
    :goto_3
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 13

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "topic:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0xd

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "redPacketMsg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "showTipOnVideoCenter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "enterLiveConfigRefresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "entry_list_show_state_changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "receiverChatMsg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "operationLiveMsg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "noSendChatMsg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "netStateChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "updateRoomInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_9
    const-string v0, "httpAuth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_a
    const-string v0, "connLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "emojListChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_c
    const-string v0, "loadRoomDataEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_d
    const-string v0, "updateReward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_e
    const-string v0, "updateRoomOnlineNum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 p1, 0x0

    :goto_1
    const-string v0, ""

    const/4 v10, -0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_e

    .line 29
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    if-eqz p1, :cond_2e

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->m:Lcom/tencent/tme/live/r0/a;

    if-eqz v0, :cond_2e

    instance-of v1, p2, Lcom/tencent/tme/live/w0/j;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    check-cast p2, Lcom/tencent/tme/live/w0/j;

    .line 30
    sget v2, Lcom/tencent/tme/live/biz/R$string;->tme_chat_room:I

    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/r0/a;->c(I)Z

    move-result v0

    .line 31
    iget-object v2, p0, Lcom/tencent/tme/live/r0/c;->L:Lcom/tencent/tmes/live/redpacket/h$c;

    invoke-virtual {p1, v1, p2, v0, v2}, Lcom/tencent/tmes/live/redpacket/h;->a(Landroid/view/View;Lcom/tencent/tme/live/w0/j;ZLcom/tencent/tmes/live/redpacket/h$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_e

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/tme/live/r0/c;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 32
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->C:Lcom/tencent/tme/live/s0/h;

    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    instance-of v0, p2, Lcom/tencent/tme/live/w0/q;

    if-eqz v0, :cond_2e

    .line 33
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->liveContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 34
    check-cast p2, Lcom/tencent/tme/live/w0/q;

    .line 35
    iget-object v1, p2, Lcom/tencent/tme/live/w0/q;->a:Ljava/lang/String;

    .line 36
    iget-boolean p2, p2, Lcom/tencent/tme/live/w0/q;->b:Z

    const-wide/16 v2, 0xbb8

    const/16 v4, 0x11

    if-eqz p2, :cond_10

    .line 37
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v5, "tme_video_toast_big"

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_f

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 38
    :cond_f
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {p2, v11}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v11

    sget v12, Lcom/tencent/tme/live/biz/R$string;->bg_reward_receiver_success:I

    invoke-static {v12, v7}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v7, v8, v11, v8, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcom/tencent/tme/live/biz/R$color;->tme_live_toast_color:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v7, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/tencent/tme/live/s0/g;

    invoke-direct {p2, p1, v7}, Lcom/tencent/tme/live/s0/g;-><init>(Lcom/tencent/tme/live/s0/h;Landroid/widget/TextView;)V

    iput-object p2, p1, Lcom/tencent/tme/live/s0/h;->b:Ljava/lang/Runnable;

    :goto_2
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/tencent/tme/live/s0/h;->b:Ljava/lang/Runnable;

    if-eqz p2, :cond_2e

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p1, Lcom/tencent/tme/live/s0/h;->b:Ljava/lang/Runnable;

    invoke-virtual {v7, p1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_e

    .line 40
    :cond_10
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v5, "tme_video_toast"

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_11

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 41
    :cond_11
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {p2, v8}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {p2, v9}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v9

    sget v11, Lcom/tencent/tme/live/biz/R$string;->chat_background_message:I

    invoke-static {v11, v7}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v7, v8, v9, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcom/tencent/tme/live/biz/R$color;->tme_live_label_color:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v7, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/tencent/tme/live/s0/f;

    invoke-direct {p2, p1, v7}, Lcom/tencent/tme/live/s0/f;-><init>(Lcom/tencent/tme/live/s0/h;Landroid/widget/TextView;)V

    iput-object p2, p1, Lcom/tencent/tme/live/s0/h;->a:Ljava/lang/Runnable;

    :goto_3
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/tencent/tme/live/s0/h;->a:Ljava/lang/Runnable;

    if-eqz p2, :cond_2e

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p1, Lcom/tencent/tme/live/s0/h;->a:Ljava/lang/Runnable;

    invoke-virtual {v7, p1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_e

    .line 43
    :pswitch_2
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->x:Z

    if-eqz p1, :cond_13

    .line 44
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p2, Lcom/tencent/tme/live/reward/RewardEnterView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/tme/live/reward/RewardEnterView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/tme/live/r0/c;->x:Lcom/tencent/tme/live/reward/RewardEnterView;

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->D:Lcom/tencent/tme/live/s0/a;

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    .line 45
    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/s0/a;->a(Landroid/view/View;)V

    iget-object v0, p1, Lcom/tencent/tme/live/s0/a;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/tencent/tme/live/s0/a;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_12

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_12
    iget-object p1, p1, Lcom/tencent/tme/live/s0/a;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, v10, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 46
    invoke-virtual {p0, v8}, Lcom/tencent/tme/live/r0/c;->f(Z)V

    .line 47
    :cond_13
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->z:Z

    if-eqz p1, :cond_2e

    .line 48
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/tencent/tmes/live/redpacket/h;->a()Z

    move-result p1

    if-eqz p1, :cond_14

    goto/16 :goto_e

    :cond_14
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2e

    new-instance p1, Lcom/tencent/tme/live/reward/operation/H5EntryView;

    iget-object p2, p0, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/reward/operation/H5EntryView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/tme/live/r0/c;->y:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    new-instance p2, Lcom/tencent/tme/live/r0/d;

    invoke-direct {p2, p0}, Lcom/tencent/tme/live/r0/d;-><init>(Lcom/tencent/tme/live/r0/c;)V

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->setShowStateCallback(Lcom/tencent/tme/live/reward/operation/H5EntryView$b;)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->y:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    new-instance p2, Lcom/tencent/tme/live/r0/e;

    invoke-direct {p2, p0}, Lcom/tencent/tme/live/r0/e;-><init>(Lcom/tencent/tme/live/r0/c;)V

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->setOnEntryStateCallback(Lcom/tencent/tme/live/reward/operation/H5EntryView$a;)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->y:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    .line 49
    iput-boolean v8, p1, Lcom/tencent/tme/live/reward/operation/H5EntryView;->e:Z

    new-instance p2, Lcom/tencent/tme/live/r1/a;

    invoke-direct {p2, p1}, Lcom/tencent/tme/live/r1/a;-><init>(Lcom/tencent/tme/live/reward/operation/H5EntryView;)V

    invoke-static {p2}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a(Lcom/tencent/tme/live/reward/a$a;)V

    .line 50
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->D:Lcom/tencent/tme/live/s0/a;

    iget-object p2, p0, Lcom/tencent/tme/live/r0/c;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->y:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    .line 51
    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/s0/a;->a(Landroid/view/View;)V

    iget-object p2, p1, Lcom/tencent/tme/live/s0/a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p1, Lcom/tencent/tme/live/s0/a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v10, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 52
    invoke-virtual {p0, v8}, Lcom/tencent/tme/live/r0/c;->e(Z)V

    goto/16 :goto_e

    .line 53
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/tencent/tme/live/r0/c;->D:Lcom/tencent/tme/live/s0/a;

    if-eqz p2, :cond_2e

    .line 54
    iget-object v0, p2, Lcom/tencent/tme/live/s0/a;->d:Landroid/view/View;

    if-eqz v0, :cond_2e

    if-nez p1, :cond_15

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_15
    iget-object p1, p2, Lcom/tencent/tme/live/s0/a;->a:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_18

    :cond_16
    iget-object p1, p2, Lcom/tencent/tme/live/s0/a;->b:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_18

    :cond_17
    iget-object p1, p2, Lcom/tencent/tme/live/s0/a;->c:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2e

    :cond_18
    iget-object p1, p2, Lcom/tencent/tme/live/s0/a;->d:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 55
    :pswitch_4
    const-class p1, Lcom/tencent/tme/live/w0/a;

    invoke-static {p2, p1}, Lcom/tencent/tme/live/b1/a;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_19

    goto/16 :goto_e

    :cond_19
    iget-object p2, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    if-eqz p2, :cond_2e

    .line 56
    iget-object p2, p2, Lcom/tencent/tme/live/room/b;->f:Landroid/widget/TextView;

    if-eqz p2, :cond_1a

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1a
    iget-object p2, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    .line 58
    iget-object v0, p2, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/w0/a;

    iget-object v3, p2, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    .line 59
    iget-object v4, v3, Lcom/tencent/tme/live/danmu/DanmuView;->e:Lcom/tencent/tme/live/o/d;

    iget-object v4, v4, Lcom/tencent/tme/live/o/d;->k:Lcom/tencent/tme/live/o/e;

    .line 60
    iget-object v5, v4, Lcom/tencent/tme/live/o/e;->i:Lcom/tencent/tme/live/o/d;

    invoke-virtual {v4, v7, v5}, Lcom/tencent/tme/live/o/e;->a(ILcom/tencent/tme/live/o/d;)Lcom/tencent/tme/live/n/b;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 61
    iget-object v5, v0, Lcom/tencent/tme/live/w0/a;->c:Ljava/lang/String;

    if-nez v5, :cond_1c

    iget-object v6, v0, Lcom/tencent/tme/live/w0/a;->d:Landroid/text/SpannableStringBuilder;

    if-nez v6, :cond_1c

    goto :goto_4

    :cond_1c
    iput-boolean v7, v4, Lcom/tencent/tme/live/n/b;->x:Z

    iget-boolean v6, v3, Lcom/tencent/tme/live/danmu/DanmuView;->g:Z

    if-eqz v6, :cond_1d

    const-wide/16 v9, 0x251c

    goto :goto_5

    :cond_1d
    const-wide/16 v9, 0x1b58

    :goto_5
    new-instance v6, Lcom/tencent/tme/live/n/e;

    invoke-direct {v6, v9, v10}, Lcom/tencent/tme/live/n/e;-><init>(J)V

    iput-object v6, v4, Lcom/tencent/tme/live/n/b;->o:Lcom/tencent/tme/live/n/e;

    iget v6, v3, Lcom/tencent/tme/live/danmu/DanmuView;->a:I

    iput v6, v4, Lcom/tencent/tme/live/n/b;->z:I

    iget-object v6, v0, Lcom/tencent/tme/live/w0/a;->d:Landroid/text/SpannableStringBuilder;

    if-eqz v6, :cond_1e

    goto :goto_6

    :cond_1e
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :goto_6
    iput-object v6, v4, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    iget v5, v0, Lcom/tencent/tme/live/w0/a;->e:I

    iput v5, v4, Lcom/tencent/tme/live/n/b;->f:I

    const/high16 v5, 0xe80000

    iput v5, v4, Lcom/tencent/tme/live/n/b;->g:I

    iget v5, v3, Lcom/tencent/tme/live/danmu/DanmuView;->b:I

    int-to-float v5, v5

    iput v5, v4, Lcom/tencent/tme/live/n/b;->h:F

    iget-boolean v5, v0, Lcom/tencent/tme/live/w0/a;->f:Z

    if-eqz v5, :cond_1f

    iput-byte v7, v4, Lcom/tencent/tme/live/n/b;->l:B

    iget v5, v3, Lcom/tencent/tme/live/danmu/DanmuView;->a:I

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    const/high16 v9, -0x34000000    # -3.3554432E7f

    invoke-static {v5, v9}, Lcom/tencent/tme/live/s2/d;->a(FI)I

    move-result v5

    iput v5, v4, Lcom/tencent/tme/live/n/b;->p:I

    iget v5, v3, Lcom/tencent/tme/live/danmu/DanmuView;->a:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    const/16 v6, -0x3d9a

    invoke-static {v5, v6}, Lcom/tencent/tme/live/s2/d;->a(FI)I

    move-result v5

    iput v5, v4, Lcom/tencent/tme/live/n/b;->i:I

    iget-object v5, v3, Lcom/tencent/tme/live/danmu/DanmuView;->c:Landroid/content/Context;

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v5, v6}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Lcom/tencent/tme/live/n/b;->j:I

    iget-object v5, v3, Lcom/tencent/tme/live/danmu/DanmuView;->c:Landroid/content/Context;

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v5, v6}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Lcom/tencent/tme/live/n/b;->k:I

    iput v2, v4, Lcom/tencent/tme/live/n/b;->E:I

    iget-object v0, v0, Lcom/tencent/tme/live/w0/a;->d:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_20

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/tme/live/n/b;->p:I

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/tencent/tme/live/n/b;->i:I

    goto :goto_7

    :cond_1f
    iput-byte v8, v4, Lcom/tencent/tme/live/n/b;->l:B

    :cond_20
    :goto_7
    iget-object v0, v3, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    invoke-virtual {v0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->getCurrentTime()J

    move-result-wide v5

    const-wide/16 v9, 0x64

    add-long/2addr v5, v9

    iput-wide v5, v4, Lcom/tencent/tme/live/n/b;->a:J

    iget-object v0, v3, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    .line 62
    iget-object v0, v0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-eqz v0, :cond_1b

    .line 63
    iget-object v3, v0, Lcom/tencent/tme/live/m/h;->j:Lcom/tencent/tme/live/m/n;

    if-eqz v3, :cond_1b

    iget-object v5, v0, Lcom/tencent/tme/live/m/h;->a:Lcom/tencent/tme/live/o/d;

    iget-object v5, v5, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    iput-object v5, v4, Lcom/tencent/tme/live/n/b;->C:Lcom/tencent/tme/live/n/h;

    iget-object v5, v0, Lcom/tencent/tme/live/m/h;->h:Lcom/tencent/tme/live/n/d;

    .line 64
    iput-object v5, v4, Lcom/tencent/tme/live/n/b;->y:Lcom/tencent/tme/live/n/d;

    .line 65
    invoke-interface {v3, v4}, Lcom/tencent/tme/live/m/n;->a(Lcom/tencent/tme/live/n/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 66
    :pswitch_5
    check-cast p2, Lcom/tencent/tme/live/w0/h;

    iget-object p1, p2, Lcom/tencent/tme/live/w0/h;->b:Ljava/lang/String;

    if-eqz p1, :cond_2e

    iget-object v1, p0, Lcom/tencent/tme/live/r0/c;->B:Lcom/tencent/tme/live/w0/o$a;

    iget-object v1, v1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p2, Lcom/tencent/tme/live/w0/h;->c:Ljava/lang/String;

    .line 67
    const-string v1, "operation_live_notice"

    invoke-static {v1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tencent/tme/live/b1/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto/16 :goto_e

    .line 68
    :cond_21
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->v:Landroid/widget/TextView;

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->u:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p2, Lcom/tencent/tme/live/w0/h;->c:Ljava/lang/String;

    .line 69
    invoke-static {v1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/tme/live/b1/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->v:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/tencent/tme/live/w0/h;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->K:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->K:Ljava/lang/Runnable;

    iget p2, p2, Lcom/tencent/tme/live/w0/h;->a:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_e

    .line 71
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    if-eqz p2, :cond_2e

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/room/b;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_7
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->i:Lcom/tencent/tme/live/room/c;

    if-eqz p1, :cond_28

    iget-object v1, p0, Lcom/tencent/tme/live/r0/c;->B:Lcom/tencent/tme/live/w0/o$a;

    if-eqz v1, :cond_28

    iget v1, v1, Lcom/tencent/tme/live/w0/o$a;->f:I

    if-ne v1, v7, :cond_28

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 72
    invoke-virtual {p1}, Lcom/tencent/tme/live/room/c;->l()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p1, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    if-nez v1, :cond_22

    goto :goto_a

    :cond_22
    const-string v1, "netStateChange oldType="

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/tme/live/room/c;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LivePlayerWrapper"

    invoke-static {v2, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p1, Lcom/tencent/tme/live/room/c;->q:I

    if-ne p2, v4, :cond_23

    sget p2, Lcom/tencent/tme/live/biz/R$string;->tme_no_network_warn:I

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/room/c;->c(I)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/room/c;->e()V

    goto :goto_a

    :cond_23
    if-ne p2, v7, :cond_24

    invoke-virtual {p1}, Lcom/tencent/tme/live/room/c;->o()Z

    move-result p2

    if-eqz p2, :cond_28

    goto :goto_9

    :cond_24
    if-ne p2, v5, :cond_28

    iget-boolean p2, p1, Lcom/tencent/tme/live/room/c;->w:Z

    if-eqz p2, :cond_26

    iget-boolean p2, p1, Lcom/tencent/tme/live/room/c;->v:Z

    if-eqz p2, :cond_25

    goto :goto_8

    :cond_25
    invoke-virtual {p1}, Lcom/tencent/tme/live/room/c;->q()V

    goto :goto_a

    :cond_26
    iget-boolean p2, p1, Lcom/tencent/tme/live/room/c;->v:Z

    if-eqz p2, :cond_27

    :goto_8
    invoke-virtual {p1}, Lcom/tencent/tme/live/room/c;->t()V

    goto :goto_a

    :cond_27
    :goto_9
    invoke-virtual {p1}, Lcom/tencent/tme/live/room/c;->r()V

    .line 73
    :cond_28
    :goto_a
    invoke-static {}, Lcom/tencent/tme/live/q0/a;->a()Lcom/tencent/tme/live/q0/a;

    move-result-object p1

    .line 74
    iget-object p1, p1, Lcom/tencent/tme/live/q0/a;->b:Lcom/tencent/tme/live/q0/a$a;

    if-eqz p1, :cond_2e

    .line 75
    iput-object v0, p1, Lcom/tencent/tme/live/q0/a$a;->a:Ljava/lang/String;

    goto/16 :goto_e

    .line 76
    :pswitch_8
    check-cast p2, Lcom/tencent/tme/live/w0/o$a;

    invoke-virtual {p0, p2, v8}, Lcom/tencent/tme/live/r0/c;->b(Lcom/tencent/tme/live/w0/o$a;Z)V

    goto/16 :goto_e

    :pswitch_9
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->A:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_29

    return-void

    :cond_29
    iput-boolean v8, p0, Lcom/tencent/tme/live/r0/c;->H:Z

    invoke-virtual {p0}, Lcom/tencent/tme/live/r0/c;->k()V

    goto/16 :goto_e

    :pswitch_a
    iget p1, p0, Lcom/tencent/tme/live/r0/c;->J:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/tencent/tme/live/r0/c;->J:I

    iget-object p2, p0, Lcom/tencent/tme/live/r0/c;->B:Lcom/tencent/tme/live/w0/o$a;

    if-eqz p2, :cond_2e

    if-ne p1, v7, :cond_2a

    goto :goto_b

    :cond_2a
    const/4 v7, 0x0

    :goto_b
    iget-object p1, p2, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-virtual {p0, v7, p1}, Lcom/tencent/tme/live/r0/c;->a(ZLjava/lang/String;)V

    goto :goto_e

    :pswitch_b
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    check-cast p2, Ljava/util/List;

    .line 77
    iget-object p1, p1, Lcom/tencent/tme/live/room/b;->l:Lcom/tencent/tme/live/chat/HotEmojView;

    if-eqz p1, :cond_2e

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/chat/HotEmojView;->b(Ljava/util/List;)V

    goto :goto_e

    .line 78
    :pswitch_c
    invoke-virtual {p0}, Lcom/tencent/tme/live/r0/c;->k()V

    goto :goto_e

    :pswitch_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/r0/c;->f(Z)V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/r0/c;->e(Z)V

    .line 79
    iget-object p2, p0, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    if-eqz p2, :cond_2e

    if-eqz p1, :cond_2b

    invoke-virtual {p2}, Lcom/tencent/tmes/live/redpacket/h;->c()V

    goto :goto_e

    :cond_2b
    invoke-virtual {p2}, Lcom/tencent/tmes/live/redpacket/h;->b()V

    goto :goto_e

    .line 80
    :pswitch_e
    check-cast p2, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;

    iget-object p1, p2, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->roomid:Ljava/lang/String;

    if-nez p1, :cond_2c

    goto :goto_c

    :cond_2c
    move-object v0, p1

    .line 82
    :goto_c
    iget-object p1, p2, Lcom/tencent/protocol/tme/expressmsg/RoomOnlineNumMsg;->real_online_num:Ljava/lang/Long;

    if-nez p1, :cond_2d

    const-wide/16 p1, 0x0

    goto :goto_d

    .line 83
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 84
    :goto_d
    iget-object v1, p0, Lcom/tencent/tme/live/r0/c;->B:Lcom/tencent/tme/live/w0/o$a;

    if-eqz v1, :cond_2e

    iget-object v1, v1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/r0/c;->a(J)V

    :cond_2e
    :goto_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x75e9dcb1 -> :sswitch_e
        -0x3a9106a8 -> :sswitch_d
        -0x3487bcd1 -> :sswitch_c
        -0x24934c4d -> :sswitch_b
        -0x23e11463 -> :sswitch_a
        -0x7f729b0 -> :sswitch_9
        0x29843812 -> :sswitch_8
        0x31f21dc4 -> :sswitch_7
        0x5216a3e0 -> :sswitch_6
        0x5fc8f78e -> :sswitch_5
        0x622b301a -> :sswitch_4
        0x674817b8 -> :sswitch_3
        0x6f54fbb5 -> :sswitch_2
        0x733ad593 -> :sswitch_1
        0x7b1fb048 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/tencent/tme/live/w2/b;->c:Z

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/tme/live/f/d;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/tencent/tme/live/r0/c;->I:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/r0/c;->I:Z

    invoke-static {}, Lcom/tencent/tme/live/e/j;->b()Lcom/tencent/tme/live/e/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/e/j;->a(Ljava/lang/String;)V

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lcom/tencent/tme/live/e/j;->b()Lcom/tencent/tme/live/e/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tme/live/e/j;->a()V

    invoke-static {}, Lcom/tencent/tme/live/e/j;->b()Lcom/tencent/tme/live/e/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/e/j;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_live_shatter:I

    return v0
.end method

.method public final b(Lcom/tencent/tme/live/w0/o$a;Z)V
    .locals 2

    new-instance v0, Lcom/tencent/tme/live/r0/c$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/tme/live/r0/c$$ExternalSyntheticLambda3;-><init>(Lcom/tencent/tme/live/r0/c;Lcom/tencent/tme/live/w0/o$a;Z)V

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/a1/b;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/tencent/tme/live/b1/d;->a()Lcom/tencent/tme/live/b1/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tme/live/b1/d;->b()V

    .line 7
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->A:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    iget-object p2, p0, Lcom/tencent/tme/live/r0/c;->L:Lcom/tencent/tmes/live/redpacket/h$c;

    .line 8
    iget-object v0, p1, Lcom/tencent/tmes/live/redpacket/h;->b:Lcom/tencent/tme/live/y2/c;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/tencent/tmes/live/redpacket/h;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tmes/live/redpacket/h;->a()Z

    move-result v0

    const-string v1, "RedPacketEntry"

    if-eqz v0, :cond_2

    const-string p1, "alreadyMount entry view"

    :goto_0
    invoke-static {v1, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p1, Lcom/tencent/tmes/live/redpacket/h;->f:Z

    if-eqz v0, :cond_3

    const-string p1, "tryMountEntryAlreadyDone"

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/tmes/live/redpacket/h;->f:Z

    iget-object v0, p1, Lcom/tencent/tmes/live/redpacket/h;->b:Lcom/tencent/tme/live/y2/c;

    new-instance v1, Lcom/tencent/tmes/live/redpacket/i;

    invoke-direct {v1, p1, p2}, Lcom/tencent/tmes/live/redpacket/i;-><init>(Lcom/tencent/tmes/live/redpacket/h;Lcom/tencent/tmes/live/redpacket/h$c;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/y2/c;->a(Lcom/tencent/tme/live/v0/g;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/tme/live/w2/b;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$id;->operation:I

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/w2/c;->a(I)Lcom/tencent/tme/live/w2/b;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/tencent/tme/live/r0/g;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/tme/live/r0/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyZoomState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/tme/live/r0/g;->h:Lcom/tencent/tme/live/n1/b;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/tencent/tme/live/m1/a;

    .line 3
    iput-boolean p1, v0, Lcom/tencent/tme/live/m1/a;->k:Z

    iget-object v0, v0, Lcom/tencent/tme/live/m1/a;->b:Lcom/tencent/tme/live/n1/c;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/question/ui/QuestionMultiLineWindow;->a(Z)V

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->m:Lcom/tencent/tme/live/r0/a;

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/r0/a;->h:Lcom/tencent/tme/live/chat/ChatView;

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p1, Lcom/tencent/tme/live/chat/ChatView;->h:Lcom/tencent/tme/live/chat/HotEmojView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tme/live/chat/HotEmojView;->a()V

    :cond_3
    return-void
.end method

.method public final c(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/tencent/tme/live/r0/c;->G:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->o:Landroid/view/View;

    sget v2, Lcom/tencent/tme/live/biz/R$drawable;->tme_player_titlebar_bg:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->q:Landroid/widget/TextView;

    .line 1
    iget-object v2, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 2
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/tme/live/biz/R$color;->tme_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->r:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v2, Lcom/tencent/tme/live/biz/R$string;->player_icon_pcu_full_screen:I

    invoke-virtual {p1, v2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    .line 3
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->m:Lcom/tencent/tme/live/r0/a;

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x41100000    # 9.0f

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tme/live/r0/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->E:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->o:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 6
    invoke-static {v0, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 8
    invoke-static {v1, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 10
    invoke-static {v2, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    .line 11
    iget-object v3, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    const/high16 v4, 0x41700000    # 15.0f

    .line 12
    invoke-static {v3, v4}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v3

    .line 13
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    sget-object p1, Lcom/tencent/tme/live/chat/GameDataView;->b:Lcom/tencent/tme/live/w0/b;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/tencent/tme/live/w0/b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    sget-boolean v1, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/y0/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->E:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->o:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 15
    invoke-static {v0, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 17
    invoke-static {v1, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    .line 18
    iget-object v2, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 19
    invoke-static {v2, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    .line 20
    iget-object v3, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    const/high16 v4, 0x420c0000    # 35.0f

    .line 21
    invoke-static {v3, v4}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v3

    .line 22
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->E:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->o:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    const/high16 v2, 0x41400000    # 12.0f

    .line 24
    invoke-static {v0, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v0

    .line 25
    iget-object v2, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    const/high16 v3, 0x40c00000    # 6.0f

    .line 26
    invoke-static {v2, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    .line 27
    invoke-virtual {p1, v1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->o:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->q:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 29
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$color;->tme_live_num_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/tencent/tme/live/r0/c;->r:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$string;->player_icon_pcu_small_screen:I

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Z)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_0
    sget p1, Lcom/tencent/tme/live/biz/R$dimen;->tme_player_margin_top:I

    .line 1
    iget-object v2, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    float-to-int p1, p1

    .line 3
    sget v2, Lcom/tencent/tme/live/biz/R$dimen;->tme_player_margin_bottom:I

    .line 4
    iget-object v4, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    :cond_2
    float-to-int v2, v3

    .line 6
    invoke-virtual {v0, v1, p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    return-void
.end method

.method public e()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->i:Lcom/tencent/tme/live/room/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1
    iput-boolean v1, v0, Lcom/tencent/tme/live/room/c;->x:Z

    invoke-virtual {v0}, Lcom/tencent/tme/live/room/c;->e()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    if-eqz v0, :cond_3

    .line 4
    iget-object v2, v0, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, v2, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-eqz v2, :cond_3

    .line 6
    iget-boolean v3, v2, Lcom/tencent/tme/live/m/h;->f:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    .line 7
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-boolean v3, v2, Lcom/tencent/tme/live/m/h;->w:Z

    if-eqz v3, :cond_1

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 10
    invoke-virtual {v2, v3, v4}, Lcom/tencent/tme/live/m/h;->a(J)J

    :cond_1
    const/4 v3, 0x7

    .line 11
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 12
    :cond_2
    iget-object v0, v0, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    invoke-virtual {v0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->clear()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->x:Lcom/tencent/tme/live/reward/RewardEnterView;

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->c:Lcom/tencent/tme/live/reward/RewardEnterView$a;

    if-eqz v0, :cond_4

    .line 15
    iput-boolean v1, v0, Lcom/tencent/tme/live/reward/RewardEnterView$a;->a:Z

    :cond_4
    return-void
.end method

.method public final e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->y:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/tme/live/reward/operation/H5EntryView;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->i:Lcom/tencent/tme/live/room/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1
    iget-object v3, v0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lcom/tencent/tme/player/TMEPlayer;->setVideoLogCallback(Lcom/tencent/tme/player/TMEVideoPlayLogCallback;)V

    iget-object v3, v0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v3, v2}, Lcom/tencent/tme/player/TMEPlayer;->setVideoControlCallback(Lcom/tencent/tme/player/TMEVideoPlayControlCallback;)V

    iget-object v3, v0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v3}, Lcom/tencent/tme/player/TMEPlayer;->pause()V

    iget-object v3, v0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v3}, Lcom/tencent/tme/player/TMEPlayer;->stop()V

    iget-object v3, v0, Lcom/tencent/tme/live/room/c;->j:Lcom/tencent/tme/player/TMEPlayer;

    invoke-interface {v3}, Lcom/tencent/tme/player/TMEPlayer;->release()V

    :cond_0
    iput-object v2, v0, Lcom/tencent/tme/live/room/c;->r:Lcom/tencent/tme/live/w0/o$b;

    iput-object v2, v0, Lcom/tencent/tme/live/room/c;->C:Ljava/lang/String;

    iput-boolean v1, v0, Lcom/tencent/tme/live/room/c;->v:Z

    iput-boolean v1, v0, Lcom/tencent/tme/live/room/c;->x:Z

    sget-object v3, Lcom/tencent/tme/player/TMEPlayerState;->Unknown:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object v3, v0, Lcom/tencent/tme/live/room/c;->o:Lcom/tencent/tme/player/TMEPlayerState;

    iput-object v3, v0, Lcom/tencent/tme/live/room/c;->p:Lcom/tencent/tme/player/TMEPlayerState;

    .line 2
    iput-object v2, p0, Lcom/tencent/tme/live/r0/c;->i:Lcom/tencent/tme/live/room/c;

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    if-eqz v0, :cond_4

    .line 3
    iget-object v3, v0, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    if-eqz v3, :cond_3

    .line 4
    iget-object v3, v3, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    if-eqz v3, :cond_3

    .line 5
    monitor-enter v3

    :try_start_0
    invoke-virtual {v3}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->h()V

    iget-object v4, v3, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->m:Ljava/util/LinkedList;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6
    :cond_3
    :goto_0
    iput-boolean v1, v0, Lcom/tencent/tme/live/room/b;->r:Z

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v3

    iget-object v0, v0, Lcom/tencent/tme/live/room/b;->q:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v3}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->x:Lcom/tencent/tme/live/reward/RewardEnterView;

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v0}, Lcom/tencent/tme/live/reward/RewardEnterView;->d()V

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->y:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 11
    iput-boolean v3, v0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->e:Z

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v4, v0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->c:Lcom/tencent/tme/live/d1/a;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v0, v0, Lcom/tencent/tme/live/reward/operation/H5EntryView;->c:Lcom/tencent/tme/live/d1/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->z:Lcom/tencent/tmes/live/redpacket/h;

    if-eqz v0, :cond_e

    .line 13
    iget-object v4, v0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b()V

    :cond_7
    iget-object v4, v0, Lcom/tencent/tmes/live/redpacket/h;->b:Lcom/tencent/tme/live/y2/c;

    if-eqz v4, :cond_8

    .line 14
    iput-boolean v3, v4, Lcom/tencent/tme/live/y2/c;->a:Z

    .line 15
    :cond_8
    iget-object v3, v0, Lcom/tencent/tmes/live/redpacket/h;->c:Lcom/tencent/tmes/live/redpacket/a;

    if-eqz v3, :cond_a

    .line 16
    iget-object v4, v3, Lcom/tencent/tmes/live/redpacket/a;->e:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_9
    iput-object v2, v3, Lcom/tencent/tmes/live/redpacket/a;->e:Landroid/animation/AnimatorSet;

    .line 17
    :cond_a
    iput-object v2, v0, Lcom/tencent/tmes/live/redpacket/h;->d:Lcom/tencent/tme/live/w0/j;

    .line 18
    iget-object v3, v0, Lcom/tencent/tmes/live/redpacket/h;->e:Landroid/view/ViewGroup;

    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    iget-object v3, v0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-nez v3, :cond_c

    goto :goto_1

    :cond_c
    iget-object v4, v0, Lcom/tencent/tmes/live/redpacket/h;->g:Lcom/tencent/tmes/live/redpacket/h$c;

    if-eqz v4, :cond_d

    invoke-interface {v4, v3}, Lcom/tencent/tmes/live/redpacket/h$c;->b(Landroid/view/View;)V

    :cond_d
    iput-object v2, v0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 19
    :goto_1
    iput-object v2, v0, Lcom/tencent/tmes/live/redpacket/h;->e:Landroid/view/ViewGroup;

    iput-boolean v1, v0, Lcom/tencent/tmes/live/redpacket/h;->f:Z

    .line 20
    :cond_e
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v0

    iput-boolean v1, v0, Lcom/tencent/tme/live/framework/common/b;->G:Z

    invoke-static {}, Lcom/tencent/tme/live/e/j;->b()Lcom/tencent/tme/live/e/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tme/live/e/j;->a()V

    invoke-static {}, Lcom/tencent/tme/live/q0/a;->a()Lcom/tencent/tme/live/q0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tme/live/q0/a;->b()V

    invoke-static {}, Lcom/tencent/tme/live/b1/d;->a()Lcom/tencent/tme/live/b1/d;

    move-result-object v0

    .line 21
    iput-boolean v1, v0, Lcom/tencent/tme/live/b1/d;->g:Z

    iput-boolean v1, v0, Lcom/tencent/tme/live/b1/d;->f:Z

    iget-object v1, v0, Lcom/tencent/tme/live/b1/d;->d:Ljava/util/List;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v2, v0, Lcom/tencent/tme/live/b1/d;->d:Ljava/util/List;

    :cond_f
    iget-object v1, v0, Lcom/tencent/tme/live/b1/d;->c:Landroid/os/Handler;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {v0}, Lcom/tencent/tme/live/b1/d;->c()V

    iput-object v2, v0, Lcom/tencent/tme/live/b1/d;->c:Landroid/os/Handler;

    iget-object v1, v0, Lcom/tencent/tme/live/b1/d;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v2, v0, Lcom/tencent/tme/live/b1/d;->a:Ljava/util/HashMap;

    :cond_11
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    iput-object v2, v1, Lcom/tencent/tme/live/w0/d;->g:Ljava/util/List;

    :cond_12
    iput-object v2, v0, Lcom/tencent/tme/live/b1/d;->e:Ljava/util/List;

    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->x:Lcom/tencent/tme/live/reward/RewardEnterView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/reward/RewardEnterView;->c()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->i:Lcom/tencent/tme/live/room/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1
    iget-boolean v2, p0, Lcom/tencent/tme/live/w2/b;->c:Z

    if-eqz v2, :cond_3

    .line 2
    iput-boolean v1, v0, Lcom/tencent/tme/live/room/c;->x:Z

    iget-wide v2, v0, Lcom/tencent/tme/live/room/c;->s:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tme/live/room/c;->s:J

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/tencent/tme/live/room/c;->o:Lcom/tencent/tme/player/TMEPlayerState;

    sget-object v3, Lcom/tencent/tme/player/TMEPlayerState;->Unknown:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/tencent/tme/live/room/c;->r:Lcom/tencent/tme/live/w0/o$b;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/tencent/tme/live/room/c;->q()V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/tencent/tme/live/room/c;->p:Lcom/tencent/tme/player/TMEPlayerState;

    sget-object v3, Lcom/tencent/tme/player/TMEPlayerState;->Preparing:Lcom/tencent/tme/player/TMEPlayerState;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/tencent/tme/player/TMEPlayerState;->Prepared:Lcom/tencent/tme/player/TMEPlayerState;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/tencent/tme/player/TMEPlayerState;->Playing:Lcom/tencent/tme/player/TMEPlayerState;

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/tme/live/room/c;->f()V

    .line 5
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    if-eqz v0, :cond_6

    .line 6
    iget-boolean v2, p0, Lcom/tencent/tme/live/w2/b;->c:Z

    if-eqz v2, :cond_6

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/room/b;->g:Lcom/tencent/tme/live/danmu/DanmuView;

    if-eqz v0, :cond_6

    .line 8
    iget-object v0, v0, Lcom/tencent/tme/live/danmu/DanmuView;->d:Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;

    if-eqz v0, :cond_6

    .line 9
    iget-object v2, v0, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->d:Lcom/tencent/tme/live/m/h;

    if-eqz v2, :cond_6

    .line 10
    iget-boolean v3, v2, Lcom/tencent/tme/live/m/h;->f:Z

    if-eqz v3, :cond_6

    if-eqz v2, :cond_4

    .line 11
    iget-boolean v3, v2, Lcom/tencent/tme/live/m/h;->d:Z

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    .line 12
    iget-boolean v3, v2, Lcom/tencent/tme/live/m/h;->f:Z

    if-eqz v3, :cond_5

    .line 13
    invoke-virtual {v2}, Lcom/tencent/tme/live/m/h;->e()V

    goto :goto_2

    :cond_5
    if-nez v2, :cond_6

    .line 14
    invoke-virtual {v0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->h()V

    invoke-virtual {v0}, Lcom/tencent/tme/danmaku/ui/widget/DanmakuSurfaceView;->g()V

    .line 15
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->x:Lcom/tencent/tme/live/reward/RewardEnterView;

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, v0, Lcom/tencent/tme/live/reward/RewardEnterView;->c:Lcom/tencent/tme/live/reward/RewardEnterView$a;

    if-eqz v0, :cond_7

    .line 17
    iput-boolean v1, v0, Lcom/tencent/tme/live/reward/RewardEnterView$a;->a:Z

    :cond_7
    return-void
.end method

.method public h()V
    .locals 8

    sget-object v0, Lcom/tencent/tme/live/r0/c;->M:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/a1/a;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/r0/c;->F:Lcom/tencent/tme/live/room/b$h;

    .line 1
    iput-object v1, v0, Lcom/tencent/tme/live/room/b;->s:Lcom/tencent/tme/live/room/b$h;

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/tme/live/framework/common/b;->G:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/r0/c$b;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/r0/c$b;-><init>(Lcom/tencent/tme/live/r0/c;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/r2/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    invoke-static {}, Lcom/tencent/tme/live/q0/a;->a()Lcom/tencent/tme/live/q0/a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/tme/live/q0/a;->b()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tme/live/q0/a;->d:I

    const-wide/16 v1, 0x0

    .line 4
    invoke-static {v1, v2}, Lcom/tencent/tme/live/b1/c;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/tencent/tme/live/q0/a;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/tme/live/q0/a;->a:Ljava/util/Timer;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/tencent/tme/live/q0/a;->a:Ljava/util/Timer;

    :cond_2
    iget-object v1, v0, Lcom/tencent/tme/live/q0/a;->b:Lcom/tencent/tme/live/q0/a$a;

    if-nez v1, :cond_3

    new-instance v1, Lcom/tencent/tme/live/q0/a$a;

    invoke-direct {v1, v0}, Lcom/tencent/tme/live/q0/a$a;-><init>(Lcom/tencent/tme/live/q0/a;)V

    iput-object v1, v0, Lcom/tencent/tme/live/q0/a;->b:Lcom/tencent/tme/live/q0/a$a;

    :cond_3
    iget-object v2, v0, Lcom/tencent/tme/live/q0/a;->a:Ljava/util/Timer;

    iget-object v3, v0, Lcom/tencent/tme/live/q0/a;->b:Lcom/tencent/tme/live/q0/a$a;

    iget v0, v0, Lcom/tencent/tme/live/q0/a;->c:I

    int-to-long v6, v0

    move-wide v4, v6

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public final i()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/live/w2/b;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$id;->titlebar:I

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/w2/c;->a(I)Lcom/tencent/tme/live/w2/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/r0/c;->H:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/r0/c;->H:Z

    new-instance v0, Lcom/tencent/tme/live/r0/c$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/r0/c$$ExternalSyntheticLambda1;-><init>(Lcom/tencent/tme/live/r0/c;)V

    invoke-static {v0}, Lcom/tencent/tme/live/p0/b;->a(Lcom/tencent/tme/live/p0/b$a;)V

    return-void
.end method

.method public final l()V
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/r0/c$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/r0/c$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/r0/c;)V

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/a1/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
