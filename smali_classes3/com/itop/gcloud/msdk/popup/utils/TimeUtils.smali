.class public Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static enable:Z = false

.field private static endTime:J = 0x0L

.field private static isInitStarted:Z = false

.field private static startTime:J

.field private static timeOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentTime()J
    .locals 4

    .line 32
    sget-boolean v0, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->enable:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 34
    sget-wide v2, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->timeOffset:J

    add-long/2addr v0, v2

    return-wide v0

    .line 38
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static initEnd(J)V
    .locals 4

    .line 21
    sget-boolean v0, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->isInitStarted:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->endTime:J

    .line 24
    sget-wide v2, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->startTime:J

    add-long/2addr v2, v0

    const-wide/16 v0, 0x2

    div-long/2addr v2, v0

    sub-long/2addr p0, v2

    sput-wide p0, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->timeOffset:J

    const/4 p0, 0x1

    .line 25
    sput-boolean p0, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->enable:Z

    :cond_0
    const/4 p0, 0x0

    .line 27
    sput-boolean p0, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->isInitStarted:Z

    return-void
.end method

.method public static initStart()V
    .locals 2

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->startTime:J

    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/itop/gcloud/msdk/popup/utils/TimeUtils;->isInitStarted:Z

    return-void
.end method
