.class public Lcom/tencent/tme/live/w0/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/w0/j$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w0/j$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/w0/j;->j:Z

    return-void
.end method

.method public static a(Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;)Lcom/tencent/tme/live/w0/j;
    .locals 15

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/tencent/tme/live/w0/j;

    invoke-direct {v0}, Lcom/tencent/tme/live/w0/j;-><init>()V

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->id:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tme/live/w0/j;->a:I

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->entry_pic:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    .line 2
    :cond_1
    iput-object v1, v0, Lcom/tencent/tme/live/w0/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->title:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tme/live/w0/j;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->ready_popup_background:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v1, v2

    .line 4
    :cond_2
    iput-object v1, v0, Lcom/tencent/tme/live/w0/j;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->taken_popup_background:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v1, v2

    .line 6
    :cond_3
    iput-object v1, v0, Lcom/tencent/tme/live/w0/j;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->deadline_button:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v2

    .line 8
    :cond_4
    iput-object v1, v0, Lcom/tencent/tme/live/w0/j;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->start_button:Ljava/lang/String;

    if-nez v1, :cond_5

    move-object v1, v2

    .line 10
    :cond_5
    iput-object v1, v0, Lcom/tencent/tme/live/w0/j;->h:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->timer:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v1

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    iput-wide v3, v0, Lcom/tencent/tme/live/w0/j;->i:J

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v1

    iget v1, v1, Lcom/tencent/tme/live/w0/d;->k:I

    int-to-long v3, v1

    mul-long v3, v3, v5

    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-gez v1, :cond_6

    const-wide/32 v3, 0xea60

    :cond_6
    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->sub_packet_group:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->first_package_delay:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_7

    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->timer:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v1

    int-to-long v10, v1

    mul-long v10, v10, v5

    add-long/2addr v7, v10

    :cond_7
    iget-object v1, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->sub_packet_group:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;

    if-nez v10, :cond_8

    goto :goto_0

    :cond_8
    new-instance v12, Lcom/tencent/tme/live/w0/j$a;

    invoke-direct {v12}, Lcom/tencent/tme/live/w0/j$a;-><init>()V

    iput v11, v12, Lcom/tencent/tme/live/w0/j$a;->a:I

    iput-wide v7, v12, Lcom/tencent/tme/live/w0/j$a;->b:J

    add-long v13, v7, v3

    iput-wide v13, v12, Lcom/tencent/tme/live/w0/j$a;->c:J

    iget-object v11, v10, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_wording:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    invoke-static {v11}, Lcom/tencent/tme/live/b1/j;->a(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/tencent/tme/live/w0/j$a;->d:Ljava/lang/String;

    iget-object v11, v10, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_pic:Ljava/lang/String;

    if-nez v11, :cond_9

    move-object v11, v2

    .line 12
    :cond_9
    iput-object v11, v12, Lcom/tencent/tme/live/w0/j$a;->e:Ljava/lang/String;

    iget-object v11, v10, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->type:Ljava/lang/Integer;

    invoke-static {v11}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v11

    iput v11, v12, Lcom/tencent/tme/live/w0/j$a;->f:I

    iget-object v11, v10, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->points:Ljava/lang/Integer;

    invoke-static {v11}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v11

    iput v11, v12, Lcom/tencent/tme/live/w0/j$a;->g:I

    iget-object v11, v10, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->num:Ljava/lang/Integer;

    invoke-static {v11}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v11

    iput v11, v12, Lcom/tencent/tme/live/w0/j$a;->h:I

    iget-object v10, v10, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->id:Ljava/lang/Integer;

    invoke-static {v10}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v10

    iput v10, v12, Lcom/tencent/tme/live/w0/j$a;->i:I

    iget-object v10, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->timer:Ljava/lang/Integer;

    invoke-static {v10}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result v10

    int-to-long v10, v10

    mul-long v10, v10, v5

    add-long/2addr v7, v10

    goto :goto_0

    :cond_a
    iget-object v1, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v9, :cond_b

    iget-object p0, p0, Lcom/tencent/protocol/tme/broadcastMsg/NewRedPacketNotify;->first_package_delay:Ljava/lang/Integer;

    invoke-static {p0}, Lcom/tencent/tme/live/b1/j;->a(Ljava/lang/Integer;)I

    move-result p0

    if-nez p0, :cond_b

    iget-object p0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/tme/live/w0/j$a;

    iput v9, p0, Lcom/tencent/tme/live/w0/j$a;->a:I

    :cond_b
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
