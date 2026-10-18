.class public final Lcom/tencent/qimei/ag/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ak/j;

.field public final synthetic b:Lcom/tencent/qimei/ag/o;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ag/o;Lcom/tencent/qimei/ak/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ag/f;->b:Lcom/tencent/qimei/ag/o;

    iput-object p2, p0, Lcom/tencent/qimei/ag/f;->a:Lcom/tencent/qimei/ak/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ag/f;->b:Lcom/tencent/qimei/ag/o;

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v1, "is_first"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tencent/qimei/ag/f;->b:Lcom/tencent/qimei/ag/o;

    .line 6
    iget-object v1, v1, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 9
    iget-boolean v2, v1, Lcom/tencent/qimei/av/a;->a:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/tencent/qimei/av/a;->i:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/tencent/qimei/au/a;->g:Lcom/tencent/qimei/aa/b;

    iget-object v1, v1, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-static {}, Lcom/tencent/qimei/v/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qimei/ag/f;->b:Lcom/tencent/qimei/ag/o;

    .line 15
    iget-object v0, v0, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/tencent/qimei/v/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/tencent/qimei/ag/f;->a:Lcom/tencent/qimei/ak/j;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ak/j;->a(I)V

    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/tencent/qimei/ag/f;->b:Lcom/tencent/qimei/ag/o;

    iget-object v1, p0, Lcom/tencent/qimei/ag/f;->a:Lcom/tencent/qimei/ak/j;

    const/4 v2, 0x0

    .line 21
    iput-boolean v2, v0, Lcom/tencent/qimei/ag/o;->c:Z

    .line 23
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v2

    new-instance v3, Lcom/tencent/qimei/ag/g;

    invoke-direct {v3, v0, v1}, Lcom/tencent/qimei/ag/g;-><init>(Lcom/tencent/qimei/ag/o;Lcom/tencent/qimei/ak/j;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5, v3}, Lcom/tencent/qimei/u/a;->a(JLjava/lang/Runnable;)V

    .line 38
    const-class v2, Lcom/tencent/qimei/v/c;

    monitor-enter v2

    .line 39
    :try_start_0
    sget-object v3, Lcom/tencent/qimei/v/c;->p:Lcom/tencent/qimei/v/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 40
    new-instance v2, Lcom/tencent/qimei/ag/h;

    invoke-direct {v2, v0, v1}, Lcom/tencent/qimei/ag/h;-><init>(Lcom/tencent/qimei/ag/o;Lcom/tencent/qimei/ak/j;)V

    .line 41
    iget-object v0, v3, Lcom/tencent/qimei/v/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/tencent/qimei/v/c;->b:J

    .line 45
    new-instance v0, Lcom/tencent/oaid2/VendorManager;

    invoke-direct {v0}, Lcom/tencent/oaid2/VendorManager;-><init>()V

    .line 46
    iget-object v1, v3, Lcom/tencent/qimei/v/c;->a:Landroid/content/Context;

    new-instance v4, Lcom/tencent/qimei/v/b;

    invoke-direct {v4, v3, v2}, Lcom/tencent/qimei/v/b;-><init>(Lcom/tencent/qimei/v/c;Lcom/tencent/qimei/ag/h;)V

    invoke-virtual {v0, v1, v4}, Lcom/tencent/oaid2/VendorManager;->getVendorInfo(Landroid/content/Context;Lcom/tencent/oaid2/IVendorCallback;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 47
    monitor-exit v2

    throw v0

    .line 48
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tencent/qimei/ag/f;->a:Lcom/tencent/qimei/ak/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ak/j;->a(I)V

    return-void
.end method
