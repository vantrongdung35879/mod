.class Lcom/centauri/oversea/comm/MTimer$TimerEvent;
.super Ljava/lang/Object;
.source "MTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/comm/MTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimerEvent"
.end annotation


# instance fields
.field public duration:J

.field public startTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/centauri/oversea/comm/MTimer$TimerEvent;->startTime:J

    .line 29
    iput-wide v0, p0, Lcom/centauri/oversea/comm/MTimer$TimerEvent;->duration:J

    return-void
.end method
