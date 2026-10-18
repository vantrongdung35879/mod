.class public Lcom/tencent/tme/live/a2/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/a2/b;


# instance fields
.field public final a:Ljava/nio/channels/FileChannel;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, p4, v0

    if-ltz v2, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/a2/a;->a:Ljava/nio/channels/FileChannel;

    iput-wide p2, p0, Lcom/tencent/tme/live/a2/a;->b:J

    iput-wide p4, p0, Lcom/tencent/tme/live/a2/a;->c:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "remainingBytes may not be less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "position may not be less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "channel can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/a2/a;->c:J

    return-wide v0
.end method

.method public a(J)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/a2/a;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/tme/live/a2/a;->b:J

    iget-wide v0, p0, Lcom/tencent/tme/live/a2/a;->c:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/tme/live/a2/a;->c:J

    return-void
.end method

.method public b()Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/a2/a;->a:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/tme/live/a2/a;->b:J

    return-wide v0
.end method
