.class public abstract Lcom/tencent/tme/live/k/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/k/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lcom/tencent/tme/live/w1/b;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/w1/b;",
            "TParam;)I"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;)Lcom/tencent/tme/live/w1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)",
            "Lcom/tencent/tme/live/w1/c;"
        }
    .end annotation
.end method

.method public a(Lcom/tencent/tme/live/k/e$b;Ljava/lang/Object;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/k/e$b;",
            "TParam;I)V"
        }
    .end annotation

    const-string v0, "netproxy error ret = "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/tme/live/k/e;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/tme/live/k/e;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const-string v1, "postReq index = %s ; getCmd = %s ; getSubcmd = %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetProxy"

    invoke-static {v2, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/tme/live/e/f;->b()Lcom/tencent/tme/live/e/f;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/tme/live/k/e;->a()I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/tme/live/k/e;->b()I

    move-result v5

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/k/e;->a(Ljava/lang/Object;)Lcom/tencent/tme/live/w1/c;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/tme/live/w1/c;->b:[B

    new-instance v7, Lcom/tencent/tme/live/k/e$a;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/tencent/tme/live/k/e$a;-><init>(Lcom/tencent/tme/live/k/e;Lcom/tencent/tme/live/k/e$b;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/tencent/tme/live/e/f;->a(II[BLcom/tencent/tme/live/x1/a;)I

    move-result p2

    const/4 p3, -0x3

    if-eq p2, p3, :cond_0

    const/4 p3, -0x5

    if-eq p2, p3, :cond_0

    const/4 p3, -0x4

    if-ne p2, p3, :cond_1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1
    invoke-static {v2, p3, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-interface {p1, p2}, Lcom/tencent/tme/live/k/e$b;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "NetProxy-postReq-\u7f51\u7edc\u8bbf\u95ee\u5931\u8d25-"

    invoke-static {p2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2, v2, v1}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract b()I
.end method
