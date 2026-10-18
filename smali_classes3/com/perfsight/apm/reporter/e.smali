.class public Lcom/perfsight/apm/reporter/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Lcom/perfsight/apm/reporter/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/perfsight/apm/reporter/e;
    .locals 2

    sget-object v0, Lcom/perfsight/apm/reporter/e;->a:Lcom/perfsight/apm/reporter/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/perfsight/apm/reporter/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfsight/apm/reporter/e;->a:Lcom/perfsight/apm/reporter/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/perfsight/apm/reporter/e;

    invoke-direct {v1}, Lcom/perfsight/apm/reporter/e;-><init>()V

    sput-object v1, Lcom/perfsight/apm/reporter/e;->a:Lcom/perfsight/apm/reporter/e;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/perfsight/apm/reporter/e;->a:Lcom/perfsight/apm/reporter/e;

    return-object v0
.end method
