.class public Lcom/gme/video/sdk/edit/model/GmeVideoRange;
.super Ljava/lang/Object;
.source "GmeVideoRange.java"


# instance fields
.field public endTimeUs:J

.field public startTimeUs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/gme/video/sdk/edit/model/GmeVideoRange;->startTimeUs:J

    .line 20
    iput-wide p3, p0, Lcom/gme/video/sdk/edit/model/GmeVideoRange;->endTimeUs:J

    return-void
.end method
