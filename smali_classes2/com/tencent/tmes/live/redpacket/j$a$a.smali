.class public Lcom/tencent/tmes/live/redpacket/j$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/v0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmes/live/redpacket/j$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/v0/g<",
        "Lcom/tencent/tmes/live/redpacket/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tmes/live/redpacket/j$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a$a;->a:Lcom/tencent/tmes/live/redpacket/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 12

    check-cast p1, Lcom/tencent/tmes/live/redpacket/d$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget v1, p1, Lcom/tencent/tmes/live/redpacket/d$a;->a:I

    const/16 v2, 0x12f

    if-ne v1, v2, :cond_2

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a$a;->a:Lcom/tencent/tmes/live/redpacket/j$a;

    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j$a;->a:Lcom/tencent/tmes/live/redpacket/PackageViewHost;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b()V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a$a;->a:Lcom/tencent/tmes/live/redpacket/j$a;

    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j$a;->c:Lcom/tencent/tmes/live/redpacket/j;

    .line 2
    iget-object v1, p1, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    if-eqz p1, :cond_1

    .line 4
    iget v1, v1, Lcom/tencent/tme/live/w0/j;->a:I

    iget p1, p1, Lcom/tencent/tme/live/w0/j$a;->i:I

    sget-boolean v2, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {v1, p1, v2, v0}, Lcom/tencent/tme/live/y0/a;->a(IIZZ)V

    :cond_1
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a$a;->a:Lcom/tencent/tmes/live/redpacket/j$a;

    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j$a;->c:Lcom/tencent/tmes/live/redpacket/j;

    .line 5
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    if-eqz p1, :cond_15

    const/4 v0, 0x2

    .line 6
    iput v0, p1, Lcom/tencent/tme/live/w0/j$a;->a:I

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p1, :cond_5

    iget v3, p1, Lcom/tencent/tmes/live/redpacket/d$a;->a:I

    const/16 v4, 0x130

    if-ne v3, v4, :cond_5

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a$a;->a:Lcom/tencent/tmes/live/redpacket/j$a;

    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j$a;->a:Lcom/tencent/tmes/live/redpacket/PackageViewHost;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->c()V

    :cond_3
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a$a;->a:Lcom/tencent/tmes/live/redpacket/j$a;

    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j$a;->c:Lcom/tencent/tmes/live/redpacket/j;

    .line 7
    iget-object v0, p1, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    if-eqz v0, :cond_4

    .line 8
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    if-eqz p1, :cond_4

    .line 9
    iget v0, v0, Lcom/tencent/tme/live/w0/j;->a:I

    iget p1, p1, Lcom/tencent/tme/live/w0/j$a;->i:I

    sget-boolean v3, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {v0, p1, v3, v1}, Lcom/tencent/tme/live/y0/a;->a(IIZZ)V

    :cond_4
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a$a;->a:Lcom/tencent/tmes/live/redpacket/j$a;

    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j$a;->c:Lcom/tencent/tmes/live/redpacket/j;

    .line 10
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    if-eqz p1, :cond_15

    .line 11
    iput v2, p1, Lcom/tencent/tme/live/w0/j$a;->a:I

    goto/16 :goto_3

    :cond_5
    if-eqz p1, :cond_13

    iget-object v3, p1, Lcom/tencent/tmes/live/redpacket/d$a;->b:Ljava/util/List;

    if-eqz v3, :cond_13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Lcom/tencent/tmes/live/redpacket/j$a$a;->a:Lcom/tencent/tmes/live/redpacket/j$a;

    iget-object v3, v3, Lcom/tencent/tmes/live/redpacket/j$a;->c:Lcom/tencent/tmes/live/redpacket/j;

    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/d$a;->b:Ljava/util/List;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const-string v5, "TimerPacketViewHolder"

    if-nez p1, :cond_7

    .line 13
    const-string p1, "syncPacketStatus list null"

    invoke-static {v5, p1, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 14
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_8

    .line 15
    const-string p1, "syncPacketStatus size null"

    invoke-static {v5, p1, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 16
    :cond_8
    iget-object v6, v3, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    if-nez v6, :cond_9

    .line 17
    const-string p1, "syncPacketStatus subPacketBean null"

    invoke-static {v5, p1, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 18
    :cond_9
    iget-object v6, v3, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    if-nez v6, :cond_a

    .line 19
    const-string p1, "syncPacketStatus packetListBean null"

    invoke-static {v5, p1, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 20
    :cond_a
    iget-object v6, v6, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    if-nez v6, :cond_b

    .line 21
    const-string p1, "syncPacketStatus packetListBean.subPackets null"

    invoke-static {v5, p1, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 22
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tme/live/w0/j$a;

    iget v7, v6, Lcom/tencent/tme/live/w0/j$a;->i:I

    iget-object v8, v3, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    iget v9, v8, Lcom/tencent/tme/live/w0/j$a;->i:I

    const-string v10, ", id:"

    if-ne v7, v9, :cond_10

    iget v7, v6, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-ne v7, v2, :cond_e

    iget v7, v8, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-eq v7, v2, :cond_e

    const-string v7, "grabbed packed , id:"

    invoke-static {v7}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    iget v8, v8, Lcom/tencent/tme/live/w0/j$a;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, Lcom/tencent/tmes/live/redpacket/j;->o:Lcom/tencent/tmes/live/redpacket/PackageViewHost;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->c()V

    :cond_d
    iget-object v7, v3, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    if-eqz v7, :cond_10

    iget-object v8, v3, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    if-eqz v8, :cond_10

    iget v7, v7, Lcom/tencent/tme/live/w0/j;->a:I

    iget v8, v8, Lcom/tencent/tme/live/w0/j$a;->i:I

    sget-boolean v9, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {v7, v8, v9, v1}, Lcom/tencent/tme/live/y0/a;->a(IIZZ)V

    goto :goto_0

    :cond_e
    iget-object v7, v3, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    if-eqz v7, :cond_f

    iget v7, v7, Lcom/tencent/tme/live/w0/j;->a:I

    sget-boolean v8, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {v7, v9, v8, v0}, Lcom/tencent/tme/live/y0/a;->a(IIZZ)V

    :cond_f
    iget-object v7, v3, Lcom/tencent/tmes/live/redpacket/j;->a:Landroid/view/View;

    sget v8, Lcom/tencent/tme/live/biz/R$string;->tme_receive_failed:I

    invoke-static {v7, v8}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/tme/live/b1/r;->a(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "grab packet failed subPacket.status:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v6, Lcom/tencent/tme/live/w0/j$a;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/tencent/tme/live/w0/j$a;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-static {v5, v7, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :cond_10
    :goto_0
    iget-object v7, v3, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    iget-object v7, v7, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/tme/live/w0/j$a;

    if-nez v8, :cond_12

    goto :goto_1

    :cond_12
    iget v9, v6, Lcom/tencent/tme/live/w0/j$a;->i:I

    iget v11, v8, Lcom/tencent/tme/live/w0/j$a;->i:I

    if-ne v9, v11, :cond_11

    iget v9, v6, Lcom/tencent/tme/live/w0/j$a;->a:I

    iget v11, v8, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-eq v9, v11, :cond_11

    const-string v9, "syncPacketStatus subPacket.status:"

    invoke-static {v9}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v6, Lcom/tencent/tme/live/w0/j$a;->a:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/tencent/tme/live/w0/j$a;->i:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", subPacketOld.status:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/tencent/tme/live/w0/j$a;->a:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v9, v6, Lcom/tencent/tme/live/w0/j$a;->a:I

    iput v9, v8, Lcom/tencent/tme/live/w0/j$a;->a:I

    goto :goto_1

    .line 25
    :cond_13
    :goto_2
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a$a;->a:Lcom/tencent/tmes/live/redpacket/j$a;

    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j$a;->c:Lcom/tencent/tmes/live/redpacket/j;

    .line 26
    iget-object v1, p1, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    if-eqz v1, :cond_14

    .line 27
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    if-eqz p1, :cond_14

    .line 28
    iget v1, v1, Lcom/tencent/tme/live/w0/j;->a:I

    iget p1, p1, Lcom/tencent/tme/live/w0/j$a;->i:I

    sget-boolean v2, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {v1, p1, v2, v0}, Lcom/tencent/tme/live/y0/a;->a(IIZZ)V

    :cond_14
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a$a;->a:Lcom/tencent/tmes/live/redpacket/j$a;

    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j$a;->b:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$string;->tme_redpacket_receive_failed:I

    invoke-static {p1, v0}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/b1/r;->a(Ljava/lang/String;)V

    :cond_15
    :goto_3
    return-void
.end method
