.class public Lcom/tencent/tme/live/b1/i;
.super Ljava/lang/Object;


# static fields
.field public static a:J

.field public static b:J


# direct methods
.method public static a()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/tme/live/b1/i;->a:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-wide v0, Lcom/tencent/tme/live/b1/i;->a:J

    return v2
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 9

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tme/live/w0/d;->n:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    sget-wide v5, Lcom/tencent/tme/live/b1/i;->b:J

    sub-long v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-gtz v8, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    long-to-int v5, v3

    div-int/lit16 v5, v5, 0x3e8

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "isSendFrequently:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",diff:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",lastClickTime:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/tencent/tme/live/b1/i;->a:J

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",currentTime:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "->periodSecond:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;)V

    if-lez v5, :cond_1

    new-instance v0, Lcom/tencent/tme/live/w0/q;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_chat_frequently:I

    invoke-direct {v0, p0, v1}, Lcom/tencent/tme/live/w0/q;-><init>(Landroid/content/Context;I)V

    .line 1
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object p0

    const-string v1, "showTipOnVideoCenter"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v7

    .line 2
    :cond_1
    sput-wide v1, Lcom/tencent/tme/live/b1/i;->b:J

    const/4 p0, 0x1

    return p0
.end method
