.class public Lcom/tencent/tme/live/r0/a;
.super Lcom/tencent/tme/live/a1/a;


# static fields
.field public static final o:[Ljava/lang/String;


# instance fields
.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/widget/FrameLayout;

.field public h:Lcom/tencent/tme/live/chat/ChatView;

.field public i:Lcom/tencent/tme/live/aov/ui/ScheduleView;

.field public j:Lcom/tencent/tme/live/chat/GameDataView;

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public n:Lcom/tencent/tme/live/c1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/c1/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v6, "emojListChanged"

    const-string v7, "gameDataTabChanged"

    const-string v0, "noSendChatMsg"

    const-string v1, "receiverChatMsg"

    const-string v2, "updateMatchInfo"

    const-string v3, "operationChatMsg"

    const-string v4, "enterRoomConfigRefresh"

    const-string v5, "questionVoteMsg"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/r0/a;->o:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tme/live/a1/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/r0/a;->m:I

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/r0/a;ILandroid/view/View;Z)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_left_cion:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_schedule:I

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/r0/a;->b(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$string;->tme_game_data:I

    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/r0/a;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    sget p0, Lcom/tencent/tme/live/biz/R$string;->tmes_tab_schedule_select:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/tencent/tme/live/biz/R$string;->tmes_tab_schedule_unselect:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p3, :cond_3

    sget p0, Lcom/tencent/tme/live/biz/R$string;->game_data_tab_selecet:I

    goto :goto_0

    :cond_3
    sget p0, Lcom/tencent/tme/live/biz/R$string;->game_data_tab_unselecet:I

    :goto_0
    invoke-static {p2, p0}, Lcom/tencent/tme/live/b1/f;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_5

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    goto :goto_2

    :cond_5
    const/16 p0, 0x8

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tme/live/r0/a;->h:Lcom/tencent/tme/live/chat/ChatView;

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tme/live/r0/a;->i:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    if-ne v0, v2, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x3

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/tencent/tme/live/biz/R$id;->right_side_tabBar:I

    .line 4
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tencent/tme/live/r0/a;->f:Landroid/widget/LinearLayout;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->right_side_content:I

    .line 6
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 7
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/tencent/tme/live/r0/a;->g:Landroid/widget/FrameLayout;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "gameDataTabChanged"

    const/4 v9, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v3, "updateMatchInfo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v3, "receiverChatMsg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "noSendChatMsg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v3, "enterRoomConfigRefresh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v3, "emojListChanged"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v3, "operationChatMsg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_1
    const-string v3, ""

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    move-object v1, v2

    check-cast v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->i:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    const/4 v9, 0x0

    .line 8
    :goto_2
    iget-object v10, v2, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_15

    iget-object v10, v2, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tencent/tme/live/w0/m;

    if-nez v10, :cond_7

    goto/16 :goto_7

    :cond_7
    iget-object v10, v10, Lcom/tencent/tme/live/w0/m;->b:Ljava/util/List;

    if-eqz v10, :cond_14

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_14

    const/4 v11, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_14

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/tme/live/w0/m$b;

    iget-object v13, v12, Lcom/tencent/tme/live/w0/m$b;->a:Ljava/lang/String;

    if-eqz v13, :cond_13

    iget-object v14, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->season_id:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    iget-object v12, v12, Lcom/tencent/tme/live/w0/m$b;->c:Ljava/util/List;

    if-eqz v12, :cond_13

    const/4 v13, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tencent/tme/live/w0/m$a;

    iget-object v14, v14, Lcom/tencent/tme/live/w0/m$a;->a:Ljava/lang/String;

    if-eqz v14, :cond_12

    iget-object v15, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->schedule_id:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    iget-object v12, v2, Lcom/tencent/tme/live/aov/ui/ScheduleView;->c:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/tme/live/w0/m;

    iget-object v12, v12, Lcom/tencent/tme/live/w0/m;->b:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/tme/live/w0/m$b;

    iget-object v12, v12, Lcom/tencent/tme/live/w0/m$b;->c:Ljava/util/List;

    .line 9
    new-instance v14, Lcom/tencent/tme/live/w0/m$a;

    invoke-direct {v14}, Lcom/tencent/tme/live/w0/m$a;-><init>()V

    iget-object v15, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->schedule_id:Ljava/lang/String;

    if-nez v15, :cond_8

    move-object v15, v3

    .line 11
    :cond_8
    iput-object v15, v14, Lcom/tencent/tme/live/w0/m$a;->a:Ljava/lang/String;

    new-instance v15, Lcom/tencent/tme/live/w0/m$d;

    invoke-direct {v15}, Lcom/tencent/tme/live/w0/m$d;-><init>()V

    iget-object v7, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->teamA_info:Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;

    if-eqz v7, :cond_c

    iget-object v8, v7, Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;->team_id:Ljava/lang/String;

    if-nez v8, :cond_9

    move-object v8, v3

    .line 13
    :cond_9
    iput-object v8, v15, Lcom/tencent/tme/live/w0/m$d;->a:Ljava/lang/String;

    iget-object v8, v7, Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;->team_logo:Ljava/lang/String;

    if-nez v8, :cond_a

    move-object v8, v3

    .line 15
    :cond_a
    iput-object v8, v15, Lcom/tencent/tme/live/w0/m$d;->c:Ljava/lang/String;

    iget-object v7, v7, Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;->team_name:Ljava/lang/String;

    if-nez v7, :cond_b

    move-object v7, v3

    .line 17
    :cond_b
    iput-object v7, v15, Lcom/tencent/tme/live/w0/m$d;->b:Ljava/lang/String;

    :cond_c
    iput-object v15, v14, Lcom/tencent/tme/live/w0/m$a;->b:Lcom/tencent/tme/live/w0/m$d;

    new-instance v7, Lcom/tencent/tme/live/w0/m$d;

    invoke-direct {v7}, Lcom/tencent/tme/live/w0/m$d;-><init>()V

    iget-object v8, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->teamB_info:Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;

    if-eqz v8, :cond_10

    iget-object v15, v8, Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;->team_id:Ljava/lang/String;

    if-nez v15, :cond_d

    move-object v15, v3

    .line 19
    :cond_d
    iput-object v15, v7, Lcom/tencent/tme/live/w0/m$d;->a:Ljava/lang/String;

    iget-object v15, v8, Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;->team_logo:Ljava/lang/String;

    if-nez v15, :cond_e

    move-object v15, v3

    .line 21
    :cond_e
    iput-object v15, v7, Lcom/tencent/tme/live/w0/m$d;->c:Ljava/lang/String;

    iget-object v8, v8, Lcom/tencent/protocol/tme/broadcastMsg/TeamInfo;->team_name:Ljava/lang/String;

    if-nez v8, :cond_f

    move-object v8, v3

    .line 23
    :cond_f
    iput-object v8, v7, Lcom/tencent/tme/live/w0/m$d;->b:Ljava/lang/String;

    :cond_10
    iput-object v7, v14, Lcom/tencent/tme/live/w0/m$a;->c:Lcom/tencent/tme/live/w0/m$d;

    iget-object v7, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->teamA_score:Ljava/lang/Integer;

    invoke-static {v7}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v7

    iput v7, v14, Lcom/tencent/tme/live/w0/m$a;->d:I

    iget-object v7, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->teamB_score:Ljava/lang/Integer;

    invoke-static {v7}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v7

    iput v7, v14, Lcom/tencent/tme/live/w0/m$a;->e:I

    iget-object v7, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->match_time:Ljava/lang/Long;

    if-nez v7, :cond_11

    const-wide/16 v7, 0x0

    goto :goto_5

    .line 24
    :cond_11
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 25
    :goto_5
    iput-wide v7, v14, Lcom/tencent/tme/live/w0/m$a;->f:J

    iget-object v7, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->status:Ljava/lang/Integer;

    invoke-static {v7}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v7

    iput v7, v14, Lcom/tencent/tme/live/w0/m$a;->g:I

    .line 26
    invoke-interface {v12, v13, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    :cond_13
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_14
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_15
    iget-object v2, v2, Lcom/tencent/tme/live/aov/ui/ScheduleView;->d:Lcom/tencent/tme/live/c1/a;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    if-nez v1, :cond_16

    goto/16 :goto_d

    .line 27
    :cond_16
    iget-object v2, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->has_data_tab:Ljava/lang/Integer;

    invoke-static {v2}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v2

    if-nez v2, :cond_17

    const/4 v7, 0x1

    goto :goto_8

    :cond_17
    const/4 v7, 0x0

    :goto_8
    if-nez v7, :cond_19

    iget-object v2, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_18

    goto :goto_9

    :cond_18
    if-nez v7, :cond_27

    iget-object v1, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_27

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    iget-boolean v1, v1, Lcom/tencent/tme/live/w0/d;->B:Z

    if-eqz v1, :cond_27

    sget-object v1, Lcom/tencent/tme/live/v0/f;->e:Lcom/tencent/tme/live/w0/o$a;

    if-eqz v1, :cond_27

    .line 28
    iget-object v1, v1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tme/live/chat/GameDataView;->a(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 29
    :cond_19
    :goto_9
    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    if-nez v2, :cond_1a

    goto/16 :goto_d

    :cond_1a
    invoke-virtual {v2}, Lcom/tencent/tme/live/chat/GameDataView;->getScheduleId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->schedule_id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_d

    :cond_1b
    new-instance v2, Lcom/tencent/tme/live/w0/c;

    iget-object v1, v1, Lcom/tencent/protocol/tme/broadcastMsg/MatchInfoUpdateNotify;->schedule_id:Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/tencent/tme/live/w0/c;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object v1

    invoke-virtual {v1, v6, v2}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 31
    :pswitch_1
    const-class v1, Lcom/tencent/tme/live/w0/a;

    invoke-static {v2, v1}, Lcom/tencent/tme/live/b1/a;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->h:Lcom/tencent/tme/live/chat/ChatView;

    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/chat/ChatView;->a(Ljava/util/LinkedList;)V

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->h:Lcom/tencent/tme/live/chat/ChatView;

    invoke-virtual {v1, v3}, Lcom/tencent/tme/live/chat/ChatView;->setEditText(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->h:Lcom/tencent/tme/live/chat/ChatView;

    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/chat/ChatView;->setEditText(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_3
    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->h:Lcom/tencent/tme/live/chat/ChatView;

    if-eqz v1, :cond_27

    .line 32
    iget-object v2, v1, Lcom/tencent/tme/live/chat/ChatView;->c:Lcom/tencent/tme/live/b1/h;

    invoke-virtual {v2}, Lcom/tencent/tme/live/b1/h;->a()V

    iget-object v2, v1, Lcom/tencent/tme/live/chat/ChatView;->c:Lcom/tencent/tme/live/b1/h;

    invoke-static {}, Lcom/tencent/tme/live/b1/b;->b()Lcom/tencent/tme/live/b1/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tme/live/b1/b;->a()Lcom/tencent/tme/live/w0/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tme/live/b1/h;->a(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/tencent/tme/live/chat/ChatView;->b:Lcom/tencent/tme/live/c1/a;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_d

    .line 33
    :pswitch_4
    instance-of v1, v2, Lcom/tencent/tme/live/w0/b;

    const/16 v3, 0x8

    const-string v4, "LiveRightSideShatter"

    if-eqz v1, :cond_20

    move-object v1, v2

    check-cast v1, Lcom/tencent/tme/live/w0/b;

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/tme/live/w0/d;->B:Z

    if-nez v2, :cond_1c

    const-string v1, "gameDataSwitch false"

    :goto_a
    invoke-static {v4, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_1c
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tme/live/w0/d;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v1, "gameDataWebBaseurl empty"

    goto :goto_a

    .line 34
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tme/live/r0/a;->i()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v1, "alreadyExistsGameDataView"

    invoke-static {v4, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1e
    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    sget v4, Lcom/tencent/tme/live/biz/R$string;->tme_chat_room:I

    invoke-virtual {v0, v4}, Lcom/tencent/tme/live/r0/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    sget v4, Lcom/tencent/tme/live/biz/R$string;->tme_game_data:I

    invoke-virtual {v0, v4}, Lcom/tencent/tme/live/r0/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    sget v4, Lcom/tencent/tme/live/biz/R$string;->tme_schedule:I

    invoke-virtual {v0, v4}, Lcom/tencent/tme/live/r0/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->n:Lcom/tencent/tme/live/c1/c;

    invoke-virtual {v2}, Lcom/tencent/tme/live/c1/c;->a()V

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    if-nez v2, :cond_1f

    new-instance v2, Lcom/tencent/tme/live/chat/GameDataView;

    .line 35
    iget-object v4, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 36
    invoke-direct {v2, v4}, Lcom/tencent/tme/live/chat/GameDataView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/chat/GameDataView;->setData(Lcom/tencent/tme/live/w0/b;)V

    :cond_1f
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-direct {v1, v9, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->g:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    invoke-virtual {v2, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->h:Lcom/tencent/tme/live/chat/ChatView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->i:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 37
    :cond_20
    instance-of v1, v2, Lcom/tencent/tme/live/w0/c;

    if-eqz v1, :cond_27

    move-object v1, v2

    check-cast v1, Lcom/tencent/tme/live/w0/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 38
    iget-object v5, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    if-nez v5, :cond_21

    goto/16 :goto_b

    :cond_21
    iget-object v6, v0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    if-eqz v6, :cond_22

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    goto/16 :goto_c

    :cond_22
    iget-object v5, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    invoke-virtual {v5}, Lcom/tencent/tme/live/chat/GameDataView;->getScheduleId()Ljava/lang/String;

    move-result-object v5

    .line 39
    iget-object v6, v1, Lcom/tencent/tme/live/w0/c;->a:Ljava/lang/String;

    .line 40
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    const-string v3, "scheduleId not same: "

    invoke-static {v3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    invoke-virtual {v5}, Lcom/tencent/tme/live/chat/GameDataView;->getScheduleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, v1, Lcom/tencent/tme/live/w0/c;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v4, v1, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 44
    :cond_23
    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    sget v4, Lcom/tencent/tme/live/biz/R$string;->tme_chat_room:I

    invoke-virtual {v0, v4}, Lcom/tencent/tme/live/r0/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    sget v4, Lcom/tencent/tme/live/biz/R$string;->tme_schedule:I

    invoke-virtual {v0, v4}, Lcom/tencent/tme/live/r0/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->n:Lcom/tencent/tme/live/c1/c;

    invoke-virtual {v1}, Lcom/tencent/tme/live/c1/c;->a()V

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    iget-object v4, v0, Lcom/tencent/tme/live/r0/a;->h:Lcom/tencent/tme/live/chat/ChatView;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    iget-object v4, v0, Lcom/tencent/tme/live/r0/a;->i:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->n:Lcom/tencent/tme/live/c1/c;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/tencent/tme/live/c1/c;->a(I)V

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    if-eqz v1, :cond_25

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    invoke-virtual {v1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    invoke-virtual {v1}, Lcom/tencent/tme/live/chat/GameDataView;->b()V

    iput-object v2, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    goto :goto_c

    :cond_24
    :goto_b
    const-string v3, "failed, mGameDataView:"

    invoke-static {v3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", dataGameBean:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v4, v1, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    :cond_25
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tme/live/r0/a;->j()V

    goto :goto_d

    .line 47
    :pswitch_5
    iget-object v1, v0, Lcom/tencent/tme/live/r0/a;->h:Lcom/tencent/tme/live/chat/ChatView;

    if-eqz v1, :cond_27

    if-eqz v2, :cond_27

    check-cast v2, Ljava/util/List;

    .line 48
    iget-object v1, v1, Lcom/tencent/tme/live/chat/ChatView;->h:Lcom/tencent/tme/live/chat/HotEmojView;

    if-eqz v1, :cond_27

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/chat/HotEmojView;->b(Ljava/util/List;)V

    goto :goto_d

    .line 49
    :pswitch_6
    move-object v1, v2

    check-cast v1, Lcom/tencent/tme/live/w0/h;

    iget-object v2, v1, Lcom/tencent/tme/live/w0/h;->b:Ljava/lang/String;

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/tencent/tme/live/r0/a;->h:Lcom/tencent/tme/live/chat/ChatView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    iget-object v4, v1, Lcom/tencent/tme/live/w0/h;->c:Ljava/lang/String;

    .line 51
    const-string v5, "operation_chat_notice"

    invoke-static {v5}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/tencent/tme/live/b1/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_d

    .line 52
    :cond_26
    iget v3, v1, Lcom/tencent/tme/live/w0/h;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v3

    iget-object v4, v2, Lcom/tencent/tme/live/chat/ChatView;->j:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/tencent/tme/live/w0/h;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/tencent/tme/live/chat/ChatView;->k:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v1, Lcom/tencent/tme/live/w0/h;->c:Ljava/lang/String;

    .line 53
    invoke-static {v5}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/tencent/tme/live/b1/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, v2, Lcom/tencent/tme/live/chat/ChatView;->n:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v2, Lcom/tencent/tme/live/chat/ChatView;->n:Ljava/lang/Runnable;

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_27
    :goto_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f25125e -> :sswitch_6
        -0x24934c4d -> :sswitch_5
        0x14ef813b -> :sswitch_4
        0x36a9c826 -> :sswitch_3
        0x5216a3e0 -> :sswitch_2
        0x622b301a -> :sswitch_1
        0x6c6f014a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_live_right_side_shatter:I

    return v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    iget v1, p0, Lcom/tencent/tme/live/r0/a;->m:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/r0/a;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/tme/live/a1/a;->d()V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/chat/GameDataView;->b()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    new-instance v0, Lcom/tencent/tme/live/chat/ChatView;

    .line 1
    iget-object v1, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 2
    invoke-direct {v0, v1}, Lcom/tencent/tme/live/chat/ChatView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/a;->h:Lcom/tencent/tme/live/chat/ChatView;

    iget-object v1, p0, Lcom/tencent/tme/live/r0/a;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/tencent/tme/live/aov/ui/ScheduleView;

    .line 3
    iget-object v1, p0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 4
    invoke-direct {v0, v1}, Lcom/tencent/tme/live/aov/ui/ScheduleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/a;->i:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    iget-object v1, p0, Lcom/tencent/tme/live/r0/a;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->i:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/tme/live/r0/a;->h:Lcom/tencent/tme/live/chat/ChatView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/tme/live/r0/a;->i:Lcom/tencent/tme/live/aov/ui/ScheduleView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_chat_room:I

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/r0/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_schedule:I

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/r0/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/tme/live/r0/a$a;

    iget-object v1, p0, Lcom/tencent/tme/live/r0/a;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/tme/live/r0/a;->f:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/tme/live/r0/a$a;-><init>(Lcom/tencent/tme/live/r0/a;Ljava/util/List;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/tencent/tme/live/r0/a;->n:Lcom/tencent/tme/live/c1/c;

    sget-object v0, Lcom/tencent/tme/live/r0/a;->o:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/a1/a;->a([Ljava/lang/String;)V

    return-void
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/r0/a;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/r0/a;->j:Lcom/tencent/tme/live/chat/GameDataView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()V
    .locals 6

    invoke-virtual {p0}, Lcom/tencent/tme/live/w2/b;->a()Lcom/tencent/tme/live/w2/c;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$id;->content:I

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/w2/c;->a(I)Lcom/tencent/tme/live/w2/b;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/r0/c;

    if-eqz v0, :cond_2

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/r0/c;->E:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/tencent/tme/live/r0/c;->o:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/tencent/tme/live/r0/c;->G:Z

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x41100000    # 9.0f

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, v0, Lcom/tencent/tme/live/r0/c;->m:Lcom/tencent/tme/live/r0/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/tme/live/r0/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/tencent/tme/live/r0/c;->E:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/tme/live/r0/c;->o:Landroid/view/View;

    .line 4
    iget-object v4, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 5
    invoke-static {v4, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v4

    .line 6
    iget-object v5, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 7
    invoke-static {v5, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    .line 8
    iget-object v5, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 9
    invoke-static {v5, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v3

    .line 10
    iget-object v0, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    const/high16 v5, 0x41700000    # 15.0f

    .line 11
    invoke-static {v0, v5}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v0

    .line 12
    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    sget-object v0, Lcom/tencent/tme/live/chat/GameDataView;->b:Lcom/tencent/tme/live/w0/b;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/tencent/tme/live/w0/b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    sget-boolean v2, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/tme/live/y0/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/tencent/tme/live/r0/c;->E:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/tme/live/r0/c;->o:Landroid/view/View;

    .line 13
    iget-object v4, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 14
    invoke-static {v4, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v4

    .line 15
    iget-object v5, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 16
    invoke-static {v5, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    .line 17
    iget-object v5, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 18
    invoke-static {v5, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v3

    .line 19
    iget-object v0, v0, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    const/high16 v5, 0x420c0000    # 35.0f

    .line 20
    invoke-static {v0, v5}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v0

    .line 21
    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_0
    return-void
.end method
