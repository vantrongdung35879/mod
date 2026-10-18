.class Lcom/tencent/mna/m2$a;
.super Ljava/lang/Object;
.source "QosHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/m2;->a(Lcom/tencent/mna/o1;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/o1;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/mna/o1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/m2$a;->a:Lcom/tencent/mna/o1;

    iput-object p2, p0, Lcom/tencent/mna/m2$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "[N]4G_QOS errCode:"

    const-string v1, "req failed, for curDelay["

    const-string v2, "req failed, for remote QosModel judge not equal to 1\uff0cres:"

    .line 1
    invoke-static {}, Lcom/tencent/mna/m2;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5
    :try_start_0
    invoke-static {v3}, Lcom/tencent/mna/m2;->a(Z)Z

    .line 7
    invoke-static {}, Lcom/tencent/mna/m2;->b()Lcom/tencent/mna/s2;

    move-result-object v5

    if-nez v5, :cond_1

    .line 8
    iget-object v5, p0, Lcom/tencent/mna/m2$a;->a:Lcom/tencent/mna/o1;

    invoke-static {v5}, Lcom/tencent/mna/m2;->a(Lcom/tencent/mna/o1;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 48
    invoke-static {v4}, Lcom/tencent/mna/m2;->a(Z)Z

    return-void

    .line 49
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/mna/m2;->b()Lcom/tencent/mna/s2;

    move-result-object v5

    iget v5, v5, Lcom/tencent/mna/s2;->m:I

    sput v5, Lcom/tencent/mna/m2;->o:I

    .line 51
    invoke-static {}, Lcom/tencent/mna/m2;->b()Lcom/tencent/mna/s2;

    move-result-object v5

    iget v5, v5, Lcom/tencent/mna/s2;->h:I

    if-ne v5, v3, :cond_2

    .line 52
    invoke-static {}, Lcom/tencent/mna/m2;->b()Lcom/tencent/mna/s2;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/mna/s2;->k:Ljava/lang/String;

    sput-object v5, Lcom/tencent/mna/m2;->n:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_2
    const-string v5, "0"

    sput-object v5, Lcom/tencent/mna/m2;->n:Ljava/lang/String;

    .line 57
    :goto_0
    invoke-static {}, Lcom/tencent/mna/m2;->b()Lcom/tencent/mna/s2;

    move-result-object v5

    iget v5, v5, Lcom/tencent/mna/s2;->m:I

    if-gez v5, :cond_3

    .line 59
    invoke-static {}, Lcom/tencent/mna/m2;->b()Lcom/tencent/mna/s2;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mna/m2$a;->a:Lcom/tencent/mna/o1;

    iget v5, v3, Lcom/tencent/mna/o1;->k:I

    iget v3, v3, Lcom/tencent/mna/o1;->m:I

    invoke-static {v2, v5, v3}, Lcom/tencent/mna/m2;->a(Lcom/tencent/mna/s2;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 60
    sput v4, Lcom/tencent/mna/m2;->m:I

    const/4 v0, -0x2

    .line 61
    sput v0, Lcom/tencent/mna/m2;->l:I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/m2$a;->a:Lcom/tencent/mna/o1;

    iget v1, v1, Lcom/tencent/mna/o1;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] less than ensureAdj1["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/m2;->b()Lcom/tencent/mna/s2;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mna/s2;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], or larger than ensureAdj2["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {}, Lcom/tencent/mna/m2;->b()Lcom/tencent/mna/s2;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mna/s2;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/tencent/mna/m2;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-static {v4}, Lcom/tencent/mna/m2;->a(Z)Z

    return-void

    .line 87
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/tencent/mna/m2;->b()Lcom/tencent/mna/s2;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mna/s2;->m:I

    if-eq v1, v3, :cond_4

    const/16 v0, -0x9

    .line 88
    sput v0, Lcom/tencent/mna/m2;->l:I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mna/m2;->b()Lcom/tencent/mna/s2;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mna/s2;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/m2;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    invoke-static {v4}, Lcom/tencent/mna/m2;->a(Z)Z

    return-void

    .line 104
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/tencent/mna/m2;->b()Lcom/tencent/mna/s2;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mna/s2;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 105
    invoke-static {}, Lcom/tencent/mna/m2;->e()Z

    .line 107
    :cond_5
    iget-object v1, p0, Lcom/tencent/mna/m2$a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/mna/m2$a;->a:Lcom/tencent/mna/o1;

    iget-boolean v2, v2, Lcom/tencent/mna/o1;->a:Z

    invoke-static {v1, v2}, Lcom/tencent/mna/m2;->a(Ljava/util/List;Z)Z

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/tencent/mna/m2;->l:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/m2;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :catchall_0
    invoke-static {v4}, Lcom/tencent/mna/m2;->a(Z)Z

    return-void
.end method
