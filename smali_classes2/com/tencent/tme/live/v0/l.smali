.class public Lcom/tencent/tme/live/v0/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "live_danmu_alpha"

    if-le p0, v0, :cond_0

    invoke-static {v1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/tme/live/b1/l;->a(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tencent/tme/live/b1/l;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->c()Lcom/tencent/tme/live/framework/common/b;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/tme/live/framework/common/b;->x:Ljava/lang/String;

    iget v2, v0, Lcom/tencent/tme/live/framework/common/b;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tme/live/framework/common/b;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/tme/live/framework/common/b;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/tme/live/framework/common/b;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tme/live/framework/common/b;->g:Ljava/lang/String;

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    const/4 v1, 0x5

    aput-object v0, v6, v1

    const/4 v0, 0x6

    aput-object p0, v6, v0

    const-string p0, "%s_%d_%s_%s_%s_%s_%s"

    invoke-static {p0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "live_danmu_show_type"

    if-le p0, v0, :cond_0

    invoke-static {v1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/tme/live/b1/l;->a(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tencent/tme/live/b1/l;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static c(I)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "live_danmu_size"

    if-le p0, v0, :cond_0

    invoke-static {v1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/tme/live/b1/l;->a(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v1}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tencent/tme/live/b1/l;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static d(I)V
    .locals 1

    const-string v0, "reward_count_time"

    invoke-static {v0}, Lcom/tencent/tme/live/v0/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/tme/live/b1/l;->b(Ljava/lang/String;I)V

    return-void
.end method
