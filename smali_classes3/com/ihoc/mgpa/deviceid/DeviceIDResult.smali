.class public final enum Lcom/ihoc/mgpa/deviceid/DeviceIDResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/deviceid/DeviceIDResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field public static final enum CLOUD_IS_CLOSE:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field public static final enum CONTEXT_IS_NULL:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field public static final enum GETTER_IS_NULL:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field public static final enum NO_DEVICE_TOKEN_MODULE:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field public static final enum OAID_GET_EXCEPTION:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field public static final enum OAID_GET_NULL:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field public static final enum OAID_SERVICE_BIND_EXCEPTION:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field public static final enum OAID_SERVICE_BIND_FAILED:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field public static final enum PLATFORM_NOT_SUPPORT:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field public static final enum SUCCESS:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field public static final enum VENDOR_NOT_SUPPORT:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field public static final enum WAITING_TO_GET:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;


# instance fields
.field code:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->SUCCESS:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    new-instance v1, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/4 v3, -0x1

    const-string v4, "PLATFORM_NOT_SUPPORT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->PLATFORM_NOT_SUPPORT:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    new-instance v3, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/4 v4, -0x2

    const-string v6, "WAITING_TO_GET"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->WAITING_TO_GET:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    new-instance v4, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/4 v6, -0x3

    const-string v8, "NO_DEVICE_TOKEN_MODULE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->NO_DEVICE_TOKEN_MODULE:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    new-instance v6, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/16 v8, -0x9

    const-string v10, "GETTER_IS_NULL"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->GETTER_IS_NULL:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    new-instance v8, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/16 v10, -0xa

    const-string v12, "CONTEXT_IS_NULL"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->CONTEXT_IS_NULL:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    new-instance v10, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/16 v12, -0xb

    const-string v14, "OAID_GET_NULL"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_GET_NULL:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    new-instance v12, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/16 v14, -0xc

    const-string v15, "VENDOR_NOT_SUPPORT"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->VENDOR_NOT_SUPPORT:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    new-instance v14, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/16 v15, -0xd

    const-string v13, "CLOUD_IS_CLOSE"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->CLOUD_IS_CLOSE:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    new-instance v13, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/16 v15, -0xe

    const-string v11, "OAID_GET_EXCEPTION"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_GET_EXCEPTION:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    new-instance v11, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/16 v15, -0xf

    const-string v9, "OAID_SERVICE_BIND_FAILED"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_SERVICE_BIND_FAILED:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    new-instance v9, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/16 v15, -0x10

    const-string v7, "OAID_SERVICE_BIND_EXCEPTION"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_SERVICE_BIND_EXCEPTION:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    const/16 v7, 0xc

    new-array v7, v7, [Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    aput-object v0, v7, v2

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

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

    aput-object v9, v7, v5

    sput-object v7, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->$VALUES:[Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

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

    iput p3, p0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/deviceid/DeviceIDResult;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/deviceid/DeviceIDResult;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->$VALUES:[Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->code:I

    return v0
.end method

.method public getStrCode()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
