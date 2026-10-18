.class public final Lcom/tencent/qimei/ak/l;
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
    iput-object p1, p0, Lcom/tencent/qimei/ak/l;->a:Lcom/tencent/qimei/ak/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQimeiDispatch(Lcom/tencent/qimei/sdk/Qimei;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/tencent/qimei/ak/l;->a:Lcom/tencent/qimei/ak/n;

    .line 2
    iget-object p1, p1, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/tencent/qimei/ax/e;->a(Ljava/lang/String;)Lcom/tencent/qimei/ax/e;

    move-result-object p1

    .line 4
    iget-object v0, p1, Lcom/tencent/qimei/ax/e;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 11
    iget-object v0, v0, Lcom/tencent/qimei/av/a;->j:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-static {}, Lcom/tencent/qimei/v/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {}, Lcom/tencent/qimei/v/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p1, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 21
    sget-object v1, Lcom/tencent/qimei/au/b;->z:Lcom/tencent/qimei/aa/c;

    .line 22
    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    .line 23
    invoke-static {v1, v0}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 24
    iput v0, p1, Lcom/tencent/qimei/ax/e;->c:I

    .line 25
    iget-object v0, p1, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    .line 26
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 27
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 28
    sget-object v1, Lcom/tencent/qimei/au/b;->A:Lcom/tencent/qimei/aa/c;

    .line 29
    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    .line 30
    invoke-static {v1, v0}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 31
    iput v0, p1, Lcom/tencent/qimei/ax/e;->b:I

    .line 32
    iget-object v0, p1, Lcom/tencent/qimei/ax/e;->a:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 35
    sget-object v1, Lcom/tencent/qimei/au/b;->E:Lcom/tencent/qimei/aa/c;

    .line 36
    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    .line 37
    invoke-static {v1, v0}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 38
    iput v0, p1, Lcom/tencent/qimei/ax/e;->d:I

    .line 39
    iget v0, p1, Lcom/tencent/qimei/ax/e;->b:I

    if-nez v0, :cond_3

    iget v0, p1, Lcom/tencent/qimei/ax/e;->c:I

    if-nez v0, :cond_3

    const/4 p1, 0x0

    .line 40
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "e"

    const-string v1, "hid close"

    invoke-static {v0, v1, p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_3
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    iget v1, p1, Lcom/tencent/qimei/ax/e;->d:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    new-instance v3, Lcom/tencent/qimei/ax/b;

    invoke-direct {v3, p1}, Lcom/tencent/qimei/ax/b;-><init>(Lcom/tencent/qimei/ax/e;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qimei/u/a;->a(JLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method
