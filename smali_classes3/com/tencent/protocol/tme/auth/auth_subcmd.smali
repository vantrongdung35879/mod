.class public final enum Lcom/tencent/protocol/tme/auth/auth_subcmd;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/tmes/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/protocol/tme/auth/auth_subcmd;",
        ">;",
        "Lcom/squareup/tmes/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/protocol/tme/auth/auth_subcmd;

.field public static final enum SUBCMD_AUTH_TOKEN:Lcom/tencent/protocol/tme/auth/auth_subcmd;

.field public static final enum SUBCMD_BASE:Lcom/tencent/protocol/tme/auth/auth_subcmd;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/protocol/tme/auth/auth_subcmd;

    const-string v1, "SUBCMD_BASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/protocol/tme/auth/auth_subcmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/protocol/tme/auth/auth_subcmd;->SUBCMD_BASE:Lcom/tencent/protocol/tme/auth/auth_subcmd;

    new-instance v1, Lcom/tencent/protocol/tme/auth/auth_subcmd;

    const-string v3, "SUBCMD_AUTH_TOKEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/protocol/tme/auth/auth_subcmd;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/protocol/tme/auth/auth_subcmd;->SUBCMD_AUTH_TOKEN:Lcom/tencent/protocol/tme/auth/auth_subcmd;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tencent/protocol/tme/auth/auth_subcmd;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/tencent/protocol/tme/auth/auth_subcmd;->$VALUES:[Lcom/tencent/protocol/tme/auth/auth_subcmd;

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

    iput p3, p0, Lcom/tencent/protocol/tme/auth/auth_subcmd;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/protocol/tme/auth/auth_subcmd;
    .locals 1

    const-class v0, Lcom/tencent/protocol/tme/auth/auth_subcmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/protocol/tme/auth/auth_subcmd;

    return-object p0
.end method

.method public static values()[Lcom/tencent/protocol/tme/auth/auth_subcmd;
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/auth/auth_subcmd;->$VALUES:[Lcom/tencent/protocol/tme/auth/auth_subcmd;

    invoke-virtual {v0}, [Lcom/tencent/protocol/tme/auth/auth_subcmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/protocol/tme/auth/auth_subcmd;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/tencent/protocol/tme/auth/auth_subcmd;->value:I

    return v0
.end method
