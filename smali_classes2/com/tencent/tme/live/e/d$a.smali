.class public Lcom/tencent/tme/live/e/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/k/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/e/d;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/e/d;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/k/b$a;->a:Lcom/tencent/protocol/tme/conn/LoginRsp;

    const-string v1, "\u5efa\u7acb\u957f\u8fde\u63a5\u5931\u8d25"

    const-string v2, "MinaConnectControl"

    if-nez v0, :cond_1

    const-string p1, "ConnProxy loginRsp-->NULL"

    invoke-static {v2, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 3
    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->a:Lcom/tencent/tme/live/j/a;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Lcom/tencent/tme/live/e/f$a;

    invoke-virtual {p1, v1}, Lcom/tencent/tme/live/e/f$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "ConnProxy loginRsp-->"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 5
    iget-object v3, v3, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    .line 6
    iget-object v3, v3, Lcom/tencent/tme/live/k/b$a;->a:Lcom/tencent/protocol/tme/conn/LoginRsp;

    invoke-virtual {v3}, Lcom/squareup/tmes/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 7
    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    .line 8
    iget-object p1, p1, Lcom/tencent/tme/live/k/b$a;->a:Lcom/tencent/protocol/tme/conn/LoginRsp;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/LoginRsp;->result:Ljava/lang/Integer;

    const-string v0, ""

    if-eqz p1, :cond_6

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 16
    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    .line 17
    iget-object p1, p1, Lcom/tencent/tme/live/k/b$a;->a:Lcom/tencent/protocol/tme/conn/LoginRsp;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/LoginRsp;->result:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "ConnProxy--->"

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    :try_start_0
    invoke-static {v0}, Lcom/tencent/tme/live/l/c;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/tme/live/e/d;->a()V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    iget-object p1, p1, Lcom/tencent/tme/live/k/b$a;->a:Lcom/tencent/protocol/tme/conn/LoginRsp;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/LoginRsp;->result:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  \u8ba4\u8bc1\u8fc7\u671f\u4ee5\u6e38\u5ba2\u8eab\u4efd\u767b\u5f55"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {v2, p1, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 22
    const-string v0, "\u7968\u636e\u8fc7\u671f\u65f6\u91cd\u65b0auth exception : "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0, v2, v4}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 24
    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    .line 25
    iget-object p1, p1, Lcom/tencent/tme/live/k/b$a;->a:Lcom/tencent/protocol/tme/conn/LoginRsp;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/LoginRsp;->result:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    invoke-static {v5}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 26
    iget-object v0, v0, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    .line 27
    iget-object v0, v0, Lcom/tencent/tme/live/k/b$a;->a:Lcom/tencent/protocol/tme/conn/LoginRsp;

    iget-object v0, v0, Lcom/tencent/protocol/tme/conn/LoginRsp;->result:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  \u670d\u52a1\u5668\u6ee1\u8f7d\uff0c\u8fd4\u56de\u4e00\u6279\u65b0\u7684IP\u5730\u5740\uff0c\u91cd\u65b0\u5efa\u7acb\u957f\u8fde\u63a5"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {v2, p1, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    iget-object p1, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 30
    iget-object v0, p1, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    iget-object v0, v0, Lcom/tencent/tme/live/k/b$a;->a:Lcom/tencent/protocol/tme/conn/LoginRsp;

    iget-object v0, v0, Lcom/tencent/protocol/tme/conn/LoginRsp;->connsvr_ip:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    iget-object p1, p1, Lcom/tencent/tme/live/k/b$a;->a:Lcom/tencent/protocol/tme/conn/LoginRsp;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/LoginRsp;->connsvr_ip:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tme/live/s2/h;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connsvr_ip : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/tme/live/s2/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/tencent/tme/live/e/f;->b()Lcom/tencent/tme/live/e/f;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/e/f;->a(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 32
    const-string v0, "\u6ee1\u8f7d\u91cd\u8fde\u5931\u8d25 -->"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0, v2, v4}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 33
    :cond_5
    const-string p1, "ConnProxy--->  \u5efa\u7acb\u957f\u8fde\u63a5\u5931\u8d25"

    invoke-static {v2, p1, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    iget-object p1, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 35
    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->a:Lcom/tencent/tme/live/j/a;

    if-eqz p1, :cond_8

    .line 36
    check-cast p1, Lcom/tencent/tme/live/e/f$a;

    invoke-virtual {p1, v1}, Lcom/tencent/tme/live/e/f$a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_6
    :goto_1
    const-string p1, "[TME_NET_LINK]ConnProxy  success "

    invoke-static {v2, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v1

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/tencent/tme/live/f/d;->f:Z

    sget-object v1, Lcom/tencent/tme/live/e/a;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ConnProxy--->Account_type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  \u5efa\u7acb\u957f\u8fde\u63a5\u6210\u529f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->a:Lcom/tencent/tme/live/j/a;

    if-eqz p1, :cond_7

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "MinaConnectControl onSucc : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MinaManager"

    invoke-static {v1, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_7
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object p1

    const-string v1, "connLogin"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnProxy\u8bf7\u6c42\u5931\u8d25-->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1
    const-string v0, "MinaConnectControl"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 3
    iget v0, p1, Lcom/tencent/tme/live/e/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/tencent/tme/live/e/d;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/tencent/tme/live/e/d;->a()V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/e/d$a;->a:Lcom/tencent/tme/live/e/d;

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->a:Lcom/tencent/tme/live/j/a;

    if-eqz p1, :cond_1

    .line 6
    check-cast p1, Lcom/tencent/tme/live/e/f$a;

    const-string v0, "\u5efa\u7acb\u957f\u8fde\u63a5\u8d85\u65f6"

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/e/f$a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
