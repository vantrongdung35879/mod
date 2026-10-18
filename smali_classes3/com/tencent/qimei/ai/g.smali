.class public final Lcom/tencent/qimei/ai/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ai/e;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/tencent/qimei/ai/h;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ai/h;Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ai/g;->d:Lcom/tencent/qimei/ai/h;

    iput-object p2, p0, Lcom/tencent/qimei/ai/g;->a:Lcom/tencent/qimei/ai/e;

    iput-object p3, p0, Lcom/tencent/qimei/ai/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/qimei/ai/g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ai/g;->d:Lcom/tencent/qimei/ai/h;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/ai/g;->d:Lcom/tencent/qimei/ai/h;

    iget-object v2, p0, Lcom/tencent/qimei/ai/g;->a:Lcom/tencent/qimei/ai/e;

    iget-object v3, p0, Lcom/tencent/qimei/ai/g;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/qimei/ai/g;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/h;Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
