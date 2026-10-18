.class public final enum Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0016\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;",
        "",
        "code",
        "",
        "(Ljava/lang/String;II)V",
        "getCode",
        "()I",
        "SUPPORTED",
        "SUCCESS",
        "SERVICE_UNAVAILABLE",
        "INSTANCE_UNAVAILABLE",
        "DEVICE_UNAVAILABLE",
        "LICENSE_FAILED",
        "STATUS_NOT_SUPPORTED",
        "API_LEVEL_FAILED",
        "API_LEVEL_TOO_LOW",
        "INPUT_SET_FAILED",
        "VENDOR_ABILITY_UNKNOWN",
        "VENDOR_KEY_UNKNOWN",
        "VENDOR_RESPONSE_EMPTY",
        "VENDOR_RESPONSE_INVALID_ACTION",
        "VENDOR_SUPPORT_DATA_INCORRECT",
        "VENDOR_SUPPORT_DATA_JSON_EXCEPTION",
        "VENDOR_SWITCH_STATE_DATA_INCORRECT",
        "VENDOR_SWITCH_STATE_JSON_EXCEPTION",
        "kgvmp_internationalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum API_LEVEL_FAILED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum API_LEVEL_TOO_LOW:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum DEVICE_UNAVAILABLE:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum INPUT_SET_FAILED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum INSTANCE_UNAVAILABLE:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum LICENSE_FAILED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum STATUS_NOT_SUPPORTED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum SUCCESS:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum SUPPORTED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum VENDOR_ABILITY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum VENDOR_KEY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum VENDOR_RESPONSE_EMPTY:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum VENDOR_RESPONSE_INVALID_ACTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum VENDOR_SUPPORT_DATA_INCORRECT:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum VENDOR_SUPPORT_DATA_JSON_EXCEPTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum VENDOR_SWITCH_STATE_DATA_INCORRECT:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

.field public static final enum VENDOR_SWITCH_STATE_JSON_EXCEPTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SUPPORTED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SUCCESS:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SERVICE_UNAVAILABLE:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->INSTANCE_UNAVAILABLE:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->DEVICE_UNAVAILABLE:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->LICENSE_FAILED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->STATUS_NOT_SUPPORTED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->API_LEVEL_FAILED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->API_LEVEL_TOO_LOW:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->INPUT_SET_FAILED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_ABILITY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_KEY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_EMPTY:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_INVALID_ACTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SUPPORT_DATA_INCORRECT:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SUPPORT_DATA_JSON_EXCEPTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SWITCH_STATE_DATA_INCORRECT:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SWITCH_STATE_JSON_EXCEPTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const-string v1, "SUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SUPPORTED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const-string v1, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SUCCESS:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 6
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "SERVICE_UNAVAILABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->SERVICE_UNAVAILABLE:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 9
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v1, 0x3

    const/4 v2, -0x2

    const-string v3, "INSTANCE_UNAVAILABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->INSTANCE_UNAVAILABLE:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 12
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v1, 0x4

    const/4 v2, -0x3

    const-string v3, "DEVICE_UNAVAILABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->DEVICE_UNAVAILABLE:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 15
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v1, 0x5

    const/4 v2, -0x4

    const-string v3, "LICENSE_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->LICENSE_FAILED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 18
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v1, 0x6

    const/4 v2, -0x5

    const-string v3, "STATUS_NOT_SUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->STATUS_NOT_SUPPORTED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 21
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/4 v1, 0x7

    const/4 v2, -0x6

    const-string v3, "API_LEVEL_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->API_LEVEL_FAILED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 24
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v1, 0x8

    const/4 v2, -0x7

    const-string v3, "API_LEVEL_TOO_LOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->API_LEVEL_TOO_LOW:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 27
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v1, 0x9

    const/4 v2, -0x8

    const-string v3, "INPUT_SET_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->INPUT_SET_FAILED:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 30
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v1, 0xa

    const/16 v2, -0x64

    const-string v3, "VENDOR_ABILITY_UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_ABILITY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 33
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v1, 0xb

    const/16 v2, -0x65

    const-string v3, "VENDOR_KEY_UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_KEY_UNKNOWN:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 36
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v1, 0xc

    const/16 v2, -0x66

    const-string v3, "VENDOR_RESPONSE_EMPTY"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_EMPTY:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 39
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v1, 0xd

    const/16 v2, -0x67

    const-string v3, "VENDOR_RESPONSE_INVALID_ACTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_RESPONSE_INVALID_ACTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 42
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v1, 0xe

    const/16 v2, -0x6e

    const-string v3, "VENDOR_SUPPORT_DATA_INCORRECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SUPPORT_DATA_INCORRECT:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 45
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v1, 0xf

    const/16 v2, -0x6f

    const-string v3, "VENDOR_SUPPORT_DATA_JSON_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SUPPORT_DATA_JSON_EXCEPTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 48
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v1, 0x10

    const/16 v2, -0x78

    const-string v3, "VENDOR_SWITCH_STATE_DATA_INCORRECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SWITCH_STATE_DATA_INCORRECT:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    .line 51
    new-instance v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    const/16 v1, 0x11

    const/16 v2, -0x79

    const-string v3, "VENDOR_SWITCH_STATE_JSON_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->VENDOR_SWITCH_STATE_JSON_EXCEPTION:Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-static {}, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->$values()[Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->$VALUES:[Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->$VALUES:[Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/superframe/SuperFrameErrorCode;->code:I

    return v0
.end method
