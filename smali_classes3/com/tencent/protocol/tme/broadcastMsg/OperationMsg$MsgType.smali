.class public final enum Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/tmes/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MsgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;",
        ">;",
        "Lcom/squareup/tmes/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

.field public static final enum kMsgTypeBase:Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

.field public static final enum kMsgTypeChatRoom:Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

.field public static final enum kMsgTypeLive:Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    const-string v1, "kMsgTypeBase"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->kMsgTypeBase:Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    new-instance v1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    const-string v3, "kMsgTypeChatRoom"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->kMsgTypeChatRoom:Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    new-instance v3, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    const-string v5, "kMsgTypeLive"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->kMsgTypeLive:Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->$VALUES:[Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

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

    iput p3, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;
    .locals 1

    const-class v0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;
    .locals 1

    sget-object v0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->$VALUES:[Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    invoke-virtual {v0}, [Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$MsgType;->value:I

    return v0
.end method
