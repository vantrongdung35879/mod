.class public final enum Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/tmes/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MsgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;",
        ">;",
        "Lcom/squareup/tmes/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

.field public static final enum kMsgTypeBase:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

.field public static final enum kMsgTypeHotWord:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

.field public static final enum kMsgTypeNormaL:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

.field public static final enum kMsgTypeRoomMgr:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

.field public static final enum kMsgTypeSystem:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    const-string v1, "kMsgTypeBase"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->kMsgTypeBase:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    new-instance v1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    const-string v3, "kMsgTypeNormaL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->kMsgTypeNormaL:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    new-instance v3, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    const-string v5, "kMsgTypeHotWord"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->kMsgTypeHotWord:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    new-instance v5, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    const-string v7, "kMsgTypeSystem"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->kMsgTypeSystem:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    new-instance v7, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    const-string v9, "kMsgTypeRoomMgr"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->kMsgTypeRoomMgr:Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->$VALUES:[Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

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

    iput p3, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;
    .locals 1

    const-class v0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->$VALUES:[Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    invoke-virtual {v0}, [Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$MsgType;->value:I

    return v0
.end method
