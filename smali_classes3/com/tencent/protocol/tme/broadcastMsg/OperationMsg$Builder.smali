.class public final Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;",
        ">;"
    }
.end annotation


# instance fields
.field public duration:Ljava/lang/Integer;

.field public msg_content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

.field public msg_type:Ljava/lang/Integer;

.field public msgid:Ljava/lang/String;

.field public roomid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;->msgid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;->msgid:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;->roomid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;->roomid:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;->msg_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;->msg_type:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;->msg_content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;->msg_content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;->duration:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;->duration:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;->build()Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$1;)V

    return-object v0
.end method

.method public duration(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;->duration:Ljava/lang/Integer;

    return-object p0
.end method

.method public msg_content(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;->msg_content:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    return-object p0
.end method

.method public msg_type(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;->msg_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public msgid(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;->msgid:Ljava/lang/String;

    return-object p0
.end method

.method public roomid(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/OperationMsg$Builder;->roomid:Ljava/lang/String;

    return-object p0
.end method
