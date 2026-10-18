.class public final enum Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;
.super Ljava/lang/Enum;
.source "LocalTaskCMD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

.field public static final enum COUTOMEPIPE:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

.field public static final enum DNS:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

.field public static final enum ICMP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

.field public static final enum LOG:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

.field public static final enum PING:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

.field public static final enum QOS:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

.field public static final enum TAPD:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

.field public static final enum TAPDOPTION:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

.field public static final enum TAPDTEMP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

.field public static final enum UDP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

.field public static final enum UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;


# instance fields
.field private final cmd:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;
    .locals 3

    const/16 v0, 0xb

    .line 14
    new-array v0, v0, [Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->LOG:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->DNS:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->COUTOMEPIPE:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ICMP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->PING:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->UDP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->QOS:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->TAPD:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->TAPDOPTION:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->TAPDTEMP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v1, 0x0

    const-string/jumbo v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 16
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v1, 0x1

    const-string v2, "log"

    const-string v3, "LOG"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->LOG:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 17
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v1, 0x2

    const-string v2, "dns"

    const-string v3, "DNS"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->DNS:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 18
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v1, 0x3

    const-string v2, "customepipe"

    const-string v3, "COUTOMEPIPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->COUTOMEPIPE:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 19
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const-string v1, "ICMP"

    const/4 v2, 0x4

    const-string v3, "ping"

    invoke-direct {v0, v1, v2, v3}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->ICMP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 20
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const-string v1, "PING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->PING:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 21
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v1, 0x6

    const-string/jumbo v2, "udp"

    const-string v3, "UDP"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->UDP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 22
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/4 v1, 0x7

    const-string v2, "qos"

    const-string v3, "QOS"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->QOS:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 23
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/16 v1, 0x8

    const-string/jumbo v2, "tapd"

    const-string v3, "TAPD"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->TAPD:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 24
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/16 v1, 0x9

    const-string/jumbo v2, "tapdoption"

    const-string v3, "TAPDOPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->TAPDOPTION:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 25
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    const/16 v1, 0xa

    const-string/jumbo v2, "tapdtemp"

    const-string v3, "TAPDTEMP"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->TAPDTEMP:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    .line 14
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->$values()[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    move-result-object v0

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->$VALUES:[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->cmd:Ljava/lang/String;

    return-void
.end method

.method public static getByCMD(Ljava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;
    .locals 5

    .line 39
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->values()[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->getCMD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_1
    sget-object p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;
    .locals 1

    .line 14
    const-class v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;
    .locals 1

    .line 14
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->$VALUES:[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    invoke-virtual {v0}, [Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;

    return-object v0
.end method


# virtual methods
.method public getCMD()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskCMD;->cmd:Ljava/lang/String;

    return-object v0
.end method
