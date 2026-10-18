.class public Lcom/gsdk/gcloud/apkchannel/ChannelComment;
.super Ljava/lang/Object;
.source "ChannelComment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelComment"

.field private static final protoHead:Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;


# instance fields
.field public otherData:[B

.field public p:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    const v1, 0x96fa

    invoke-direct {v0, v1}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;-><init>(I)V

    sput-object v0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->protoHead:Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->p:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public decode([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 22
    const-string v0, "ChannelComment"

    if-nez p1, :cond_0

    .line 23
    const-string p1, "apollo0511 WARNING:[ChannelComment]decode data=null and return"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 26
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 27
    sget-object v2, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->protoHead:Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    invoke-virtual {v2}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    .line 28
    new-array v4, v3, [B

    .line 29
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 31
    new-instance v5, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    invoke-direct {v5, v4}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;-><init>([B)V

    invoke-virtual {v2, v5}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 35
    array-length v2, p1

    sub-int/2addr v2, v3

    const/4 v4, 0x2

    if-gt v2, v4, :cond_1

    .line 36
    const-string p1, "apollo0511 ERROR:[ChannelComment]decode|data.length - headLength <= 2|1|exit"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 40
    :cond_1
    new-array v2, v4, [B

    .line 41
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 42
    new-instance v5, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    invoke-direct {v5, v2}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;-><init>([B)V

    invoke-virtual {v5}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;->getValue()I

    move-result v2

    .line 44
    array-length v5, p1

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    if-ge v5, v2, :cond_2

    .line 45
    const-string p1, "apollo0511 ERROR:[ChannelComment]decode|data.length - headLength <= 2|2|exit"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 49
    :cond_2
    new-array v0, v2, [B

    .line 50
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 51
    iget-object v5, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->p:Ljava/util/Properties;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "UTF-8"

    invoke-direct {v6, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 53
    array-length p1, p1

    sub-int/2addr p1, v3

    sub-int/2addr p1, v2

    sub-int/2addr p1, v4

    if-lez p1, :cond_3

    .line 55
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->otherData:[B

    .line 56
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_3
    return-void

    .line 32
    :cond_4
    const-string v1, "apollo0511 ERROR:[ChannelComment]decode|unknow protocol|exit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ChannelComment] unknow protocl ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    sget-object v1, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->protoHead:Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    invoke-virtual {v1}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 109
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->p:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->p:Ljava/util/Properties;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 112
    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 114
    new-instance v2, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    array-length v3, v1

    invoke-direct {v2, v3}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;-><init>(I)V

    invoke-virtual {v2}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 115
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 116
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->otherData:[B

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 119
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    sget-object v1, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->protoHead:Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    invoke-virtual {v1}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 132
    new-instance v1, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    array-length v2, p1

    invoke-direct {v1, v2}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;-><init>(I)V

    invoke-virtual {v1}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 133
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 134
    iget-object p1, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->otherData:[B

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getValue([B)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    const-string v1, "ChannelComment"

    if-nez p1, :cond_0

    .line 62
    const-string p1, "apollo0511 WARNING:[Comment]decode|data=null|exit"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 66
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 67
    sget-object v3, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->protoHead:Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    .line 68
    new-array v5, v4, [B

    .line 69
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 71
    new-instance v6, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    invoke-direct {v6, v5}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;-><init>([B)V

    invoke-virtual {v3, v6}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    array-length v3, p1

    sub-int/2addr v3, v4

    const/4 v5, 0x2

    if-gt v3, v5, :cond_1

    .line 76
    const-string p1, "apollo0511 ERROR:[ChannelComment]decode|data.length - headLength <= 2|1|exit"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 80
    :cond_1
    new-array v3, v5, [B

    .line 81
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 82
    new-instance v6, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    invoke-direct {v6, v3}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;-><init>([B)V

    invoke-virtual {v6}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;->getValue()I

    move-result v3

    .line 84
    array-length v6, p1

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    if-ge v6, v3, :cond_2

    .line 85
    const-string p1, "apollo0511 ERROR:[ChannelComment]decode|data.length - headLength <= 2|2|exit"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 89
    :cond_2
    new-array v0, v3, [B

    .line 90
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 93
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 95
    array-length p1, p1

    sub-int/2addr p1, v4

    sub-int/2addr p1, v3

    sub-int/2addr p1, v5

    if-lez p1, :cond_3

    .line 97
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->otherData:[B

    .line 98
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_3
    return-object v1

    .line 72
    :cond_4
    const-string v0, "apollo0511 ERROR:[ChannelComment]decode|unknow protocol|exit"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ChannelComment] unknow protocl ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChannelComment [p="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->p:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", otherData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->otherData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
