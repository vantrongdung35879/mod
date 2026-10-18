.class public abstract Lcom/tencent/tme/live/q2/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/tencent/tme/live/p2/o;

.field public c:Lcom/tencent/tme/live/q2/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/q2/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/tme/live/q2/e;->b:Lcom/tencent/tme/live/p2/o;

    invoke-static {p1}, Lcom/tencent/tme/live/q2/b;->a(Ljava/lang/String;)Z

    invoke-static {p1}, Lcom/tencent/tme/live/q2/b;->b(Ljava/lang/String;)Z

    invoke-static {p1}, Lcom/tencent/tme/live/q2/b;->c(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/tencent/tme/live/q2/c;)V
.end method

.method public abstract a()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "chunk id= "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/q2/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-object v1, p0, Lcom/tencent/tme/live/q2/e;->c:Lcom/tencent/tme/live/q2/c;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/tencent/tme/live/q2/c;->a:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/tencent/tme/live/q2/e;->c:Lcom/tencent/tme/live/q2/c;

    if-eqz v1, :cond_1

    .line 4
    iget-wide v1, v1, Lcom/tencent/tme/live/q2/c;->e:J

    goto :goto_1

    :cond_1
    const-wide/16 v1, -0x1

    .line 5
    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
