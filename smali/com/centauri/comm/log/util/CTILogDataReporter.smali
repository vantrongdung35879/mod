.class public Lcom/centauri/comm/log/util/CTILogDataReporter;
.super Ljava/lang/Object;
.source "CTILogDataReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/comm/log/util/CTILogDataReporter$Holder;,
        Lcom/centauri/comm/log/util/CTILogDataReporter$Reporter;
    }
.end annotation


# static fields
.field public static final centauri_LOG_ERROR_APPEND:Ljava/lang/String; = "sdk.log.error.append"

.field public static final centauri_LOG_ERROR_CLOSE:Ljava/lang/String; = "sdk.log.error.close"

.field public static final centauri_LOG_ERROR_FLUSH:Ljava/lang/String; = "sdk.log.error.flush"

.field public static final centauri_LOG_ERROR_INIT:Ljava/lang/String; = "sdk.log.error.init"

.field public static final centauri_LOG_ERROR_MMAP_OPEN:Ljava/lang/String; = "sdk.log.error.mmap.open"

.field public static final centauri_LOG_ERROR_PRINT:Ljava/lang/String; = "sdk.log.error.print"

.field public static final centauri_LOG_ERROR_PROCESS:Ljava/lang/String; = "sdk.log.error.process"

.field public static final centauri_LOG_ERROR_WRITE:Ljava/lang/String; = "sdk.log.error.write"

.field public static final centauri_LOG_INIT:Ljava/lang/String; = "sdk.log.init"


# instance fields
.field private reporter:Lcom/centauri/comm/log/util/CTILogDataReporter$Reporter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/centauri/comm/log/util/CTILogDataReporter$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/centauri/comm/log/util/CTILogDataReporter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/centauri/comm/log/util/CTILogDataReporter;
    .locals 1

    .line 31
    invoke-static {}, Lcom/centauri/comm/log/util/CTILogDataReporter$Holder;->access$100()Lcom/centauri/comm/log/util/CTILogDataReporter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getReporter()Lcom/centauri/comm/log/util/CTILogDataReporter$Reporter;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/centauri/comm/log/util/CTILogDataReporter;->reporter:Lcom/centauri/comm/log/util/CTILogDataReporter$Reporter;

    return-object v0
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    const-string v0, "launchpay"

    invoke-virtual {p0, v0, p1, p2}, Lcom/centauri/comm/log/util/CTILogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/centauri/comm/log/util/CTILogDataReporter;->reporter:Lcom/centauri/comm/log/util/CTILogDataReporter$Reporter;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1, p2, p3}, Lcom/centauri/comm/log/util/CTILogDataReporter$Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "report error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "centauriComm<Log>"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public reportTimeEx(Ljava/lang/String;J)V
    .locals 2

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 61
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/centauri/comm/log/util/CTILogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReporter(Lcom/centauri/comm/log/util/CTILogDataReporter$Reporter;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/centauri/comm/log/util/CTILogDataReporter;->reporter:Lcom/centauri/comm/log/util/CTILogDataReporter$Reporter;

    return-void
.end method
