.class public final Lcom/tencent/protocol/tme/conn/HelloReq;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/conn/HelloReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CUR_TIME:Ljava/lang/Integer;


# instance fields
.field public final cur_time:Ljava/lang/Integer;
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

    sput-object v0, Lcom/tencent/protocol/tme/conn/HelloReq;->DEFAULT_CUR_TIME:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/conn/HelloReq$Builder;)V
    .locals 1

    iget-object v0, p1, Lcom/tencent/protocol/tme/conn/HelloReq$Builder;->cur_time:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/tencent/protocol/tme/conn/HelloReq;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/conn/HelloReq$Builder;Lcom/tencent/protocol/tme/conn/HelloReq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/conn/HelloReq;-><init>(Lcom/tencent/protocol/tme/conn/HelloReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/HelloReq;->cur_time:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/tencent/protocol/tme/conn/HelloReq;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lcom/tencent/protocol/tme/conn/HelloReq;->cur_time:Ljava/lang/Integer;

    check-cast p1, Lcom/tencent/protocol/tme/conn/HelloReq;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/HelloReq;->cur_time:Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/protocol/tme/conn/HelloReq;->cur_time:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :goto_1
    return v0
.end method
