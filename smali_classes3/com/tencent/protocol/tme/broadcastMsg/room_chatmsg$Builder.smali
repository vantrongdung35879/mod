.class public final Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;",
        ">;"
    }
.end annotation


# instance fields
.field public baseplate_end:Ljava/lang/String;

.field public baseplate_start:Ljava/lang/String;

.field public hotword_id:Ljava/lang/String;

.field public meme_id:Ljava/lang/Integer;

.field public msg_color:Ljava/lang/String;

.field public msg_content:Ljava/lang/String;

.field public msg_seq:Ljava/lang/Integer;

.field public msg_type:Ljava/lang/Integer;

.field public openid:Ljava/lang/String;

.field public roomid:Ljava/lang/String;

.field public timestamp:Ljava/lang/Integer;

.field public user_faceurl:Ljava/lang/String;

.field public user_nick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->roomid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->roomid:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->openid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->openid:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->user_nick:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->user_faceurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->user_faceurl:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_seq:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_seq:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_content:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_content:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_color:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_color:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->msg_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_type:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->baseplate_start:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->baseplate_start:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->baseplate_end:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->baseplate_end:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->hotword_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->hotword_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->timestamp:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->timestamp:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;->meme_id:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->meme_id:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public baseplate_end(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->baseplate_end:Ljava/lang/String;

    return-object p0
.end method

.method public baseplate_start(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->baseplate_start:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->build()Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg;-><init>(Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$1;)V

    return-object v0
.end method

.method public hotword_id(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->hotword_id:Ljava/lang/String;

    return-object p0
.end method

.method public meme_id(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->meme_id:Ljava/lang/Integer;

    return-object p0
.end method

.method public msg_color(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_color:Ljava/lang/String;

    return-object p0
.end method

.method public msg_content(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_content:Ljava/lang/String;

    return-object p0
.end method

.method public msg_seq(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_seq:Ljava/lang/Integer;

    return-object p0
.end method

.method public msg_type(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->msg_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public openid(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->openid:Ljava/lang/String;

    return-object p0
.end method

.method public roomid(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->roomid:Ljava/lang/String;

    return-object p0
.end method

.method public timestamp(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->timestamp:Ljava/lang/Integer;

    return-object p0
.end method

.method public user_faceurl(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->user_faceurl:Ljava/lang/String;

    return-object p0
.end method

.method public user_nick(Ljava/lang/String;)Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/broadcastMsg/room_chatmsg$Builder;->user_nick:Ljava/lang/String;

    return-object p0
.end method
