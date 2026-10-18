.class Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$NetLatencyMonitorInstance;
.super Ljava/lang/Object;
.source "NetLatencyMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetLatencyMonitorInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$1;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$NetLatencyMonitorInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;
    .locals 1

    .line 38
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$NetLatencyMonitorInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    return-object v0
.end method
