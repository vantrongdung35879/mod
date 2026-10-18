.class public final Lcom/tencent/protocol/tme/conn/HelloRsp;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CLOSE_TCP:Ljava/lang/Integer;

.field public static final DEFAULT_HELLO_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_RESULT:Ljava/lang/Integer;


# instance fields
.field public final close_tcp:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final hello_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field

.field public final result:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/conn/HelloRsp;->DEFAULT_RESULT:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/conn/HelloRsp;->DEFAULT_HELLO_TIME:Ljava/lang/Integer;

    sput-object v0, Lcom/tencent/protocol/tme/conn/HelloRsp;->DEFAULT_CLOSE_TCP:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;)V
    .locals 3

    iget-object v0, p1, Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;->result:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;->hello_time:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;->close_tcp:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/protocol/tme/conn/HelloRsp;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;Lcom/tencent/protocol/tme/conn/HelloRsp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/conn/HelloRsp;-><init>(Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/HelloRsp;->result:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/tencent/protocol/tme/conn/HelloRsp;->hello_time:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/tencent/protocol/tme/conn/HelloRsp;->close_tcp:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/protocol/tme/conn/HelloRsp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/protocol/tme/conn/HelloRsp;

    iget-object v1, p0, Lcom/tencent/protocol/tme/conn/HelloRsp;->result:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/conn/HelloRsp;->result:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/conn/HelloRsp;->hello_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/conn/HelloRsp;->hello_time:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/conn/HelloRsp;->close_tcp:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/HelloRsp;->close_tcp:Ljava/lang/Integer;

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

    iget-object v0, p0, Lcom/tencent/protocol/tme/conn/HelloRsp;->result:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/conn/HelloRsp;->hello_time:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/conn/HelloRsp;->close_tcp:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :cond_3
    return v0
.end method
