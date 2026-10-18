.class public Lcom/tencent/tme/live/p2/d$a;
.super Lcom/tencent/tme/live/p2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/p2/d;->a(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lcom/tencent/tme/live/p2/d;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/d;ILjava/lang/String;ZJLcom/tencent/tme/live/p2/i;)V
    .locals 6

    iput-object p1, p0, Lcom/tencent/tme/live/p2/d$a;->k:Lcom/tencent/tme/live/p2/d;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-wide v3, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tme/live/p2/g;-><init>(ILjava/lang/String;JLcom/tencent/tme/live/p2/i;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/tencent/tme/live/p2/g;->h:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    const-string v1, "fdAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/tme/live/p2/g;->j:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/g;->i:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->c([BI)I

    move-result v0

    iget v1, p0, Lcom/tencent/tme/live/p2/g;->j:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/tme/live/p2/x;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad chunk sequence for fDAT chunk "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " expected "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/tme/live/p2/g;->j:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/p2/d$a;->k:Lcom/tencent/tme/live/p2/d;

    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/p2/d;->a(Lcom/tencent/tme/live/p2/c;)V

    return-void
.end method
