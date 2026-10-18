.class public Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;
.super Lcom/uqm/crashsight/CrashSightStrategy;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/CrashReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStrategy"
.end annotation


# instance fields
.field private d:Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1664
    invoke-direct {p0}, Lcom/uqm/crashsight/CrashSightStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCallBackType()I
    .locals 1

    monitor-enter p0

    .line 1683
    :try_start_0
    iget v0, p0, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getCloseErrorCallback()Z
    .locals 1

    monitor-enter p0

    .line 1715
    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic getCrashHandleCallback()Lcom/uqm/crashsight/CrashSightStrategy$a;
    .locals 1

    .line 1660
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->getCrashHandleCallback()Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCrashHandleCallback()Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;
    .locals 1

    monitor-enter p0

    .line 1725
    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->d:Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getCrashHandleTimeout()I
    .locals 1

    monitor-enter p0

    .line 1699
    :try_start_0
    iget v0, p0, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setCallBackType(I)V
    .locals 0

    monitor-enter p0

    .line 1676
    :try_start_0
    iput p1, p0, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setCloseErrorCallback(Z)V
    .locals 0

    monitor-enter p0

    .line 1708
    :try_start_0
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setCrashHandleCallback(Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;)V
    .locals 0

    monitor-enter p0

    .line 1735
    :try_start_0
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->d:Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setCrashHandleTimeout(I)V
    .locals 0

    monitor-enter p0

    .line 1691
    :try_start_0
    iput p1, p0, Lcom/uqm/crashsight/crashreport/CrashReport$UserStrategy;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1692
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
