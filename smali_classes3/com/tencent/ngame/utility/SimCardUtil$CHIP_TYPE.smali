.class final enum Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;
.super Ljava/lang/Enum;
.source "SimCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ngame/utility/SimCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CHIP_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

.field public static final enum MTK:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

.field public static final enum MTK2:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

.field public static final enum QCOM:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

.field public static final enum SINGLE:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

.field public static final enum SPREADTRUM:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 271
    new-instance v0, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    const-string v1, "MTK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->MTK:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    .line 272
    new-instance v1, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    const-string v3, "MTK2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->MTK2:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    .line 273
    new-instance v3, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    const-string v5, "SPREADTRUM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->SPREADTRUM:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    .line 274
    new-instance v5, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    const-string v7, "QCOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->QCOM:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    .line 275
    new-instance v7, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    const-string v9, "SINGLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->SINGLE:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    const/4 v9, 0x5

    .line 270
    new-array v9, v9, [Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->$VALUES:[Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 270
    const-class v0, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;
    .locals 1

    .line 270
    sget-object v0, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->$VALUES:[Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    invoke-virtual {v0}, [Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    return-object v0
.end method
