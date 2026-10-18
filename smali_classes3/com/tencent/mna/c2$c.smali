.class public Lcom/tencent/mna/c2$c;
.super Ljava/lang/Object;
.source "NetErrHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Z

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->c:J

    .line 6
    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->d:J

    .line 7
    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->e:J

    .line 8
    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->f:J

    .line 9
    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->g:J

    .line 10
    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->h:J

    .line 13
    iput-wide p1, p0, Lcom/tencent/mna/c2$c;->b:J

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/tencent/mna/c2$c;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mna/c2$c;Lcom/tencent/mna/c2$c;)V
    .locals 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->c:J

    .line 20
    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->d:J

    .line 21
    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->e:J

    .line 22
    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->f:J

    .line 23
    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->g:J

    .line 24
    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->h:J

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/tencent/mna/c2$c;->a:Z

    .line 34
    iget-wide v0, p1, Lcom/tencent/mna/c2$c;->b:J

    iget-wide v2, p2, Lcom/tencent/mna/c2$c;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->b:J

    .line 35
    iget-wide v0, p1, Lcom/tencent/mna/c2$c;->c:J

    iget-wide v2, p2, Lcom/tencent/mna/c2$c;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->c:J

    .line 36
    iget-wide v0, p1, Lcom/tencent/mna/c2$c;->d:J

    iget-wide v2, p2, Lcom/tencent/mna/c2$c;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->d:J

    .line 37
    iget-wide v0, p1, Lcom/tencent/mna/c2$c;->e:J

    iget-wide v2, p2, Lcom/tencent/mna/c2$c;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->e:J

    .line 38
    iget-wide v0, p1, Lcom/tencent/mna/c2$c;->f:J

    iget-wide v2, p2, Lcom/tencent/mna/c2$c;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->f:J

    .line 39
    iget-wide v0, p1, Lcom/tencent/mna/c2$c;->g:J

    iget-wide v2, p2, Lcom/tencent/mna/c2$c;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->g:J

    .line 40
    iget-wide v0, p1, Lcom/tencent/mna/c2$c;->h:J

    iget-wide p1, p2, Lcom/tencent/mna/c2$c;->h:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/mna/c2$c;->h:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnmpNetStat{isDif="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/mna/c2$c;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/mna/c2$c;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", noPorts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/mna/c2$c;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", inErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/mna/c2$c;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rcvbufErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/mna/c2$c;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sndbufErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/mna/c2$c;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", inDatagrams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/mna/c2$c;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", outDatagrams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/mna/c2$c;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
