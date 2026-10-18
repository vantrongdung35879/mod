.class public final enum Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/tmes/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;",
        ">;",
        "Lcom/squareup/tmes/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

.field public static final enum AuthTokenErrCode_QQAuthFail:Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

.field public static final enum AuthTokenErrCode_Success:Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

.field public static final enum AuthTokenErrCode_UnknowAccount:Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

.field public static final enum AuthTokenErrCode_WeChatAuthFail:Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    const-string v1, "AuthTokenErrCode_Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;->AuthTokenErrCode_Success:Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    new-instance v1, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    const-string v3, "AuthTokenErrCode_UnknowAccount"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;->AuthTokenErrCode_UnknowAccount:Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    new-instance v3, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    const-string v5, "AuthTokenErrCode_QQAuthFail"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;->AuthTokenErrCode_QQAuthFail:Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    new-instance v5, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    const-string v7, "AuthTokenErrCode_WeChatAuthFail"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;->AuthTokenErrCode_WeChatAuthFail:Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;->$VALUES:[Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

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

    iput p3, p0, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;
    .locals 1

    const-class v0, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    return-object p0
.end method

.method public static values()[Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;->$VALUES:[Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    invoke-virtual {v0}, [Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/tencent/protocol/tme/auth/AuthTokenErrCode;->value:I

    return v0
.end method
