.class public final enum Lcom/ihoc/mgpa/vendor/VendorErrCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/vendor/VendorErrCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum HUAWEI_GAMEKIT_NOT_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum OPPO_MOBILE_NOT_SUPPORT_SDK:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum SAMSUNG_GAME_SERVICE_HELPER_INIT_EXCEPTION:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum SAMSUNG_GAME_SERVICE_HELPER_INIT_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum SAMSUNG_GAME_SERVICE_HELPER_IS_NULL:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum SAMSUNG_GAME_SERVICE_HELPER_REGISTERED_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum SAMSUNG_GAME_SERVICE_HELPER_UN_BIND_SUCC:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum SAMSUNG_SPA_NOT_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum TGPA_BINDER_AUTH_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum TGPA_BINDER_NOT_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum TGPA_BINDER_REGISTER_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum VIVO_BINDER_PERMISSION_CHECK_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum VIVO_BINDER_PERMISSION_CODE_GET_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum VIVO_LOCAL_SOCKET_NOT_AVAILABLE:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum XIAOMI_MOBILE_GET_DEVICE_ID_EXCEPTION:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum XIAOMI_MOBILE_GET_DEVICE_ID_NO_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum XIAOMI_MOBILE_GET_DEVICE_ID_PERMISSION_ERROR:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum XIAOMI_MOBILE_NOTIFY_GAME_SECENE_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum XIAOMI_MOBILE_NOT_SUPPORT_SDK:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum XIAOMI_MOBILE_REGISTER_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

.field public static final enum XIAOMI_MOBILE_UNREGISTER_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;


