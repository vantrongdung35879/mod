.class public Lcom/tencent/tme/live/o1/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/tencent/tme/live/w0/k;

.field public final synthetic c:Lcom/tencent/tme/live/o1/l;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o1/l;Ljava/lang/Object;Lcom/tencent/tme/live/w0/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/o1/k;->c:Lcom/tencent/tme/live/o1/l;

    iput-object p2, p0, Lcom/tencent/tme/live/o1/k;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/tencent/tme/live/o1/k;->b:Lcom/tencent/tme/live/w0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/tme/live/o1/k;->c:Lcom/tencent/tme/live/o1/l;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/l;->c:Lcom/tencent/tme/live/o1/m;

    iget-object v1, p0, Lcom/tencent/tme/live/o1/k;->a:Ljava/lang/Object;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 3
    :goto_1
    iget-object v1, p0, Lcom/tencent/tme/live/o1/k;->c:Lcom/tencent/tme/live/o1/l;

    iget-object v2, v1, Lcom/tencent/tme/live/o1/l;->c:Lcom/tencent/tme/live/o1/m;

    .line 4
    iget-object v3, v2, Lcom/tencent/tme/live/o1/m;->d:Lcom/tencent/tme/live/o1/d;

    if-nez v3, :cond_2

    .line 5
    iget-object v1, v2, Lcom/tencent/tme/live/o1/m;->b:Lcom/tencent/tme/live/o1/n;

    .line 6
    invoke-virtual {v1}, Lcom/tencent/tme/live/o1/n;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryQuestionTask, callback is null, errCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/tencent/tme/live/o1/k;->b:Lcom/tencent/tme/live/w0/k;

    const/4 v4, 0x0

    if-nez v3, :cond_7

    .line 7
    iget-object v2, v2, Lcom/tencent/tme/live/o1/m;->b:Lcom/tencent/tme/live/o1/n;

    if-eqz v2, :cond_6

    .line 8
    iget-object v3, v1, Lcom/tencent/tme/live/o1/l;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/tme/live/o1/l;->b:Ljava/lang/String;

    .line 9
    iget v5, v2, Lcom/tencent/tme/live/o1/n;->c:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_6

    .line 10
    iget-object v5, v2, Lcom/tencent/tme/live/o1/n;->b:Lcom/tencent/tme/live/o1/n$a;

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v5

    iget-object v6, v2, Lcom/tencent/tme/live/o1/n;->b:Lcom/tencent/tme/live/o1/n$a;

    .line 11
    invoke-virtual {v5}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    :cond_3
    iget v5, v2, Lcom/tencent/tme/live/o1/n;->c:I

    if-nez v5, :cond_4

    const/16 v4, 0xbb8

    :cond_4
    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    const/16 v4, 0x2328

    :cond_5
    new-instance v5, Lcom/tencent/tme/live/o1/n$a;

    invoke-direct {v5, v2, v3, v1}, Lcom/tencent/tme/live/o1/n$a;-><init>(Lcom/tencent/tme/live/o1/n;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v2, Lcom/tencent/tme/live/o1/n;->b:Lcom/tencent/tme/live/o1/n$a;

    invoke-static {}, Lcom/tencent/tme/live/r2/a;->b()Lcom/tencent/tme/live/r2/a;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tme/live/o1/n;->b:Lcom/tencent/tme/live/o1/n$a;

    int-to-long v4, v4

    .line 13
    invoke-virtual {v1}, Lcom/tencent/tme/live/r2/a;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    iget v1, v2, Lcom/tencent/tme/live/o1/n;->c:I

    add-int/2addr v1, v6

    iput v1, v2, Lcom/tencent/tme/live/o1/n;->c:I

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryLatestQuestion retry, errCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/tencent/tme/live/o1/k;->c:Lcom/tencent/tme/live/o1/l;

    iget-object v1, v1, Lcom/tencent/tme/live/o1/l;->c:Lcom/tencent/tme/live/o1/m;

    .line 16
    iget-object v1, v1, Lcom/tencent/tme/live/o1/m;->d:Lcom/tencent/tme/live/o1/d;

    .line 17
    check-cast v1, Lcom/tencent/tme/live/m1/a$a;

    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/m1/a$a;->a(I)V

    return-void

    .line 18
    :cond_7
    iget-object v0, v2, Lcom/tencent/tme/live/o1/m;->b:Lcom/tencent/tme/live/o1/n;

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {v0}, Lcom/tencent/tme/live/o1/n;->a()V

    :cond_8
    iget-object v0, p0, Lcom/tencent/tme/live/o1/k;->b:Lcom/tencent/tme/live/w0/k;

    if-eqz v0, :cond_9

    .line 20
    iget-object v0, v0, Lcom/tencent/tme/live/w0/k;->b:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/tme/live/o1/k;->c:Lcom/tencent/tme/live/o1/l;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "has no questionInfo"

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/o1/k;->c:Lcom/tencent/tme/live/o1/l;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/l;->c:Lcom/tencent/tme/live/o1/m;

    .line 22
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->d:Lcom/tencent/tme/live/o1/d;

    .line 23
    check-cast v0, Lcom/tencent/tme/live/m1/a$a;

    invoke-virtual {v0, v4}, Lcom/tencent/tme/live/m1/a$a;->a(I)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/tencent/tme/live/o1/k;->b:Lcom/tencent/tme/live/w0/k;

    invoke-virtual {v0}, Lcom/tencent/tme/live/w0/k;->b()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "recv exception quesiton info:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/o1/k;->b:Lcom/tencent/tme/live/w0/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/o1/k;->c:Lcom/tencent/tme/live/o1/l;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/l;->c:Lcom/tencent/tme/live/o1/m;

    .line 24
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->d:Lcom/tencent/tme/live/o1/d;

    .line 25
    check-cast v0, Lcom/tencent/tme/live/m1/a$a;

    invoke-virtual {v0, v4}, Lcom/tencent/tme/live/m1/a$a;->a(I)V

    return-void

    :cond_a
    const-string v0, "recv new quesiton info:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/o1/k;->b:Lcom/tencent/tme/live/w0/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/o1/k;->c:Lcom/tencent/tme/live/o1/l;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/l;->c:Lcom/tencent/tme/live/o1/m;

    .line 26
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->a:Lcom/tencent/tme/live/o1/f;

    if-eqz v0, :cond_b

    .line 27
    sget v1, Lcom/tencent/tme/live/w0/k;->i:I

    .line 28
    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/o1/f;->a(I)V

    :cond_b
    iget-object v0, p0, Lcom/tencent/tme/live/o1/k;->c:Lcom/tencent/tme/live/o1/l;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/l;->c:Lcom/tencent/tme/live/o1/m;

    .line 29
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->d:Lcom/tencent/tme/live/o1/d;

    .line 30
    iget-object v1, p0, Lcom/tencent/tme/live/o1/k;->b:Lcom/tencent/tme/live/w0/k;

    check-cast v0, Lcom/tencent/tme/live/m1/a$a;

    .line 31
    iget-object v0, v0, Lcom/tencent/tme/live/m1/a$a;->a:Lcom/tencent/tme/live/m1/a;

    .line 32
    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/m1/a;->a(Lcom/tencent/tme/live/w0/k;)V

    return-void
.end method
