.class public Lcom/tencent/tme/live/k/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/x1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/k/e;->a(Lcom/tencent/tme/live/k/e$b;Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/k/e$b;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Lcom/tencent/tme/live/k/e;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/k/e;Lcom/tencent/tme/live/k/e$b;Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/k/e$a;->d:Lcom/tencent/tme/live/k/e;

    iput-object p2, p0, Lcom/tencent/tme/live/k/e$a;->a:Lcom/tencent/tme/live/k/e$b;

    iput-object p3, p0, Lcom/tencent/tme/live/k/e$a;->b:Ljava/lang/Object;

    iput p4, p0, Lcom/tencent/tme/live/k/e$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/w1/c;)V
    .locals 3

    .line 3
    const-string p1, "NetProxy"

    const-string v0, "onTimeout....."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    sget-object v0, Lcom/tencent/tme/live/e/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/tencent/tme/live/s2/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tencent/tme/live/k/e$a;->c:I

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/k/e$a;->d:Lcom/tencent/tme/live/k/e;

    iget-object v0, p0, Lcom/tencent/tme/live/k/e$a;->a:Lcom/tencent/tme/live/k/e$b;

    iget-object v1, p0, Lcom/tencent/tme/live/k/e$a;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/tme/live/k/e;->a(Lcom/tencent/tme/live/k/e$b;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/k/e$a;->a:Lcom/tencent/tme/live/k/e$b;

    const/4 v2, -0x2

    invoke-interface {v0, v2}, Lcom/tencent/tme/live/k/e$b;->b(I)V

    const-string v0, "reConnectSocket....."

    .line 5
    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-static {}, Lcom/tencent/tme/live/e/f;->b()Lcom/tencent/tme/live/e/f;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Lcom/tencent/tme/live/e/f;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/tencent/tme/live/k/e$a;->a:Lcom/tencent/tme/live/k/e$b;

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/k/e$b;->b(I)V

    :goto_0
    return-void
.end method

.method public a(Lcom/tencent/tme/live/w1/c;Lcom/tencent/tme/live/w1/b;)V
    .locals 2

    if-eqz p2, :cond_1

    iget p1, p2, Lcom/tencent/tme/live/w1/b;->h:I

    const-string v0, "NetProxy"

    if-nez p1, :cond_0

    const-string p1, "onMessage getCmd() = "

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/tme/live/k/e$a;->d:Lcom/tencent/tme/live/k/e;

    invoke-virtual {v1}, Lcom/tencent/tme/live/k/e;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getSubcmd() = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/k/e$a;->d:Lcom/tencent/tme/live/k/e;

    invoke-virtual {v1}, Lcom/tencent/tme/live/k/e;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg.sequenceNumber = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/tencent/tme/live/w1/b;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/tencent/tme/live/k/e$a;->d:Lcom/tencent/tme/live/k/e;

    iget-object v0, p0, Lcom/tencent/tme/live/k/e$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/tencent/tme/live/k/e;->a(Lcom/tencent/tme/live/w1/b;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/k/e$a;->a:Lcom/tencent/tme/live/k/e$b;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/k/e$b;->a(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/k/e$a;->a:Lcom/tencent/tme/live/k/e$b;

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lcom/tencent/tme/live/k/e$b;->b(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "NetProxy--\u7f51\u7edc\u8bbf\u95ee\u8fd4\u56de\u9519\u8bef\u7801--"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lcom/tencent/tme/live/w1/b;->h:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