# instance fields
.field private final code:I


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/4 v1, -0x1

    const-string v2, "FAILED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v1, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const-string v2, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SUCCESS:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v2, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v5, 0x15f

    const-string v6, "VIVO_LOCAL_SOCKET_NOT_AVAILABLE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v5}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ihoc/mgpa/vendor/VendorErrCode;->VIVO_LOCAL_SOCKET_NOT_AVAILABLE:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v5, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const-string v6, "VIVO_BINDER_PERMISSION_CODE_GET_FAILED"

    const/4 v8, 0x3

    const/16 v9, 0x191

    invoke-direct {v5, v6, v8, v9}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ihoc/mgpa/vendor/VendorErrCode;->VIVO_BINDER_PERMISSION_CODE_GET_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v6, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const-string v10, "VIVO_BINDER_PERMISSION_CHECK_FAILED"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v9}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ihoc/mgpa/vendor/VendorErrCode;->VIVO_BINDER_PERMISSION_CHECK_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v9, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v10, 0x1c3

    const-string v12, "SAMSUNG_GAME_SERVICE_HELPER_IS_NULL"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v10}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SAMSUNG_GAME_SERVICE_HELPER_IS_NULL:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v10, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v12, 0x1c4

    const-string v14, "SAMSUNG_GAME_SERVICE_HELPER_INIT_FAILED"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SAMSUNG_GAME_SERVICE_HELPER_INIT_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v12, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v14, 0x1c5

    const-string v15, "SAMSUNG_GAME_SERVICE_HELPER_REGISTERED_FAILED"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SAMSUNG_GAME_SERVICE_HELPER_REGISTERED_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v14, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x1c6

    const-string v13, "SAMSUNG_GAME_SERVICE_HELPER_UN_BIND_SUCC"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SAMSUNG_GAME_SERVICE_HELPER_UN_BIND_SUCC:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v13, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x1c7

    const-string v11, "SAMSUNG_GAME_SERVICE_HELPER_INIT_EXCEPTION"

    const/16 v8, 0x9

    invoke-direct {v13, v11, v8, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SAMSUNG_GAME_SERVICE_HELPER_INIT_EXCEPTION:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v11, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x1cc

    const-string v8, "SAMSUNG_SPA_NOT_SUPPORT"

    const/16 v7, 0xa

    invoke-direct {v11, v8, v7, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ihoc/mgpa/vendor/VendorErrCode;->SAMSUNG_SPA_NOT_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v8, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x1f5

    const-string v7, "HUAWEI_GAMEKIT_NOT_SUPPORT"

    const/16 v4, 0xb

    invoke-direct {v8, v7, v4, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/ihoc/mgpa/vendor/VendorErrCode;->HUAWEI_GAMEKIT_NOT_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v7, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x259

    const-string v4, "XIAOMI_MOBILE_NOT_SUPPORT_SDK"

    const/16 v3, 0xc

    invoke-direct {v7, v4, v3, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ihoc/mgpa/vendor/VendorErrCode;->XIAOMI_MOBILE_NOT_SUPPORT_SDK:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v4, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x25a

    const-string v3, "XIAOMI_MOBILE_REGISTER_FAILED"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v4, v3, v7, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ihoc/mgpa/vendor/VendorErrCode;->XIAOMI_MOBILE_REGISTER_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v3, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x25b

    const-string v7, "XIAOMI_MOBILE_UNREGISTER_FAILED"

    move-object/from16 v17, v4

    const/16 v4, 0xe

    invoke-direct {v3, v7, v4, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ihoc/mgpa/vendor/VendorErrCode;->XIAOMI_MOBILE_UNREGISTER_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v7, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x25c

    const-string v4, "XIAOMI_MOBILE_NOTIFY_GAME_SECENE_FAILED"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v4, v3, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ihoc/mgpa/vendor/VendorErrCode;->XIAOMI_MOBILE_NOTIFY_GAME_SECENE_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v4, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x25d

    const-string v3, "XIAOMI_MOBILE_GET_DEVICE_ID_PERMISSION_ERROR"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v4, v3, v7, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ihoc/mgpa/vendor/VendorErrCode;->XIAOMI_MOBILE_GET_DEVICE_ID_PERMISSION_ERROR:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v3, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x25e

    const-string v7, "XIAOMI_MOBILE_GET_DEVICE_ID_EXCEPTION"

    move-object/from16 v20, v4

    const/16 v4, 0x11

    invoke-direct {v3, v7, v4, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ihoc/mgpa/vendor/VendorErrCode;->XIAOMI_MOBILE_GET_DEVICE_ID_EXCEPTION:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v7, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x25f

    const-string v4, "XIAOMI_MOBILE_GET_DEVICE_ID_NO_SUPPORT"

    move-object/from16 v21, v3

    const/16 v3, 0x12

    invoke-direct {v7, v4, v3, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ihoc/mgpa/vendor/VendorErrCode;->XIAOMI_MOBILE_GET_DEVICE_ID_NO_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v4, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x2bd

    const-string v3, "OPPO_MOBILE_NOT_SUPPORT_SDK"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v4, v3, v7, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ihoc/mgpa/vendor/VendorErrCode;->OPPO_MOBILE_NOT_SUPPORT_SDK:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v3, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x321

    const-string v7, "TGPA_BINDER_NOT_SUPPORT"

    move-object/from16 v23, v4

    const/16 v4, 0x14

    invoke-direct {v3, v7, v4, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ihoc/mgpa/vendor/VendorErrCode;->TGPA_BINDER_NOT_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v7, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v15, 0x15

    const/16 v4, 0x322

    move-object/from16 v24, v3

    const-string v3, "TGPA_BINDER_REGISTER_FAILED"

    invoke-direct {v7, v3, v15, v4}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ihoc/mgpa/vendor/VendorErrCode;->TGPA_BINDER_REGISTER_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    new-instance v3, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v4, 0x16

    const/16 v15, 0x323

    move-object/from16 v25, v7

    const-string v7, "TGPA_BINDER_AUTH_FAILED"

    invoke-direct {v3, v7, v4, v15}, Lcom/ihoc/mgpa/vendor/VendorErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ihoc/mgpa/vendor/VendorErrCode;->TGPA_BINDER_AUTH_FAILED:Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/16 v4, 0x17

    new-array v4, v4, [Lcom/ihoc/mgpa/vendor/VendorErrCode;

    const/4 v7, 0x0

    aput-object v0, v4, v7

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v6, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v10, v4, v0

    const/4 v0, 0x7

    aput-object v12, v4, v0

    const/16 v0, 0x8

    aput-object v14, v4, v0

    const/16 v0, 0x9

    aput-object v13, v4, v0

    const/16 v0, 0xa

    aput-object v11, v4, v0

    const/16 v0, 0xb

    aput-object v8, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v3, v4, v0

    sput-object v4, Lcom/ihoc/mgpa/vendor/VendorErrCode;->$VALUES:[Lcom/ihoc/mgpa/vendor/VendorErrCode;

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

    iput p3, p0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/VendorErrCode;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/vendor/VendorErrCode;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->$VALUES:[Lcom/ihoc/mgpa/vendor/VendorErrCode;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/vendor/VendorErrCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/vendor/VendorErrCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->code:I

    return v0
.end method

.method public getStringCode()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/ihoc/mgpa/vendor/VendorErrCode;->code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
