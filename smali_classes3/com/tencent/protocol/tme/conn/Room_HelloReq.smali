.class public final Lcom/tencent/protocol/tme/conn/Room_HelloReq;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/conn/Room_HelloReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CUR_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_NICK_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_ROOMID:Ljava/lang/String; = ""


# instance fields
.field public final cur_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final nick_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final roomid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->DEFAULT_CUR_TIME:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/conn/Room_HelloReq$Builder;)V
    .locals 3

    iget-object v0, p1, Lcom/tencent/protocol/tme/conn/Room_HelloReq$Builder;->roomid:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/protocol/tme/conn/Room_HelloReq$Builder;->cur_time:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/tencent/protocol/tme/conn/Room_HelloReq$Builder;->nick_name:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/protocol/tme/conn/Room_HelloReq;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/conn/Room_HelloReq$Builder;Lcom/tencent/protocol/tme/conn/Room_HelloReq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/conn/Room_HelloReq;-><init>(Lcom/tencent/protocol/tme/conn/Room_HelloReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->roomid:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->cur_time:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->nick_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/protocol/tme/conn/Room_HelloReq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/protocol/tme/conn/Room_HelloReq;

    iget-object v1, p0, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->roomid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->roomid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->cur_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->cur_time:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->nick_name:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->nick_name:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->roomid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->cur_time:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/conn/Room_HelloReq;->nick_name:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :cond_3
    return v0
.end method
