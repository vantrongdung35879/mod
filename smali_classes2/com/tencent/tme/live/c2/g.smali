.class public Lcom/tencent/tme/live/c2/g;
.super Lcom/tencent/tme/live/c2/e;

# interfaces
.implements Lcom/tencent/tme/live/c2/k;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/c2/e;-><init>(Lcom/tencent/tme/live/f2/j;)V

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)Lcom/tencent/tme/live/c2/k;
    .locals 1

    new-instance v0, Lcom/tencent/tme/live/c2/g;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/c2/g;-><init>(Lcom/tencent/tme/live/f2/j;)V

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/c2/g;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/tme/live/c2/e;->a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/c2/k;

    return-object p1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "exception"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tme/live/c2/i<",
            "*>;)",
            "Lcom/tencent/tme/live/c2/k;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/tencent/tme/live/c2/e;->a(Lcom/tencent/tme/live/c2/i;)Lcom/tencent/tme/live/c2/h;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/c2/k;

    return-object p1
.end method

.method public e()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/c2/e;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()Lcom/tencent/tme/live/c2/h;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/tme/live/c2/e;->f()Lcom/tencent/tme/live/c2/h;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/c2/k;

    return-object v0
.end method
