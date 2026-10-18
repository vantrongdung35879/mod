.class public final Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;",
        ">;"
    }
.end annotation


# instance fields
.field public business_type:Ljava/lang/Integer;

.field public content:Lokio/ByteString;

.field public msg_seq:Ljava/lang/Integer;

.field public roomid:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->business_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;->business_type:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;->title:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->content:Lokio/ByteString;

    iput-object v0, p0, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;->content:Lokio/ByteString;

    iget-object v0, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->msg_seq:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;->msg_seq:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;->roomid:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;->roomid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;->build()Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg;-><init>(Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$1;)V

    return-object v0
.end method

.method public business_type(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;->business_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public content(Lokio/ByteString;)Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;->content:Lokio/ByteString;

    return-object p0
.end method

.method public msg_seq(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;->msg_seq:Ljava/lang/Integer;

    return-object p0
.end method

.method public roomid(Ljava/lang/String;)Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;->roomid:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/expressmsg/ExpressMsg$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
