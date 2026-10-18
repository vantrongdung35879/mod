.class Lcom/tencent/mna/h$e;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h;->c(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J


# direct methods
.method constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/mna/h$e;->a:I

    iput-object p2, p0, Lcom/tencent/mna/h$e;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tencent/mna/h$e;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string/jumbo v0, "storeGameInfo current:"

    .line 1
    iget v1, p0, Lcom/tencent/mna/h$e;->a:I

    const/16 v2, 0xca

    const-string v3, ", msg:"

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    :try_start_0
    sget-wide v1, Lcom/tencent/mna/t0;->g:J

    cmp-long v7, v1, v4

    if-nez v7, :cond_7

    .line 5
    iget-object v1, p0, Lcom/tencent/mna/h$e;->b:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v2, v1

    if-le v2, v6, :cond_0

    .line 8
    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-wide v4, p0, Lcom/tencent/mna/h$e;->c:J

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    sub-long/2addr v4, v1

    sput-wide v4, Lcom/tencent/mna/t0;->g:J

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/mna/h$e;->c:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", bornTime:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/tencent/mna/t0;->g:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/mna/h$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 15
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->BORN_TIME:Lcom/tencent/mna/base/report/a$a;

    sget-wide v2, Lcom/tencent/mna/t0;->g:J

    .line 16
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "storeGameInfo exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0xd7

    if-ne v1, v0, :cond_2

    .line 24
    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/tencent/mna/d;->M0()I

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/h$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mna/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0xd8

    if-ne v1, v0, :cond_3

    .line 28
    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/tencent/mna/d;->M0()I

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    invoke-static {}, Lcom/tencent/mna/h;->i()Lcom/tencent/mna/j;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/h$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mna/j;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0xdf

    const-string v2, ", by type:"

    if-ne v1, v0, :cond_5

    .line 33
    invoke-static {}, Lcom/tencent/mna/d;->L1()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    sget-object v0, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mna/h$e;->b:Ljava/lang/String;

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 38
    iget-object v0, p0, Lcom/tencent/mna/h$e;->b:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    array-length v1, v0

    if-le v1, v6, :cond_4

    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 40
    aget-object v0, v0, v6

    sput-object v0, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    .line 43
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "storeGameInfo set pvpid to:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/h$e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/h$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v0, 0xd2

    if-ne v1, v0, :cond_7

    .line 47
    invoke-static {}, Lcom/tencent/mna/h;->h()Lcom/tencent/mna/base/report/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->GAME_WIN:Lcom/tencent/mna/base/report/a$a;

    iget-object v3, p0, Lcom/tencent/mna/h$e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/tencent/mna/d;->L1()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    sget-wide v0, Lcom/tencent/mna/t0;->f:J

    cmp-long v3, v0, v4

    if-nez v3, :cond_6

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    .line 54
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "storeGameInfo clear pvpid to:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/h$e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
