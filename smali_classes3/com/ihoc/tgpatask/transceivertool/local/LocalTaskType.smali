.class public final enum Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;
.super Ljava/lang/Enum;
.source "LocalTaskType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

.field public static final enum MONITOR:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

.field public static final enum TASK:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

.field public static final enum UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;
    .locals 3

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->TASK:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->MONITOR:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    const/4 v1, 0x0

    const-string/jumbo v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    .line 15
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    const/4 v1, 0x1

    const-string v2, "localTask"

    const-string v3, "TASK"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->TASK:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    .line 16
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    const/4 v1, 0x2

    const-string v2, "localMonitor"

    const-string v3, "MONITOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->MONITOR:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    .line 13
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->$values()[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    move-result-object v0

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->$VALUES:[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->type:Ljava/lang/String;

    return-void
.end method

.method public static getByType(Ljava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;
    .locals 5

    .line 30
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->values()[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 31
    invoke-virtual {v3}, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_1
    sget-object p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->UNKNOWN:Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;
    .locals 1

    .line 13
    const-class v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;
    .locals 1

    .line 13
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->$VALUES:[Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    invoke-virtual {v0}, [Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/local/LocalTaskType;->type:Ljava/lang/String;

    return-object v0
.end method
