.class public Lcom/tencent/tme/live/n/d;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/n/d;->a:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/n/d;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(J)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/n/d;->a:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/tencent/tme/live/n/d;->b:J

    iput-wide p1, p0, Lcom/tencent/tme/live/n/d;->a:J

    return-wide v0
.end method
