.class public abstract Lcom/tencent/qimei/ap/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 4
    invoke-static {}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x1

    :goto_0
    sub-long/2addr v0, v2

    return-wide v0
.end method
