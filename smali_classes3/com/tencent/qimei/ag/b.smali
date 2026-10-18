.class public final Lcom/tencent/qimei/ag/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/ag/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/qimei/v/c;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/v/c;->p:Lcom/tencent/qimei/v/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3
    iget-object v0, v1, Lcom/tencent/qimei/v/c;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4
    const-string v0, ""

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0

    throw v1
.end method
