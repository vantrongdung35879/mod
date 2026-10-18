.class Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;
.super Ljava/lang/Object;
.source "NetLatencyMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportData"
.end annotation


# instance fields
.field private dataTime:J

.field private ip:Ljava/lang/String;

.field private rtt:J

.field final synthetic this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;


# direct methods
.method public constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;->ip:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRtt()J
    .locals 5

    .line 288
    iget-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;->dataTime:J

    iget-object v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;->this$0:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    invoke-static {v2}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->access$500(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 289
    iget-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;->rtt:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public refreshRttInfo(J)V
    .locals 2

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;->dataTime:J

    .line 283
    iput-wide p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;->rtt:J

    return-void
.end method
