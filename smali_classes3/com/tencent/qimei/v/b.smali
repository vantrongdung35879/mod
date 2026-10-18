.class public final Lcom/tencent/qimei/v/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/oaid2/IVendorCallback;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ag/h;

.field public final synthetic b:Lcom/tencent/qimei/v/c;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/v/c;Lcom/tencent/qimei/ag/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/v/b;->b:Lcom/tencent/qimei/v/c;

    iput-object p2, p0, Lcom/tencent/qimei/v/b;->a:Lcom/tencent/qimei/ag/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/tencent/qimei/v/b;->b:Lcom/tencent/qimei/v/c;

    .line 2
    iput-object p3, p1, Lcom/tencent/qimei/v/c;->h:Ljava/lang/String;

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 5
    iget-object p3, p0, Lcom/tencent/qimei/v/b;->b:Lcom/tencent/qimei/v/c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/qimei/v/b;->b:Lcom/tencent/qimei/v/c;

    .line 6
    iget-wide v2, v2, Lcom/tencent/qimei/v/c;->b:J

    sub-long/2addr v0, v2

    .line 7
    iput-wide v0, p3, Lcom/tencent/qimei/v/c;->c:J

    .line 10
    :cond_1
    iget-object p3, p0, Lcom/tencent/qimei/v/b;->a:Lcom/tencent/qimei/ag/h;

    xor-int/2addr p2, p1

    .line 11
    iget-object v0, p3, Lcom/tencent/qimei/ag/h;->b:Lcom/tencent/qimei/ag/o;

    .line 12
    iget-object v0, v0, Lcom/tencent/qimei/ag/o;->b:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p3, Lcom/tencent/qimei/ag/h;->b:Lcom/tencent/qimei/ag/o;

    .line 16
    iget-boolean v1, v1, Lcom/tencent/qimei/ag/o;->c:Z

    if-nez v1, :cond_2

    .line 17
    iget-object v1, p3, Lcom/tencent/qimei/ag/h;->a:Lcom/tencent/qimei/ak/j;

    invoke-virtual {v1, p2}, Lcom/tencent/qimei/ak/j;->a(I)V

    .line 18
    iget-object p2, p3, Lcom/tencent/qimei/ag/h;->b:Lcom/tencent/qimei/ag/o;

    .line 19
    iput-boolean p1, p2, Lcom/tencent/qimei/ag/o;->c:Z

    .line 20
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
