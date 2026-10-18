.class public final enum Lcom/tencent/protocol/tme/conn/conn_subcmd;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/tmes/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/protocol/tme/conn/conn_subcmd;",
        ">;",
        "Lcom/squareup/tmes/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/protocol/tme/conn/conn_subcmd;

.field public static final enum SUBCMD_BASE:Lcom/tencent/protocol/tme/conn/conn_subcmd;

.field public static final enum SUBCMD_CONN_HELLO:Lcom/tencent/protocol/tme/conn/conn_subcmd;

.field public static final enum SUBCMD_CONN_LOGIN:Lcom/tencent/protocol/tme/conn/conn_subcmd;

.field public static final enum SUBCMD_CONN_LOGOUT:Lcom/tencent/protocol/tme/conn/conn_subcmd;

.field public static final enum SUBCMD_CONN_PUSH:Lcom/tencent/protocol/tme/conn/conn_subcmd;

.field public static final enum SUBCMD_CONN_ROOM_ENTER:Lcom/tencent/protocol/tme/conn/conn_subcmd;

.field public static final enum SUBCMD_CONN_ROOM_HELLO:Lcom/tencent/protocol/tme/conn/conn_subcmd;

.field public static final enum SUBCMD_CONN_ROOM_LEAVE:Lcom/tencent/protocol/tme/conn/conn_subcmd;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/tencent/protocol/tme/conn/conn_subcmd;

    const-string v1, "SUBCMD_BASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/protocol/tme/conn/conn_subcmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_BASE:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    new-instance v1, Lcom/tencent/protocol/tme/conn/conn_subcmd;

    const-string v3, "SUBCMD_CONN_LOGIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/protocol/tme/conn/conn_subcmd;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_LOGIN:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    new-instance v3, Lcom/tencent/protocol/tme/conn/conn_subcmd;

    const-string v5, "SUBCMD_CONN_LOGOUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/protocol/tme/conn/conn_subcmd;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_LOGOUT:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    new-instance v5, Lcom/tencent/protocol/tme/conn/conn_subcmd;

    const-string v7, "SUBCMD_CONN_HELLO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tencent/protocol/tme/conn/conn_subcmd;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_HELLO:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    new-instance v7, Lcom/tencent/protocol/tme/conn/conn_subcmd;

    const-string v9, "SUBCMD_CONN_PUSH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/tencent/protocol/tme/conn/conn_subcmd;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_PUSH:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    new-instance v9, Lcom/tencent/protocol/tme/conn/conn_subcmd;

    const/16 v11, 0x11

    const-string v12, "SUBCMD_CONN_ROOM_ENTER"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v11}, Lcom/tencent/protocol/tme/conn/conn_subcmd;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_ROOM_ENTER:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    new-instance v11, Lcom/tencent/protocol/tme/conn/conn_subcmd;

    const/16 v12, 0x12

    const-string v14, "SUBCMD_CONN_ROOM_LEAVE"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v12}, Lcom/tencent/protocol/tme/conn/conn_subcmd;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_ROOM_LEAVE:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    new-instance v12, Lcom/tencent/protocol/tme/conn/conn_subcmd;

    const/16 v14, 0x13

    const-string v15, "SUBCMD_CONN_ROOM_HELLO"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/tencent/protocol/tme/conn/conn_subcmd;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/tencent/protocol/tme/conn/conn_subcmd;->SUBCMD_CONN_ROOM_HELLO:Lcom/tencent/protocol/tme/conn/conn_subcmd;

    const/16 v14, 0x8

    new-array v14, v14, [Lcom/tencent/protocol/tme/conn/conn_subcmd;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    aput-object v12, v14, v13

    sput-object v14, Lcom/tencent/protocol/tme/conn/conn_subcmd;->$VALUES:[Lcom/tencent/protocol/tme/conn/conn_subcmd;

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

    iput p3, p0, Lcom/tencent/protocol/tme/conn/conn_subcmd;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/protocol/tme/conn/conn_subcmd;
    .locals 1

    const-class v0, Lcom/tencent/protocol/tme/conn/conn_subcmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/protocol/tme/conn/conn_subcmd;

    return-object p0
.end method

.method public static values()[Lcom/tencent/protocol/tme/conn/conn_subcmd;
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/conn/conn_subcmd;->$VALUES:[Lcom/tencent/protocol/tme/conn/conn_subcmd;

    invoke-virtual {v0}, [Lcom/tencent/protocol/tme/conn/conn_subcmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/protocol/tme/conn/conn_subcmd;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/tencent/protocol/tme/conn/conn_subcmd;->value:I

    return v0
.end method
