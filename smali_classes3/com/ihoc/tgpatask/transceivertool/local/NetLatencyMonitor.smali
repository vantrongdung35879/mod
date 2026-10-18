.class public Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;
.super Ljava/lang/Object;
.source "NetLatencyMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$NetLatencyMonitorInstance;,
        Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;,
        Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$DetectRtt;
    }
.end annotation


# static fields
.field private static final tag:Ljava/lang/String;


# instance fields
.field private contentBytes:[B

.field private dateInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$ReportData;",
            ">;"
        }
    .end annotation
.end field

.field private hasInit:Z

.field private isRunning:Z

.field private mCallback:Lcom/ihoc/tgpatask/VmpCallback;

.field private mFreq:I

.field private mIpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeout:I

.field private monitorThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->tag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 24
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->mFreq:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->mIpList:Ljava/util/List;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->hasInit:Z

    .line 29
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->isRunning:Z

    const/16 v0, 0x258

    .line 30
    iput v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->mTimeout:I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->dateInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->mIpList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)Ljava/util/HashMap;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->dateInfoMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->isRunning:Z

    return p0
.end method

.method static synthetic access$500(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->mFreq:I

    return p0
.end method

.method static synthetic access$600(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)Lcom/ihoc/tgpatask/VmpCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->mCallback:Lcom/ihoc/tgpatask/VmpCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)[B
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->contentBytes:[B

    return-object p0
.end method

.method static synthetic access$800(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->mTimeout:I

    return p0
.end method

.method public static getInstance()Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;
    .locals 1

    .line 43
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$NetLatencyMonitorInstance;->access$100()Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;

    move-result-object v0

    return-object v0
.end method

.method private init(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Lcom/ihoc/tgpatask/VmpCallback;)I
    .locals 7

    .line 48
    const-string v0, "invalid param"

    iget-boolean v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->isRunning:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 49
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->tag:Ljava/lang/String;

    const-string p2, "please stop monitor"

    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 54
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    const-string v3, "freq"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 55
    iget-object v3, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    const-string v4, "size"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 56
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->mFreq:I

    const/16 v4, 0x64

    if-ge v1, v4, :cond_1

    const/16 v1, 0x3e8

    .line 58
    iput v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->mFreq:I

    :cond_1
    const/16 v1, 0x10

    if-lt v3, v1, :cond_2

    const/16 v1, 0x578

    if-le v3, v1, :cond_3

    :cond_2
    const/16 v3, 0x20

    .line 65
    :cond_3
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->contentBytes:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    iget-object v1, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    const-string v3, "ipList"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 72
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->tag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 76
    :cond_4
    iget-object v0, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x7

    if-eqz v0, :cond_6

    .line 77
    iget-object v0, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "*#9527#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_5

    .line 79
    iget-object v0, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/tgpatask/transceivertool/util/NetUtil;->generateBytesFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->contentBytes:[B

    goto :goto_0

    .line 81
    :cond_5
    iget-object v0, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->contentBytes:[B

    .line 85
    :cond_6
    :goto_0
    iget-object p1, p1, Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;->param:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_8

    aget-object v5, p1, v3

    .line 86
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_7

    .line 87
    iget-object v6, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->mIpList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 91
    :cond_8
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->mIpList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_9

    const/4 p1, 0x2

    return p1

    :cond_9
    if-nez p2, :cond_a

    .line 96
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->tag:Ljava/lang/String;

    const-string p2, "callback is null "

    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 99
    :cond_a
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->mCallback:Lcom/ihoc/tgpatask/VmpCallback;

    .line 101
    iput-boolean v2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->hasInit:Z

    return v1

    .line 67
    :catch_0
    sget-object p1, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->tag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public start(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Lcom/ihoc/tgpatask/VmpCallback;)I
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->init(Lcom/ihoc/tgpatask/transceivertool/json/LocalTaskParam;Lcom/ihoc/tgpatask/VmpCallback;)I

    move-result p1

    if-eqz p1, :cond_0

    return p1

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->monitorThread:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_2

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$1;

    invoke-direct {p2, p0}, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor$1;-><init>(Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->monitorThread:Ljava/lang/Thread;

    const/4 p2, 0x1

    .line 151
    iput-boolean p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->isRunning:Z

    .line 152
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public stop()I
    .locals 1

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/NetLatencyMonitor;->isRunning:Z

    return v0
.end method
