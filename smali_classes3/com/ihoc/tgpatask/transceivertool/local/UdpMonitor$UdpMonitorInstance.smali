.class Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpMonitorInstance;
.super Ljava/lang/Object;
.source "UdpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UdpMonitorInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$1;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpMonitorInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;
    .locals 1

    .line 43
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor$UdpMonitorInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/local/UdpMonitor;

    return-object v0
.end method
