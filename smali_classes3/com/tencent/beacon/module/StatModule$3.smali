.class Lcom/tencent/beacon/module/StatModule$3;
.super Ljava/lang/Object;
.source "StatModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/module/StatModule;->b(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/tencent/beacon/module/StatModule;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/module/StatModule;JLjava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/module/StatModule$3;->d:Lcom/tencent/beacon/module/StatModule;

    iput-wide p2, p0, Lcom/tencent/beacon/module/StatModule$3;->a:J

    iput-object p4, p0, Lcom/tencent/beacon/module/StatModule$3;->b:Ljava/lang/String;

    iput-wide p5, p0, Lcom/tencent/beacon/module/StatModule$3;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconEvent;->builder()Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/beacon/module/StatModule$3;->a:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A110"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withParams(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/module/StatModule$3;->b:Ljava/lang/String;

    const-string v2, "A111"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withParams(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/beacon/module/StatModule$3;->c:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A112"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withParams(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    const-string v1, "rqd_page"

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withCode(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/tencent/beacon/event/open/EventType;->NORMAL:Lcom/tencent/beacon/event/open/EventType;

    .line 6
    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withType(Lcom/tencent/beacon/event/open/EventType;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->build()Lcom/tencent/beacon/event/open/BeaconEvent;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/event/open/BeaconReport;->report(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;

    .line 9
    iget-object v0, p0, Lcom/tencent/beacon/module/StatModule$3;->d:Lcom/tencent/beacon/module/StatModule;

    invoke-static {v0}, Lcom/tencent/beacon/module/StatModule;->a(Lcom/tencent/beacon/module/StatModule;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tencent/beacon/module/StatModule$3;->c:J

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/module/StatModule;->a(Lcom/tencent/beacon/module/StatModule;J)J

    .line 10
    iget-object v0, p0, Lcom/tencent/beacon/module/StatModule$3;->d:Lcom/tencent/beacon/module/StatModule;

    invoke-static {v0}, Lcom/tencent/beacon/module/StatModule;->a(Lcom/tencent/beacon/module/StatModule;)J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 11
    iget-object v0, p0, Lcom/tencent/beacon/module/StatModule$3;->d:Lcom/tencent/beacon/module/StatModule;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/module/StatModule;->a(Lcom/tencent/beacon/module/StatModule;J)J

    :cond_0
    return-void
.end method
