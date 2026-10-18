.class public Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;
.super Ljava/lang/Object;
.source "GmeVideoBaseTimeConfig.java"


# static fields
.field private static final DEFAULT_TIME:I = -0x1


# instance fields
.field public endTimeUs:J

.field public startTimeUs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 20
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    .line 25
    iput-wide p3, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    return-void
.end method

.method public static fixMs2Us(J)J
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    .line 30
    iput-wide v0, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GmeVideoBaseTimeConfig{startTimeUs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->startTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTimeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gme/video/sdk/edit/config/GmeVideoBaseTimeConfig;->endTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
