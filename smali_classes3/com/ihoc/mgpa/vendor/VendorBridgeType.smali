.class public final enum Lcom/ihoc/mgpa/vendor/VendorBridgeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/vendor/VendorBridgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/vendor/VendorBridgeType;

.field public static final enum KOGSOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

.field public static final enum NONE:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

.field public static final enum OPPO:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

.field public static final enum OPPO_COSA:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

.field public static final enum SAMSUNG_INTERNATIONAL:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

.field public static final enum SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

.field public static final enum STANDARD_BINDER_V1:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

.field public static final enum STANDARD_BINDER_V2:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

.field public static final enum TGPABINDER_COMMON:Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum TGPABINDER_INTERNATIONAL:Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum VIVO:Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum VIVO_BINDER:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

.field public static final enum VIVO_KOG_BINDER:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

.field public static final enum VIVO_SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

.field public static final enum XIAOMI:Lcom/ihoc/mgpa/vendor/VendorBridgeType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string v1, "none"

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->NONE:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v1, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string v2, "socket"

    const-string v4, "SOCKET"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v2, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string v4, "kogsocket"

    const-string v6, "KOGSOCKET"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->KOGSOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v4, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string/jumbo v6, "tgpabinder"

    const-string v8, "TGPABINDER_COMMON"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->TGPABINDER_COMMON:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v6, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string v8, "binderv1"

    const-string v10, "STANDARD_BINDER_V1"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->STANDARD_BINDER_V1:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v8, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string/jumbo v10, "tgpabinder2"

    const-string v12, "TGPABINDER_INTERNATIONAL"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->TGPABINDER_INTERNATIONAL:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v10, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string v12, "binderv2"

    const-string v14, "STANDARD_BINDER_V2"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->STANDARD_BINDER_V2:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v12, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string v14, "samsung"

    const-string v15, "SAMSUNG_INTERNATIONAL"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->SAMSUNG_INTERNATIONAL:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v14, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string/jumbo v15, "vivo"

    const-string v13, "VIVO"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v13, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string/jumbo v15, "vivo2"

    const-string v11, "VIVO_SOCKET"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v11, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string/jumbo v15, "vivobinder"

    const-string v9, "VIVO_BINDER"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_BINDER:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v9, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string/jumbo v15, "vivokogbinder"

    const-string v7, "VIVO_KOG_BINDER"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_KOG_BINDER:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v7, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string/jumbo v15, "xiaomi"

    const-string v5, "XIAOMI"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->XIAOMI:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v5, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string v15, "oppo"

    const-string v3, "OPPO"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->OPPO:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    new-instance v3, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const-string v15, "oppo2"

    const-string v7, "OPPO_COSA"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->OPPO_COSA:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const/16 v7, 0xf

    new-array v7, v7, [Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const/4 v15, 0x0

    aput-object v0, v7, v15

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v14, v7, v0

    const/16 v0, 0x9

    aput-object v13, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    const/16 v0, 0xb

    aput-object v9, v7, v0

    const/16 v0, 0xc

    aput-object v16, v7, v0

    const/16 v0, 0xd

    aput-object v17, v7, v0

    aput-object v3, v7, v5

    sput-object v7, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->$VALUES:[Lcom/ihoc/mgpa/vendor/VendorBridgeType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->type:Ljava/lang/String;

    return-void
.end method

.method public static getTypeByStr(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 5

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->values()[Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->NONE:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/vendor/VendorBridgeType;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->$VALUES:[Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/vendor/VendorBridgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->type:Ljava/lang/String;

    return-object v0
.end method
