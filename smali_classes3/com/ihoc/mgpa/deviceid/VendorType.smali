.class public final enum Lcom/ihoc/mgpa/deviceid/VendorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/deviceid/VendorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum ASUS:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum BLACKSHARK:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum FREEMEOS:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum HONOR:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum HUAWEI:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum LENOVO:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum MEIZU:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum MOTOROLA:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum NUBIA:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum ONEPLUS:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum OPPO:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum REALME:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum SAMSUNG:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum UNSUPPORT:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum VIVO:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum XIAOMI:Lcom/ihoc/mgpa/deviceid/VendorType;

.field public static final enum ZTE:Lcom/ihoc/mgpa/deviceid/VendorType;


# instance fields
.field private vendorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string/jumbo v1, "unsupport"

    const-string v2, "UNSUPPORT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->UNSUPPORT:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v1, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v2, "huawei"

    const-string v4, "HUAWEI"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/ihoc/mgpa/deviceid/VendorType;->HUAWEI:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v2, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v4, "honor"

    const-string v6, "HONOR"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/ihoc/mgpa/deviceid/VendorType;->HONOR:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v4, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string/jumbo v6, "xiaomi"

    const-string v8, "XIAOMI"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/ihoc/mgpa/deviceid/VendorType;->XIAOMI:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v6, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v8, "blackshark"

    const-string v10, "BLACKSHARK"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/ihoc/mgpa/deviceid/VendorType;->BLACKSHARK:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v8, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string/jumbo v10, "vivo"

    const-string v12, "VIVO"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/ihoc/mgpa/deviceid/VendorType;->VIVO:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v10, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v12, "oppo"

    const-string v14, "OPPO"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/ihoc/mgpa/deviceid/VendorType;->OPPO:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v12, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v14, "oneplus"

    const-string v15, "ONEPLUS"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/ihoc/mgpa/deviceid/VendorType;->ONEPLUS:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v14, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v15, "realme"

    const-string v13, "REALME"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/ihoc/mgpa/deviceid/VendorType;->REALME:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v13, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v15, "motorola"

    const-string v11, "MOTOROLA"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/ihoc/mgpa/deviceid/VendorType;->MOTOROLA:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v11, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v15, "lenovo"

    const-string v9, "LENOVO"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/ihoc/mgpa/deviceid/VendorType;->LENOVO:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v9, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v15, "asus"

    const-string v7, "ASUS"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/ihoc/mgpa/deviceid/VendorType;->ASUS:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v7, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v15, "samsung"

    const-string v5, "SAMSUNG"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/ihoc/mgpa/deviceid/VendorType;->SAMSUNG:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v5, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v15, "meizu"

    const-string v3, "MEIZU"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/ihoc/mgpa/deviceid/VendorType;->MEIZU:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v3, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v15, "nubia"

    const-string v7, "NUBIA"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/ihoc/mgpa/deviceid/VendorType;->NUBIA:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v7, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string/jumbo v15, "zte"

    const-string v5, "ZTE"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/ihoc/mgpa/deviceid/VendorType;->ZTE:Lcom/ihoc/mgpa/deviceid/VendorType;

    new-instance v5, Lcom/ihoc/mgpa/deviceid/VendorType;

    const-string v15, "freemeos"

    const-string v3, "FREEMEOS"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcom/ihoc/mgpa/deviceid/VendorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/ihoc/mgpa/deviceid/VendorType;->FREEMEOS:Lcom/ihoc/mgpa/deviceid/VendorType;

    const/16 v3, 0x11

    new-array v3, v3, [Lcom/ihoc/mgpa/deviceid/VendorType;

    const/4 v15, 0x0

    aput-object v0, v3, v15

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v14, v3, v0

    const/16 v0, 0x9

    aput-object v13, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    aput-object v5, v3, v7

    sput-object v3, Lcom/ihoc/mgpa/deviceid/VendorType;->$VALUES:[Lcom/ihoc/mgpa/deviceid/VendorType;

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

    iput-object p3, p0, Lcom/ihoc/mgpa/deviceid/VendorType;->vendorName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/deviceid/VendorType;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/deviceid/VendorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/deviceid/VendorType;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/deviceid/VendorType;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/deviceid/VendorType;->$VALUES:[Lcom/ihoc/mgpa/deviceid/VendorType;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/deviceid/VendorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/deviceid/VendorType;

    return-object v0
.end method


# virtual methods
.method public getVendorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/VendorType;->vendorName:Ljava/lang/String;

    return-object v0
.end method
