.class public Lcom/tencent/tme/live/o1/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/w0/k;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/tencent/tme/live/o1/j;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/o1/j;Lcom/tencent/tme/live/w0/k;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/o1/i;->c:Lcom/tencent/tme/live/o1/j;

    iput-object p2, p0, Lcom/tencent/tme/live/o1/i;->a:Lcom/tencent/tme/live/w0/k;

    iput-object p3, p0, Lcom/tencent/tme/live/o1/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/o1/i;->c:Lcom/tencent/tme/live/o1/j;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/j;->a:Lcom/tencent/tme/live/o1/m;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->d:Lcom/tencent/tme/live/o1/d;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "queryQuestionTask, callback is null"

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/o1/i;->a:Lcom/tencent/tme/live/w0/k;

    if-nez v0, :cond_4

    const-string v0, "queryQuestionTask failed, obj:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/o1/i;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "OptionRequestSenderImpl"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/tme/live/o1/i;->c:Lcom/tencent/tme/live/o1/j;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/j;->a:Lcom/tencent/tme/live/o1/m;

    iget-object v1, p0, Lcom/tencent/tme/live/o1/i;->b:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 7
    :goto_1
    iget-object v1, p0, Lcom/tencent/tme/live/o1/i;->c:Lcom/tencent/tme/live/o1/j;

    iget-object v1, v1, Lcom/tencent/tme/live/o1/j;->a:Lcom/tencent/tme/live/o1/m;

    .line 8
    iget-object v1, v1, Lcom/tencent/tme/live/o1/m;->d:Lcom/tencent/tme/live/o1/d;

    .line 9
    check-cast v1, Lcom/tencent/tme/live/m1/a$a;

    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/m1/a$a;->a(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/o1/i;->c:Lcom/tencent/tme/live/o1/j;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/j;->a:Lcom/tencent/tme/live/o1/m;

    .line 10
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->a:Lcom/tencent/tme/live/o1/f;

    if-eqz v0, :cond_3

    .line 11
    sget v1, Lcom/tencent/tme/live/w0/k;->i:I

    .line 12
    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/o1/f;->a(I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/tme/live/w0/k;->b()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "recv exception quesiton info:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/o1/i;->a:Lcom/tencent/tme/live/w0/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/o1/i;->c:Lcom/tencent/tme/live/o1/j;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/j;->a:Lcom/tencent/tme/live/o1/m;

    .line 13
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->d:Lcom/tencent/tme/live/o1/d;

    .line 14
    check-cast v0, Lcom/tencent/tme/live/m1/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/m1/a$a;->a(I)V

    iget-object v0, p0, Lcom/tencent/tme/live/o1/i;->c:Lcom/tencent/tme/live/o1/j;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/j;->a:Lcom/tencent/tme/live/o1/m;

    .line 15
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->a:Lcom/tencent/tme/live/o1/f;

    .line 16
    sget v1, Lcom/tencent/tme/live/w0/k;->i:I

    .line 17
    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/o1/f;->a(I)V

    return-void

    :cond_5
    const-string v0, "recv new quesiton info:"

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/o1/i;->a:Lcom/tencent/tme/live/w0/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/o1/i;->c:Lcom/tencent/tme/live/o1/j;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/j;->a:Lcom/tencent/tme/live/o1/m;

    .line 18
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->a:Lcom/tencent/tme/live/o1/f;

    if-eqz v0, :cond_6

    .line 19
    sget v1, Lcom/tencent/tme/live/w0/k;->i:I

    .line 20
    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/o1/f;->a(I)V

    :cond_6
    iget-object v0, p0, Lcom/tencent/tme/live/o1/i;->c:Lcom/tencent/tme/live/o1/j;

    iget-object v0, v0, Lcom/tencent/tme/live/o1/j;->a:Lcom/tencent/tme/live/o1/m;

    .line 21
    iget-object v0, v0, Lcom/tencent/tme/live/o1/m;->d:Lcom/tencent/tme/live/o1/d;

    .line 22
    iget-object v1, p0, Lcom/tencent/tme/live/o1/i;->a:Lcom/tencent/tme/live/w0/k;

    check-cast v0, Lcom/tencent/tme/live/m1/a$a;

    .line 23
    iget-object v0, v0, Lcom/tencent/tme/live/m1/a$a;->a:Lcom/tencent/tme/live/m1/a;

    .line 24
    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/m1/a;->a(Lcom/tencent/tme/live/w0/k;)V

    return-void
.end method
