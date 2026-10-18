.class public final Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;",
        ">;"
    }
.end annotation


# instance fields
.field public gift_id:Ljava/lang/String;

.field public gift_pic:Ljava/lang/String;

.field public gift_wording:Lcom/tencent/protocol/tme/commonschema/MultiLang;

.field public id:Ljava/lang/Integer;

.field public num:Ljava/lang/Integer;

.field public points:Ljava/lang/Integer;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->id:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->num:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->num:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->type:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->gift_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->points:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->points:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_wording:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->gift_wording:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;->gift_pic:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->gift_pic:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->build()Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$1;)V

    return-object v0
.end method

.method public gift_id(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->gift_id:Ljava/lang/String;

    return-object p0
.end method

.method public gift_pic(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->gift_pic:Ljava/lang/String;

    return-object p0
.end method

.method public gift_wording(Lcom/tencent/protocol/tme/commonschema/MultiLang;)Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->gift_wording:Lcom/tencent/protocol/tme/commonschema/MultiLang;

    return-object p0
.end method

.method public id(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->id:Ljava/lang/Integer;

    return-object p0
.end method

.method public num(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->num:Ljava/lang/Integer;

    return-object p0
.end method

.method public points(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->points:Ljava/lang/Integer;

    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/sub_red_packet$Builder;->type:Ljava/lang/Integer;

    return-object p0
.end method
