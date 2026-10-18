.class public final enum Lcom/tencent/protocol/tme/auth/auth_cmd_types;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/tmes/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/protocol/tme/auth/auth_cmd_types;",
        ">;",
        "Lcom/squareup/tmes/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/protocol/tme/auth/auth_cmd_types;

.field public static final enum CMD_AUTH:Lcom/tencent/protocol/tme/auth/auth_cmd_types;

.field public static final enum CMD_BASE:Lcom/tencent/protocol/tme/auth/auth_cmd_types;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    const-string v1, "CMD_BASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/protocol/tme/auth/auth_cmd_types;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->CMD_BASE:Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    new-instance v1, Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    const/16 v3, 0x1006

    const-string v4, "CMD_AUTH"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/tencent/protocol/tme/auth/auth_cmd_types;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->CMD_AUTH:Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    sput-object v3, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->$VALUES:[Lcom/tencent/protocol/tme/auth/auth_cmd_types;

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

    iput p3, p0, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/protocol/tme/auth/auth_cmd_types;
    .locals 1

    const-class v0, Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    return-object p0
.end method

.method public static values()[Lcom/tencent/protocol/tme/auth/auth_cmd_types;
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->$VALUES:[Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    invoke-virtual {v0}, [Lcom/tencent/protocol/tme/auth/auth_cmd_types;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->value:I

    return v0
.end method
