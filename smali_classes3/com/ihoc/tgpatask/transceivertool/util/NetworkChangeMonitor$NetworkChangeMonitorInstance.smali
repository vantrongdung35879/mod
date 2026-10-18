.class Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$NetworkChangeMonitorInstance;
.super Ljava/lang/Object;
.source "NetworkChangeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkChangeMonitorInstance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;-><init>(Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$1;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$NetworkChangeMonitorInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;
    .locals 1

    .line 22
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor$NetworkChangeMonitorInstance;->INSTANCE:Lcom/ihoc/tgpatask/transceivertool/util/NetworkChangeMonitor;

    return-object v0
.end method
