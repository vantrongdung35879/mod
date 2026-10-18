.class public final Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/conn/HelloRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/conn/HelloRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public close_tcp:Ljava/lang/Integer;

.field public hello_time:Ljava/lang/Integer;

.field public result:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/conn/HelloRsp;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/conn/HelloRsp;->result:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;->result:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/conn/HelloRsp;->hello_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;->hello_time:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/tencent/protocol/tme/conn/HelloRsp;->close_tcp:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;->close_tcp:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;->build()Lcom/tencent/protocol/tme/conn/HelloRsp;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/conn/HelloRsp;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/conn/HelloRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/conn/HelloRsp;-><init>(Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;Lcom/tencent/protocol/tme/conn/HelloRsp$1;)V

    return-object v0
.end method

.method public close_tcp(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;->close_tcp:Ljava/lang/Integer;

    return-object p0
.end method

.method public hello_time(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;->hello_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public result(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/conn/HelloRsp$Builder;->result:Ljava/lang/Integer;

    return-object p0
.end method
