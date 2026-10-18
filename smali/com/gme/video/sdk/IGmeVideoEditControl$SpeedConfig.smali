.class public Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;
.super Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;
.source "IGmeVideoEditControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gme/video/sdk/IGmeVideoEditControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeedConfig"
.end annotation


# instance fields
.field public speedLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/gme/video/sdk/IGmeVideoEditControl$TimeConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed()F
    .locals 2

    .line 112
    iget v0, p0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->speedLevel:I

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->values()[Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    move-result-object v1

    array-length v1, v1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {}, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->values()[Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;

    move-result-object v0

    iget v1, p0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->speedLevel:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedLevel;->speed:F

    return v0

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpeedConfig{startTimeMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->startTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->endTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speedLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gme/video/sdk/IGmeVideoEditControl$SpeedConfig;->speedLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
