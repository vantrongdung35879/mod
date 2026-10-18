.class public final Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
.super Lcom/squareup/tmes/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/protocol/tme/cs_head/CSHead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/tmes/Message$Builder<",
        "Lcom/tencent/protocol/tme/cs_head/CSHead;",
        ">;"
    }
.end annotation


# instance fields
.field public area:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public client_type:Ljava/lang/Integer;

.field public client_ver:Ljava/lang/Integer;

.field public command:Ljava/lang/Integer;

.field public ext:Lokio/ByteString;

.field public head_flag:Ljava/lang/Integer;

.field public partition:Ljava/lang/String;

.field public platid:Ljava/lang/String;

.field public regionid:Ljava/lang/String;

.field public result:Ljava/lang/Integer;

.field public seq:Ljava/lang/Integer;

.field public subcmd:Ljava/lang/Integer;

.field public tme_ltoken:Lokio/ByteString;

.field public tme_openid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/tmes/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/protocol/tme/cs_head/CSHead;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message$Builder;-><init>(Lcom/squareup/tmes/Message;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->command:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->command:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->subcmd:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->subcmd:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->seq:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->seq:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->client_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->client_type:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->head_flag:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->head_flag:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->client_ver:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->client_ver:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->tme_ltoken:Lokio/ByteString;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->tme_ltoken:Lokio/ByteString;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->ext:Lokio/ByteString;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->ext:Lokio/ByteString;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->result:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->result:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->platid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->platid:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->area:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->area:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->partition:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->partition:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->channel:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->channel:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->tme_openid:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->tme_openid:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->regionid:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->regionid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public area(Ljava/lang/String;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->area:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/tmes/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->build()Lcom/tencent/protocol/tme/cs_head/CSHead;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/tencent/protocol/tme/cs_head/CSHead;
    .locals 2

    new-instance v0, Lcom/tencent/protocol/tme/cs_head/CSHead;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/protocol/tme/cs_head/CSHead;-><init>(Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;Lcom/tencent/protocol/tme/cs_head/CSHead$1;)V

    return-object v0
.end method

.method public channel(Ljava/lang/String;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public client_type(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->client_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public client_ver(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->client_ver:Ljava/lang/Integer;

    return-object p0
.end method

.method public command(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->command:Ljava/lang/Integer;

    return-object p0
.end method

.method public ext(Lokio/ByteString;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->ext:Lokio/ByteString;

    return-object p0
.end method

.method public head_flag(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->head_flag:Ljava/lang/Integer;

    return-object p0
.end method

.method public partition(Ljava/lang/String;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->partition:Ljava/lang/String;

    return-object p0
.end method

.method public platid(Ljava/lang/String;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->platid:Ljava/lang/String;

    return-object p0
.end method

.method public regionid(Ljava/lang/String;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->regionid:Ljava/lang/String;

    return-object p0
.end method

.method public result(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->result:Ljava/lang/Integer;

    return-object p0
.end method

.method public seq(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->seq:Ljava/lang/Integer;

    return-object p0
.end method

.method public subcmd(Ljava/lang/Integer;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->subcmd:Ljava/lang/Integer;

    return-object p0
.end method

.method public tme_ltoken(Lokio/ByteString;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->tme_ltoken:Lokio/ByteString;

    return-object p0
.end method

.method public tme_openid(Ljava/lang/String;)Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->tme_openid:Ljava/lang/String;

    return-object p0
.end method
