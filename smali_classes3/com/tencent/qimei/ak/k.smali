.class public final Lcom/tencent/qimei/ak/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/sdk/IAsyncQimeiListener;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ak/n;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ak/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ak/k;->a:Lcom/tencent/qimei/ak/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQimeiDispatch(Lcom/tencent/qimei/sdk/Qimei;)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/tencent/qimei/ah/a;->a()Lcom/tencent/qimei/ah/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/qimei/ak/k;->a:Lcom/tencent/qimei/ak/n;

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 3
    monitor-enter p1

    .line 4
    monitor-exit p1

    .line 5
    iget-object p1, p0, Lcom/tencent/qimei/ak/k;->a:Lcom/tencent/qimei/ak/n;

    .line 6
    iget-object p1, p1, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/tencent/qimei/am/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/am/a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/tencent/qimei/am/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 13
    :cond_0
    iget-boolean v0, p1, Lcom/tencent/qimei/am/a;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 15
    :cond_1
    iget-boolean v0, p1, Lcom/tencent/qimei/am/a;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 19
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p1, Lcom/tencent/qimei/am/a;->c:Z

    if-eqz v5, :cond_3

    .line 20
    const-string v5, "1"

    goto :goto_1

    :cond_3
    const-string v5, "0"

    .line 21
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/tencent/qimei/am/a;->b:Z

    if-eqz v5, :cond_4

    .line 22
    const-string v5, "1"

    goto :goto_2

    :cond_4
    const-string v5, "0"

    .line 23
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/tencent/qimei/am/a;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    iget-object v5, p1, Lcom/tencent/qimei/am/a;->e:Lcom/tencent/qimei/sdk/Qimei;

    if-nez v5, :cond_5

    .line 28
    new-instance v5, Lcom/tencent/qimei/sdk/Qimei;

    iget-object v6, p1, Lcom/tencent/qimei/am/a;->a:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;)V

    iput-object v5, p1, Lcom/tencent/qimei/am/a;->e:Lcom/tencent/qimei/sdk/Qimei;

    .line 30
    :cond_5
    new-instance v5, Lcom/tencent/qimei/ar/a;

    iget-object v6, p1, Lcom/tencent/qimei/am/a;->a:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/tencent/qimei/ar/a;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v7, p1, Lcom/tencent/qimei/am/a;->e:Lcom/tencent/qimei/sdk/Qimei;

    .line 32
    invoke-virtual {v7}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p1, Lcom/tencent/qimei/am/a;->e:Lcom/tencent/qimei/sdk/Qimei;

    .line 33
    invoke-virtual {p1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-virtual {v5}, Lcom/tencent/qimei/ar/a;->f()Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-virtual {v5}, Lcom/tencent/qimei/ar/a;->e()Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v9

    .line 37
    invoke-static {v9}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v10

    .line 38
    const-string v11, "6"

    .line 39
    iget-object v12, v10, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v12, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v7, "7"

    .line 41
    iget-object v11, v10, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v11, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string p1, "9"

    .line 43
    iget-object v7, v10, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string p1, "10"

    .line 45
    iget-object v7, v10, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string p1, "8"

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 48
    iget-object v7, v10, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string p1, "11"

    .line 50
    iget-object v5, v10, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo p1, "v7"

    invoke-virtual {v9, v10, p1, v6}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/tencent/qimei/v/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    aput-object p1, v4, v1

    aput-object v0, v4, v2

    const-string p1, "CloneDetect"

    const-string v0, "%s, %s is clone\uff0ctype\uff1a%d"

    invoke-static {p1, v0, v4}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_3
    iget-object p1, p0, Lcom/tencent/qimei/ak/k;->a:Lcom/tencent/qimei/ak/n;

    .line 54
    iget-object p1, p1, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/tencent/qimei/ao/h;->a(Ljava/lang/String;)Lcom/tencent/qimei/ao/h;

    move-result-object p1

    .line 56
    iget-object v0, p1, Lcom/tencent/qimei/ao/h;->a:Ljava/lang/String;

    .line 57
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 58
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 59
    sget-object v1, Lcom/tencent/qimei/au/a;->v:Lcom/tencent/qimei/aa/b;

    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    .line 60
    :cond_6
    invoke-static {}, Lcom/tencent/qimei/v/a;->g()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    .line 64
    :cond_7
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/ao/d;

    invoke-direct {v1, p1}, Lcom/tencent/qimei/ao/d;-><init>(Lcom/tencent/qimei/ao/h;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    .line 70
    iget-object v0, p1, Lcom/tencent/qimei/ao/h;->a:Ljava/lang/String;

    .line 71
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 72
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 73
    sget-object v1, Lcom/tencent/qimei/au/b;->C:Lcom/tencent/qimei/aa/c;

    .line 74
    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    .line 75
    invoke-static {v1, v0}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 76
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v1

    int-to-long v2, v0

    new-instance v0, Lcom/tencent/qimei/ao/g;

    invoke-direct {v0, p1}, Lcom/tencent/qimei/ao/g;-><init>(Lcom/tencent/qimei/ao/h;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/qimei/u/a;->a(JLjava/lang/Runnable;)V

    .line 77
    :goto_4
    iget-object p1, p0, Lcom/tencent/qimei/ak/k;->a:Lcom/tencent/qimei/ak/n;

    .line 78
    iget-object p1, p1, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 80
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 81
    sget-object v1, Lcom/tencent/qimei/au/a;->x:Lcom/tencent/qimei/aa/b;

    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    .line 82
    :cond_8
    invoke-static {p1}, Lcom/tencent/qimei/uin/U;->e(Ljava/lang/String;)Z

    :goto_5
    return-void
.end method
