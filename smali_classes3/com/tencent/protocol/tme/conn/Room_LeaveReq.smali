.class public final Lcom/tencent/protocol/tme/conn/Room_LeaveReq;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/conn/Room_LeaveReq$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_ROOMID:Ljava/lang/String; = ""


# instance fields
.field public final roomid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/tencent/protocol/tme/conn/Room_LeaveReq$Builder;)V
    .locals 1

    iget-object v0, p1, Lcom/tencent/protocol/tme/conn/Room_LeaveReq$Builder;->roomid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/protocol/tme/conn/Room_LeaveReq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/conn/Room_LeaveReq$Builder;Lcom/tencent/protocol/tme/conn/Room_LeaveReq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/conn/Room_LeaveReq;-><init>(Lcom/tencent/protocol/tme/conn/Room_LeaveReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/Room_LeaveReq;->roomid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/tencent/protocol/tme/conn/Room_LeaveReq;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lcom/tencent/protocol/tme/conn/Room_LeaveReq;->roomid:Ljava/lang/String;

    check-cast p1, Lcom/tencent/protocol/tme/conn/Room_LeaveReq;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/Room_LeaveReq;->roomid:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/tencent/protocol/tme/conn/Room_LeaveReq;->roomid:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :goto_1
    return v0
.end method
