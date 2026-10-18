.class final Lcom/uqm/crashsight/core/crash/CrashSight$2;
.super Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/core/crash/CrashSight;->initWithAppId(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/core/crash/CrashSight;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/core/crash/CrashSight;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/uqm/crashsight/core/crash/CrashSight$2;->a:Lcom/uqm/crashsight/core/crash/CrashSight;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    .line 397
    :try_start_0
    const-string v3, "unknown"

    goto :goto_0

    .line 394
    :cond_0
    const-string v3, "JAVA_CUSTOM"

    goto :goto_0

    .line 391
    :cond_1
    const-string v3, "JAVA_U3D"

    goto :goto_0

    .line 388
    :cond_2
    const-string v3, "JAVA_NATIVE"

    goto :goto_0

    .line 385
    :cond_3
    const-string v3, "JAVA_CATCH"

    goto :goto_0

    .line 382
    :cond_4
    const-string v3, "JAVA_CRASH"

    .line 400
    :goto_0
    const-string v4, "Crash happen type : %d, typeName : %s, errorType : %s, errorMessage : %s, errorStack: %s"

    .line 401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    aput-object v3, v6, v2

    aput-object p2, v6, v1

    aput-object p3, v6, v0

    const/4 v0, 0x4

    aput-object p4, v6, v0

    .line 400
    invoke-static {v4, v6}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_5

    .line 405
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_5
    :try_start_1
    invoke-static {p1}, Lcom/uqm/crashsight/core/api/crash/UQMCrash;->attachmentMessageForException(I)Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_6

    .line 412
    const-string p3, "CrashSight extra message report ok, message : %s"

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p1, p4, v7

    invoke-static {p3, p4}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    const-string p3, "extmsg"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 415
    :cond_6
    const-string p1, "CrashSight extra message is empty"

    new-array p3, v7, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 418
    :try_start_2
    const-string p3, "onCrashHandleStart extra message report error, message : %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p1, p4, v7

    invoke-static {p3, p4}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    :goto_1
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onCrashHandleStart2GetExtraDatas(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    monitor-enter p0

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 436
    :try_start_0
    invoke-static {p1}, Lcom/uqm/crashsight/core/api/crash/UQMCrash;->attachmentForException(I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 437
    array-length p4, p1

    if-lez p4, :cond_0

    .line 438
    const-string p4, "CrashSight extraBinaryMessage data report ok"

    new-array v0, p3, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    monitor-exit p0

    return-object p1

    .line 441
    :cond_0
    :try_start_1
    const-string p1, "CrashSight extraBinaryMessage data is empty"

    new-array p4, p3, [Ljava/lang/Object;

    invoke-static {p1, p4}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 445
    :try_start_2
    const-string p4, "onCrashHandleStart2GetExtraData exception, message : %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p3

    invoke-static {p4, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    monitor-exit p0

    return-object p2

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onCrashHandleStart2GetLogPath(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 463
    :try_start_0
    invoke-static {p1}, Lcom/uqm/crashsight/core/api/crash/UQMCrash;->attachmentLogPathForException(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_0

    .line 465
    const-string p4, "[attach] CrashSight get log path report ok"

    new-array v0, p3, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    monitor-exit p0

    return-object p1

    .line 468
    :cond_0
    :try_start_1
    const-string p1, "[attach]CrashSight get log path is empty"

    new-array p4, p3, [Ljava/lang/Object;

    invoke-static {p1, p4}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 472
    :try_start_2
    const-string p4, "[attach]onCrashHandleStart2GetLogPath exception, message : %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p3

    invoke-static {p4, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    monitor-exit p0

    return-object p2

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onCrashHandleStart2NotifyLogUploadResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    const/4 p3, 0x0

    .line 490
    :try_start_0
    invoke-static {p1, p2}, Lcom/uqm/crashsight/core/api/crash/UQMCrash;->attachmentLogUploadResultForException(II)V

    .line 491
    const-string p1, "[attach] CrashSight upload log result report ok"

    new-array p2, p3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 493
    :try_start_1
    const-string p2, "[attach]onCrashHandleStart2NotifyLogUploadResult exception, message : %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, p3

    invoke-static {p2, p4}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
