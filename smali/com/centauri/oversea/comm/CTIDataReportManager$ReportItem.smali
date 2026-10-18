.class Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;
.super Ljava/lang/Object;
.source "CTIDataReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/comm/CTIDataReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReportItem"
.end annotation


# instance fields
.field public extend:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public times:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/CTIDataReportManager$ReportItem;->times:Ljava/lang/String;

    return-void
.end method
