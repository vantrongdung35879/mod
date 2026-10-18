.class public final Lcom/tencent/protocol/tme/conn/LoginRsp;
.super Lcom/squareup/tmes/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/protocol/tme/conn/LoginRsp$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNSVR_IP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ERRMSG:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULT:Ljava/lang/Integer;


# instance fields
.field public final connsvr_ip:Ljava/util/List;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        label = .enum Lcom/squareup/tmes/Message$Label;->REPEATED:Lcom/squareup/tmes/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final errMsg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/tmes/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;
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

    sput-object v0, Lcom/tencent/protocol/tme/conn/LoginRsp;->DEFAULT_RESULT:Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/protocol/tme/conn/LoginRsp;->DEFAULT_CONNSVR_IP:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/protocol/tme/conn/LoginRsp$Builder;)V
    .locals 3

    iget-object v0, p1, Lcom/tencent/protocol/tme/conn/LoginRsp$Builder;->result:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/tencent/protocol/tme/conn/LoginRsp$Builder;->errMsg:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/protocol/tme/conn/LoginRsp$Builder;->connsvr_ip:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/protocol/tme/conn/LoginRsp;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Message;->setBuilder(Lcom/squareup/tmes/Message$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/protocol/tme/conn/LoginRsp$Builder;Lcom/tencent/protocol/tme/conn/LoginRsp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/protocol/tme/conn/LoginRsp;-><init>(Lcom/tencent/protocol/tme/conn/LoginRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/tmes/Message;-><init>()V

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/LoginRsp;->result:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/tencent/protocol/tme/conn/LoginRsp;->errMsg:Ljava/lang/String;

    invoke-static {p3}, Lcom/squareup/tmes/Message;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/LoginRsp;->connsvr_ip:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/squareup/tmes/Message;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/protocol/tme/conn/LoginRsp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/protocol/tme/conn/LoginRsp;

    iget-object v1, p0, Lcom/tencent/protocol/tme/conn/LoginRsp;->result:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tencent/protocol/tme/conn/LoginRsp;->result:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/conn/LoginRsp;->errMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/protocol/tme/conn/LoginRsp;->errMsg:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/squareup/tmes/Message;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/protocol/tme/conn/LoginRsp;->connsvr_ip:Ljava/util/List;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/LoginRsp;->connsvr_ip:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/squareup/tmes/Message;->equals(Ljava/util/List;Ljava/util/List;)Z

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

    iget-object v0, p0, Lcom/tencent/protocol/tme/conn/LoginRsp;->result:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tencent/protocol/tme/conn/LoginRsp;->errMsg:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tencent/protocol/tme/conn/LoginRsp;->connsvr_ip:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    :cond_3
    return v0
.end method
