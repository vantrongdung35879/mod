.class public Lcom/tencent/tme/live/q2/i;
.super Lcom/tencent/tme/live/q2/r;


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:B

.field public k:B


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "fcTL"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/r;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 2

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->c([BI)I

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->c([BI)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/q2/i;->d:I

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->c([BI)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/q2/i;->e:I

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->c([BI)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/q2/i;->f:I

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->c([BI)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/q2/i;->g:I

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/q2/i;->h:I

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/q2/i;->i:I

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/16 v0, 0x18

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/tencent/tme/live/q2/i;->j:B

    const/16 v0, 0x19

    aget-byte p1, p1, v0

    iput-byte p1, p0, Lcom/tencent/tme/live/q2/i;->k:B

    return-void
.end method
