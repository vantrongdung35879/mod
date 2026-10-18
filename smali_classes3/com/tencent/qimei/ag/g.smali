.class public final Lcom/tencent/qimei/ag/g;
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
    iput-object p1, p0, Lcom/tencent/qimei/ag/g;->b:Lcom/tencent/qimei/ag/o;

    iput-object p2, p0, Lcom/tencent/qimei/ag/g;->a:Lcom/tencent/qimei/ak/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ag/g;->b:Lcom/tencent/qimei/ag/o;

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/ag/o;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/ag/g;->b:Lcom/tencent/qimei/ag/o;

    .line 6
    iget-boolean v1, v1, Lcom/tencent/qimei/ag/o;->c:Z

    if-nez v1, :cond_0

    .line 7
    invoke-static {}, Lcom/tencent/qimei/v/c;->h()Lcom/tencent/qimei/v/c;

    move-result-object v1

    const-wide/16 v2, 0xa

    iput-wide v2, v1, Lcom/tencent/qimei/v/c;->c:J

    .line 8
    iget-object v1, p0, Lcom/tencent/qimei/ag/g;->a:Lcom/tencent/qimei/ak/j;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tencent/qimei/ak/j;->a(I)V

    .line 9
    iget-object v1, p0, Lcom/tencent/qimei/ag/g;->b:Lcom/tencent/qimei/ag/o;

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Lcom/tencent/qimei/ag/o;->c:Z

    .line 11
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
