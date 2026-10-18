.class public final enum Lcom/ihoc/mgpa/vendor/VendorStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/vendor/VendorStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum BIG_CORE_AFFINITY:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum DUAL_WIFI:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum GAME_LOAD_NOTIFY:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum LITTLE_CORE_AFFINITY:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum LOCAL_WIFI_OPTIMIZE:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum NETWORK_API_INVOKE:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum NET_OPTIMIZE:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum NET_SMART_SELECTION:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum NET_UPLINK_OPTIMIZE:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum NOT_FOUND:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum QOE_INFO:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum SCENE_GUARANTEE:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum SSP_AI:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum THERMAL_STATUS:Lcom/ihoc/mgpa/vendor/VendorStrategy;

.field public static final enum TOUCH_EVENT_MARK:Lcom/ihoc/mgpa/vendor/VendorStrategy;


# instance fields
.field private final strategy:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const/4 v1, -0x1

    const-string v2, "NOT_FOUND"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/vendor/VendorStrategy;->NOT_FOUND:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v1, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v2, "THERMAL_STATUS"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ihoc/mgpa/vendor/VendorStrategy;->THERMAL_STATUS:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v2, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v5, "SCENE_GUARANTEE"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v6}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ihoc/mgpa/vendor/VendorStrategy;->SCENE_GUARANTEE:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v5, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v7, "BIG_CORE_AFFINITY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ihoc/mgpa/vendor/VendorStrategy;->BIG_CORE_AFFINITY:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v7, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v9, "LITTLE_CORE_AFFINITY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ihoc/mgpa/vendor/VendorStrategy;->LITTLE_CORE_AFFINITY:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v9, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v11, "GAME_LOAD_NOTIFY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ihoc/mgpa/vendor/VendorStrategy;->GAME_LOAD_NOTIFY:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v11, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v13, "NET_OPTIMIZE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ihoc/mgpa/vendor/VendorStrategy;->NET_OPTIMIZE:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v13, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v15, "SSP_AI"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ihoc/mgpa/vendor/VendorStrategy;->SSP_AI:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v15, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v14, "TOUCH_EVENT_MARK"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/ihoc/mgpa/vendor/VendorStrategy;->TOUCH_EVENT_MARK:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v14, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v12, "NETWORK_API_INVOKE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/ihoc/mgpa/vendor/VendorStrategy;->NETWORK_API_INVOKE:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v12, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v10, "LOCAL_WIFI_OPTIMIZE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/ihoc/mgpa/vendor/VendorStrategy;->LOCAL_WIFI_OPTIMIZE:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v10, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v8, "NET_UPLINK_OPTIMIZE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/ihoc/mgpa/vendor/VendorStrategy;->NET_UPLINK_OPTIMIZE:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v8, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v6, "NET_SMART_SELECTION"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/ihoc/mgpa/vendor/VendorStrategy;->NET_SMART_SELECTION:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v6, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v4, "DUAL_WIFI"

    const/16 v3, 0xd

    invoke-direct {v6, v4, v3, v3}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ihoc/mgpa/vendor/VendorStrategy;->DUAL_WIFI:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    new-instance v4, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const-string v3, "QOE_INFO"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v3, v6, v6}, Lcom/ihoc/mgpa/vendor/VendorStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ihoc/mgpa/vendor/VendorStrategy;->QOE_INFO:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const/16 v3, 0xf

    new-array v3, v3, [Lcom/ihoc/mgpa/vendor/VendorStrategy;

    const/16 v16, 0x0

    aput-object v0, v3, v16

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v11, v3, v0

    const/4 v0, 0x7

    aput-object v13, v3, v0

    const/16 v0, 0x8

    aput-object v15, v3, v0

    const/16 v0, 0x9

    aput-object v14, v3, v0

    const/16 v0, 0xa

    aput-object v12, v3, v0

    const/16 v0, 0xb

    aput-object v10, v3, v0

    const/16 v0, 0xc

    aput-object v8, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    aput-object v4, v3, v6

    sput-object v3, Lcom/ihoc/mgpa/vendor/VendorStrategy;->$VALUES:[Lcom/ihoc/mgpa/vendor/VendorStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ihoc/mgpa/vendor/VendorStrategy;->strategy:I

    return-void
.end method

.method public static getStrategy(I)Lcom/ihoc/mgpa/vendor/VendorStrategy;
    .locals 5

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorStrategy;->values()[Lcom/ihoc/mgpa/vendor/VendorStrategy;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ihoc/mgpa/vendor/VendorStrategy;->getStrategy()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/ihoc/mgpa/vendor/VendorStrategy;->NOT_FOUND:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    return-object p0
.end method

.method public static getStrategy(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorStrategy;
    .locals 0

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/ihoc/mgpa/vendor/VendorStrategy;->getStrategy(I)Lcom/ihoc/mgpa/vendor/VendorStrategy;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/ihoc/mgpa/vendor/VendorStrategy;->NOT_FOUND:Lcom/ihoc/mgpa/vendor/VendorStrategy;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorStrategy;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/vendor/VendorStrategy;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/vendor/VendorStrategy;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorStrategy;->$VALUES:[Lcom/ihoc/mgpa/vendor/VendorStrategy;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/vendor/VendorStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/vendor/VendorStrategy;

    return-object v0
.end method


# virtual methods
.method public getStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/vendor/VendorStrategy;->strategy:I

    return v0
.end method
