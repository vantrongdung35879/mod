.class public final Lcom/tencent/tme/live/d2/b$a;
.super Lcom/tencent/tme/live/c2/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/d2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field

.field public final j:J

.field public final k:Lcom/tencent/tme/live/f2/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tme/live/f2/o<",
            "+",
            "Lcom/tencent/tme/live/c2/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/d2/b;Ljava/lang/Object;Lcom/tencent/tme/live/f2/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Lcom/tencent/tme/live/f2/o<",
            "+",
            "Lcom/tencent/tme/live/c2/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/tme/live/c2/d;-><init>()V

    iput-object p2, p0, Lcom/tencent/tme/live/d2/b$a;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/tme/live/e2/b;->getConnectTimeoutMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/tencent/tme/live/d2/b$a;->j:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/tme/live/d2/b$a;->j:J

    :goto_0
    iput-object p3, p0, Lcom/tencent/tme/live/d2/b$a;->k:Lcom/tencent/tme/live/f2/o;

    return-void
.end method
