.class public abstract Lcom/tencent/qimei/ad/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJ)Z
    .locals 3

    const-wide/32 v0, 0x36ee80

    mul-long p2, p2, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    cmp-long p0, v0, p2

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
