.class public abstract Lcom/tencent/qimei/q/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static sendError(III)I
    .locals 4
    .annotation runtime Lcom/tencent/qimei/p/b;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v1

    .line 17
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 18
    iget-object v2, v1, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string v3, "6"

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 21
    iget-object p1, v1, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string v2, "7"

    invoke-virtual {p1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 24
    iget-object p1, v1, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string p2, "8"

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Lcom/tencent/qimei/q/a;->a()Lcom/tencent/qimei/q/a;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    .line 27
    const-string/jumbo p1, "x9"

    invoke-virtual {v0, v1, p1, p0}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
