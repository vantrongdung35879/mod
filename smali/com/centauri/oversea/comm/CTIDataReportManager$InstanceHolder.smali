.class Lcom/centauri/oversea/comm/CTIDataReportManager$InstanceHolder;
.super Ljava/lang/Object;
.source "CTIDataReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/comm/CTIDataReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceHolder"
.end annotation


# static fields
.field static instance:Lcom/centauri/oversea/comm/CTIDataReportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    new-instance v0, Lcom/centauri/oversea/comm/CTIDataReportManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/oversea/comm/CTIDataReportManager;-><init>(Lcom/centauri/oversea/comm/CTIDataReportManager$1;)V

    sput-object v0, Lcom/centauri/oversea/comm/CTIDataReportManager$InstanceHolder;->instance:Lcom/centauri/oversea/comm/CTIDataReportManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
