.class final Lcom/uqm/crashsight/crashreport/crash/b$8;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/b;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/crash/b;

.field private synthetic b:J

.field private synthetic c:Lcom/uqm/crashsight/crashreport/crash/b;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/crash/b;J)V
    .locals 0

    .line 2534
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b$8;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/b$8;->a:Lcom/uqm/crashsight/crashreport/crash/b;

    iput-wide p3, p0, Lcom/uqm/crashsight/crashreport/crash/b$8;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2538
    :goto_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b$8;->a:Lcom/uqm/crashsight/crashreport/crash/b;

    monitor-enter v0

    .line 2539
    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/b$8;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/crash/b;->b()V

    .line 2540
    :goto_1
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/b$8;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    iget-boolean v1, v1, Lcom/uqm/crashsight/crashreport/crash/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2542
    :try_start_1
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/b$8;->a:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 2544
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 2547
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2549
    :try_start_3
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/b$8;->b:J

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 2551
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_2
    move-exception v1

    .line 2547
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method
