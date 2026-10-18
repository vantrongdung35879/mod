.class public Lcom/tencent/tme/live/g/b;
.super Lcom/tencent/tme/live/h2/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/h2/c;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/z1/b;Lcom/tencent/tme/live/h2/h;)V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/tencent/tme/live/z1/b;->a([BII)Lcom/tencent/tme/live/z1/b;

    invoke-static {v0}, Lcom/tencent/tme/live/z1/b;->a(I)Lcom/tencent/tme/live/z1/b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/z1/b;->a([B)Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/b;->f()Lcom/tencent/tme/live/z1/b;

    invoke-interface {p1, p0}, Lcom/tencent/tme/live/h2/h;->write(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/z1/b;Lcom/tencent/tme/live/h2/h;)Z
    .locals 6

    sget-boolean p1, Lcom/tencent/tme/live/e/a;->c:Z

    const-string v0, "MinaDataDecoder"

    if-eqz p1, :cond_0

    const-string p1, "i\u5ba2\u6237\u7aef\u63a5\u6536\u5230\u7684\u4fe1\u606f\u4e3a:"

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v1, :cond_6

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result p1

    const/16 v3, 0x800

    if-le p1, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->m()Lcom/tencent/tme/live/z1/b;

    const/4 p1, 0x4

    .line 1
    new-array v3, p1, [B

    invoke-virtual {p2, v3, v2, p1}, Lcom/tencent/tme/live/z1/b;->a([BII)Lcom/tencent/tme/live/z1/b;

    invoke-static {v3}, Lcom/tencent/tme/live/s2/a;->a([B)I

    move-result v3

    .line 2
    const-string v4, "in.remaining is 2 : "

    invoke-static {v4}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "len is : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "position is : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->o()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v3, :cond_2

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->q()Lcom/tencent/tme/live/z1/b;

    invoke-static {p2, p3}, Lcom/tencent/tme/live/g/b;->a(Lcom/tencent/tme/live/z1/b;Lcom/tencent/tme/live/h2/h;)V

    return v2

    :cond_2
    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v4

    add-int/2addr v4, p1

    if-le v3, v4, :cond_4

    .line 3
    const-string p1, "getBeginFlag position : "

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->o()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [B

    invoke-virtual {p2, p1, v2, v1}, Lcom/tencent/tme/live/z1/b;->a([BII)Lcom/tencent/tme/live/z1/b;

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xe

    if-eq p1, v1, :cond_3

    .line 4
    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->q()Lcom/tencent/tme/live/z1/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "beginFlag is : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ; "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->o()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/tencent/tme/live/g/b;->a(Lcom/tencent/tme/live/z1/b;Lcom/tencent/tme/live/h2/h;)V

    return v2

    :cond_3
    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->q()Lcom/tencent/tme/live/z1/b;

    return v2

    :cond_4
    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->q()Lcom/tencent/tme/live/z1/b;

    new-array p1, v3, [B

    invoke-virtual {p2, p1, v2, v3}, Lcom/tencent/tme/live/z1/b;->a([BII)Lcom/tencent/tme/live/z1/b;

    invoke-static {v3}, Lcom/tencent/tme/live/z1/b;->a(I)Lcom/tencent/tme/live/z1/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/z1/b;->a([B)Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->f()Lcom/tencent/tme/live/z1/b;

    invoke-interface {p3, v0}, Lcom/tencent/tme/live/h2/h;->write(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result p1

    if-lez p1, :cond_5

    return v1

    :cond_5
    return v2

    :cond_6
    :goto_0
    const-string p1, "in.remaining is 1 : "

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/tencent/tme/live/g/b;->a(Lcom/tencent/tme/live/z1/b;Lcom/tencent/tme/live/h2/h;)V

    return v2
.end method
