.class public final Lcom/tencent/qimei/ap/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/w/a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ap/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qimei/ap/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ap/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qimei/ap/b;->b:Ljava/lang/String;

    .line 2
    sget-object v2, Lcom/tencent/qimei/an/a;->a:Lcom/tencent/qimei/an/b;

    .line 3
    iget-boolean v2, v2, Lcom/tencent/qimei/an/b;->a:Z

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0, v1}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;Ljava/lang/String;)B

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v3

    .line 8
    invoke-static {v3}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v4

    .line 10
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 11
    iget-object v6, v4, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string v7, "6"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string/jumbo v5, "v6"

    invoke-virtual {v3, v4, v5, v0}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v2, :cond_2

    .line 13
    invoke-static {}, Lcom/tencent/qimei/v/a;->e()Ljava/lang/String;

    move-result-object v2

    .line 14
    const-string v3, "com.tencent.qm.mulprocess_share"

    const/4 v4, 0x0

    .line 15
    invoke-static {v3, v2, v4}, Lcom/tencent/qimei/t/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 17
    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v4

    const-string v5, "q_s_t"

    invoke-virtual {v4, v5, v2, v3}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;J)V

    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v1, "QM"

    const-string v3, "QM was successfully updated to local: %s (appKey: %s)"

    invoke-static {v1, v3, v2}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v1

    const-string v2, "is_first"

    invoke-virtual {v1, v2}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
