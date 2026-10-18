.class final enum Lcom/tdatamaster/tdm/system/NetworkType;
.super Ljava/lang/Enum;
.source "TDMSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tdatamaster/tdm/system/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tdatamaster/tdm/system/NetworkType;

.field public static final enum NETWORK_2G:Lcom/tdatamaster/tdm/system/NetworkType;

.field public static final enum NETWORK_3G:Lcom/tdatamaster/tdm/system/NetworkType;

.field public static final enum NETWORK_4G:Lcom/tdatamaster/tdm/system/NetworkType;

.field public static final enum NETWORK_5G:Lcom/tdatamaster/tdm/system/NetworkType;

.field public static final enum NETWORK_MOBILE:Lcom/tdatamaster/tdm/system/NetworkType;

.field public static final enum NETWORK_NONE:Lcom/tdatamaster/tdm/system/NetworkType;

.field public static final enum NETWORK_UNKNOWN:Lcom/tdatamaster/tdm/system/NetworkType;

.field public static final enum NETWORK_WIFI:Lcom/tdatamaster/tdm/system/NetworkType;

.field public static final enum NETWORK_WIRED:Lcom/tdatamaster/tdm/system/NetworkType;


# direct methods
.method private static synthetic $values()[Lcom/tdatamaster/tdm/system/NetworkType;
    .locals 3

    const/16 v0, 0x9

    .line 21
    new-array v0, v0, [Lcom/tdatamaster/tdm/system/NetworkType;

    sget-object v1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_UNKNOWN:Lcom/tdatamaster/tdm/system/NetworkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_NONE:Lcom/tdatamaster/tdm/system/NetworkType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_WIFI:Lcom/tdatamaster/tdm/system/NetworkType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_2G:Lcom/tdatamaster/tdm/system/NetworkType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_3G:Lcom/tdatamaster/tdm/system/NetworkType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_4G:Lcom/tdatamaster/tdm/system/NetworkType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_5G:Lcom/tdatamaster/tdm/system/NetworkType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_WIRED:Lcom/tdatamaster/tdm/system/NetworkType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_MOBILE:Lcom/tdatamaster/tdm/system/NetworkType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/tdatamaster/tdm/system/NetworkType;

    const-string v1, "NETWORK_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tdatamaster/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_UNKNOWN:Lcom/tdatamaster/tdm/system/NetworkType;

    .line 24
    new-instance v0, Lcom/tdatamaster/tdm/system/NetworkType;

    const-string v1, "NETWORK_NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tdatamaster/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_NONE:Lcom/tdatamaster/tdm/system/NetworkType;

    .line 25
    new-instance v0, Lcom/tdatamaster/tdm/system/NetworkType;

    const-string v1, "NETWORK_WIFI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tdatamaster/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_WIFI:Lcom/tdatamaster/tdm/system/NetworkType;

    .line 26
    new-instance v0, Lcom/tdatamaster/tdm/system/NetworkType;

    const-string v1, "NETWORK_2G"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tdatamaster/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_2G:Lcom/tdatamaster/tdm/system/NetworkType;

    .line 27
    new-instance v0, Lcom/tdatamaster/tdm/system/NetworkType;

    const-string v1, "NETWORK_3G"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/tdatamaster/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_3G:Lcom/tdatamaster/tdm/system/NetworkType;

    .line 28
    new-instance v0, Lcom/tdatamaster/tdm/system/NetworkType;

    const-string v1, "NETWORK_4G"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tdatamaster/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_4G:Lcom/tdatamaster/tdm/system/NetworkType;

    .line 29
    new-instance v0, Lcom/tdatamaster/tdm/system/NetworkType;

    const-string v1, "NETWORK_5G"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tdatamaster/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_5G:Lcom/tdatamaster/tdm/system/NetworkType;

    .line 30
    new-instance v0, Lcom/tdatamaster/tdm/system/NetworkType;

    const-string v1, "NETWORK_WIRED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tdatamaster/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_WIRED:Lcom/tdatamaster/tdm/system/NetworkType;

    .line 31
    new-instance v0, Lcom/tdatamaster/tdm/system/NetworkType;

    const-string v1, "NETWORK_MOBILE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tdatamaster/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_MOBILE:Lcom/tdatamaster/tdm/system/NetworkType;

    .line 21
    invoke-static {}, Lcom/tdatamaster/tdm/system/NetworkType;->$values()[Lcom/tdatamaster/tdm/system/NetworkType;

    move-result-object v0

    sput-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->$VALUES:[Lcom/tdatamaster/tdm/system/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tdatamaster/tdm/system/NetworkType;
    .locals 1

    .line 21
    const-class v0, Lcom/tdatamaster/tdm/system/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tdatamaster/tdm/system/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/tdatamaster/tdm/system/NetworkType;
    .locals 1

    .line 21
    sget-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->$VALUES:[Lcom/tdatamaster/tdm/system/NetworkType;

    invoke-virtual {v0}, [Lcom/tdatamaster/tdm/system/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tdatamaster/tdm/system/NetworkType;

    return-object v0
.end method
