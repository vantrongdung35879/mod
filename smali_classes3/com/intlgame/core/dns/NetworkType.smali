.class public final enum Lcom/intlgame/core/dns/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intlgame/core/dns/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_2G:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_3G:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_4G:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_5G:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_MOBILE:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_NONE:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_UNKNOWN:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_WIFI:Lcom/intlgame/core/dns/NetworkType;

.field public static final enum NETWORK_WIRED:Lcom/intlgame/core/dns/NetworkType;


# direct methods
.method private static synthetic $values()[Lcom/intlgame/core/dns/NetworkType;
    .locals 3

    const/16 v0, 0x9

    .line 3
    new-array v0, v0, [Lcom/intlgame/core/dns/NetworkType;

    sget-object v1, Lcom/intlgame/core/dns/NetworkType;->NETWORK_UNKNOWN:Lcom/intlgame/core/dns/NetworkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/core/dns/NetworkType;->NETWORK_NONE:Lcom/intlgame/core/dns/NetworkType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/core/dns/NetworkType;->NETWORK_WIFI:Lcom/intlgame/core/dns/NetworkType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/core/dns/NetworkType;->NETWORK_2G:Lcom/intlgame/core/dns/NetworkType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/core/dns/NetworkType;->NETWORK_3G:Lcom/intlgame/core/dns/NetworkType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/core/dns/NetworkType;->NETWORK_4G:Lcom/intlgame/core/dns/NetworkType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/core/dns/NetworkType;->NETWORK_5G:Lcom/intlgame/core/dns/NetworkType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/core/dns/NetworkType;->NETWORK_WIRED:Lcom/intlgame/core/dns/NetworkType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/core/dns/NetworkType;->NETWORK_MOBILE:Lcom/intlgame/core/dns/NetworkType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/intlgame/core/dns/NetworkType;

    const-string v1, "NETWORK_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_UNKNOWN:Lcom/intlgame/core/dns/NetworkType;

    .line 5
    new-instance v0, Lcom/intlgame/core/dns/NetworkType;

    const-string v1, "NETWORK_NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_NONE:Lcom/intlgame/core/dns/NetworkType;

    .line 6
    new-instance v0, Lcom/intlgame/core/dns/NetworkType;

    const-string v1, "NETWORK_WIFI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_WIFI:Lcom/intlgame/core/dns/NetworkType;

    .line 7
    new-instance v0, Lcom/intlgame/core/dns/NetworkType;

    const-string v1, "NETWORK_2G"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_2G:Lcom/intlgame/core/dns/NetworkType;

    .line 8
    new-instance v0, Lcom/intlgame/core/dns/NetworkType;

    const-string v1, "NETWORK_3G"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_3G:Lcom/intlgame/core/dns/NetworkType;

    .line 9
    new-instance v0, Lcom/intlgame/core/dns/NetworkType;

    const-string v1, "NETWORK_4G"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_4G:Lcom/intlgame/core/dns/NetworkType;

    .line 10
    new-instance v0, Lcom/intlgame/core/dns/NetworkType;

    const-string v1, "NETWORK_5G"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_5G:Lcom/intlgame/core/dns/NetworkType;

    .line 11
    new-instance v0, Lcom/intlgame/core/dns/NetworkType;

    const-string v1, "NETWORK_WIRED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_WIRED:Lcom/intlgame/core/dns/NetworkType;

    .line 12
    new-instance v0, Lcom/intlgame/core/dns/NetworkType;

    const-string v1, "NETWORK_MOBILE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/intlgame/core/dns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_MOBILE:Lcom/intlgame/core/dns/NetworkType;

    .line 3
    invoke-static {}, Lcom/intlgame/core/dns/NetworkType;->$values()[Lcom/intlgame/core/dns/NetworkType;

    move-result-object v0

    sput-object v0, Lcom/intlgame/core/dns/NetworkType;->$VALUES:[Lcom/intlgame/core/dns/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intlgame/core/dns/NetworkType;
    .locals 1

    .line 3
    const-class v0, Lcom/intlgame/core/dns/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intlgame/core/dns/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/intlgame/core/dns/NetworkType;
    .locals 1

    .line 3
    sget-object v0, Lcom/intlgame/core/dns/NetworkType;->$VALUES:[Lcom/intlgame/core/dns/NetworkType;

    invoke-virtual {v0}, [Lcom/intlgame/core/dns/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intlgame/core/dns/NetworkType;

    return-object v0
.end method
