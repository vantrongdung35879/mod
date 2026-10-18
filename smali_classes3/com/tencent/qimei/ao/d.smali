.class public final Lcom/tencent/qimei/ao/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ao/h;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ao/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ao/d;->a:Lcom/tencent/qimei/ao/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ao/d;->a:Lcom/tencent/qimei/ao/h;

    .line 4
    invoke-static {}, Lcom/tencent/qimei/uin/U;->e()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_2

    .line 5
    iget-object v1, v0, Lcom/tencent/qimei/ao/h;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/ag/o;->a(Ljava/lang/String;)Lcom/tencent/qimei/ag/o;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/tencent/qimei/ag/o;->a()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, v1, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 8
    invoke-static {v4}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v4

    .line 9
    iget-object v4, v4, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 10
    iget-object v4, v4, Lcom/tencent/qimei/av/a;->m:Ljava/lang/String;

    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v4

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v1, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v1

    .line 16
    iget-object v1, v1, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 17
    iget-boolean v4, v1, Lcom/tencent/qimei/av/a;->a:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Lcom/tencent/qimei/av/a;->i:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/tencent/qimei/au/a;->g:Lcom/tencent/qimei/aa/b;

    iget-object v1, v1, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    invoke-static {}, Lcom/tencent/qimei/ag/p;->a()Lcom/tencent/qimei/ag/p;

    move-result-object v1

    new-instance v2, Lcom/tencent/qimei/ag/b;

    invoke-direct {v2}, Lcom/tencent/qimei/ag/b;-><init>()V

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v2}, Lcom/tencent/qimei/ag/p;->a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :cond_1
    :goto_0
    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 20
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 21
    new-instance v4, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-direct {v4}, Lcom/tencent/qimei/sdk/S/SpreadValue;-><init>()V

    .line 22
    invoke-virtual {v4, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v2

    .line 23
    invoke-virtual {v2, v1}, Lcom/tencent/qimei/sdk/S/SpreadValue;->e(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/qimei/ao/h;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->b(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/qimei/ao/h;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->h(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/qimei/ao/h;->a:Ljava/lang/String;

    .line 26
    invoke-static {v2}, Lcom/tencent/qimei/ap/f;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->f(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/qimei/ao/h;->a:Ljava/lang/String;

    .line 27
    invoke-static {v2}, Lcom/tencent/qimei/ap/f;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->g(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v1

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/tencent/qimei/sdk/S/SpreadValue;->a(J)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/qimei/ao/h;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->c(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/qimei/ao/h;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->d(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v1

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/tencent/qimei/sdk/S/SpreadValue;->b(J)Lcom/tencent/qimei/sdk/S/SpreadValue;

    move-result-object v1

    .line 32
    iget-object v2, v0, Lcom/tencent/qimei/ao/h;->c:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Lcom/tencent/qimei/ao/j;->f:Ljava/lang/String;

    .line 35
    sget-object v1, Lcom/tencent/qimei/ao/i;->a:Lcom/tencent/qimei/ao/j;

    .line 36
    iget-object v2, v0, Lcom/tencent/qimei/ao/h;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/qimei/ao/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v0}, Lcom/tencent/qimei/ao/j;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
