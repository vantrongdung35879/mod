.class public final Lcom/tencent/qimei/am/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tencent/qimei/am/b;->a:Ljava/lang/String;

    iput p1, p0, Lcom/tencent/qimei/am/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 4
    invoke-static {}, Lcom/tencent/qimei/ap/a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tencent/qimei/am/b;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/ap/f;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v1

    const-string v2, "0"

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "1"

    if-eqz v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 8
    :goto_0
    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v4, v2

    :cond_1
    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/tencent/qimei/am/b;->a:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/qimei/am/b;->b:I

    int-to-long v5, v3

    .line 11
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v3

    .line 12
    invoke-static {v3}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v7

    .line 13
    const-string v8, "6"

    .line 14
    iget-object v9, v7, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v2, "7"

    .line 16
    iget-object v8, v7, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 19
    iget-object v4, v7, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string v5, "8"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v2, "9"

    .line 21
    iget-object v4, v7, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string/jumbo v0, "v8"

    invoke-virtual {v3, v7, v0, v1}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
