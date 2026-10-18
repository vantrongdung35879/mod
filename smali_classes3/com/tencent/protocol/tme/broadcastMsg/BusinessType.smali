.class public final enum Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/tmes/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;",
        ">;",
        "Lcom/squareup/tmes/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

.field public static final enum BUSINESS_TYPE_AOV_BATTLE_STATUS_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

.field public static final enum BUSINESS_TYPE_AOV_OPERATION_MESSAGE:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

.field public static final enum BUSINESS_TYPE_AOV_REALTIME_QUESTION_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

.field public static final enum BUSINESS_TYPE_AOV_RED_PACKET_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

.field public static final enum BUSINESS_TYPE_AOV_ROOMCHAT:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

.field public static final enum BUSINESS_TYPE_AOV_ROOMCHAT_IMPORTANT:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

.field public static final enum BUSINESS_TYPE_AOV_UPDATE_MATCH_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

.field public static final enum BUSINESS_TYPE_AOV_UPDATE_ROOM_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

.field public static final enum BUSINESS_TYPE_BASE:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    const-string v1, "BUSINESS_TYPE_BASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_BASE:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    new-instance v1, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    const/16 v3, 0x3e9

    const-string v4, "BUSINESS_TYPE_AOV_ROOMCHAT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_ROOMCHAT:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    new-instance v3, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    const/16 v4, 0x3ea

    const-string v6, "BUSINESS_TYPE_AOV_ROOMCHAT_IMPORTANT"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_ROOMCHAT_IMPORTANT:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    new-instance v4, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    const/16 v6, 0x3eb

    const-string v8, "BUSINESS_TYPE_AOV_OPERATION_MESSAGE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_OPERATION_MESSAGE:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    new-instance v6, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    const/16 v8, 0x3ec

    const-string v10, "BUSINESS_TYPE_AOV_UPDATE_ROOM_INFO"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_UPDATE_ROOM_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    new-instance v8, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    const/16 v10, 0x3ed

    const-string v12, "BUSINESS_TYPE_AOV_UPDATE_MATCH_INFO"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_UPDATE_MATCH_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    new-instance v10, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    const/16 v12, 0x3ee

    const-string v14, "BUSINESS_TYPE_AOV_REALTIME_QUESTION_INFO"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_REALTIME_QUESTION_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    new-instance v12, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    const/16 v14, 0x3ef

    const-string v15, "BUSINESS_TYPE_AOV_RED_PACKET_INFO"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_RED_PACKET_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    new-instance v14, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    const/16 v15, 0x3f0

    const-string v13, "BUSINESS_TYPE_AOV_BATTLE_STATUS_INFO"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->BUSINESS_TYPE_AOV_BATTLE_STATUS_INFO:Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    const/16 v13, 0x9

    new-array v13, v13, [Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    aput-object v0, v13, v2

    aput-object v1, v13, v5

    aput-object v3, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    sput-object v13, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->$VALUES:[Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

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

    iput p3, p0, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;
    .locals 1

    const-class v0, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->$VALUES:[Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    invoke-virtual {v0}, [Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/BusinessType;->value:I

    return v0
.end method
