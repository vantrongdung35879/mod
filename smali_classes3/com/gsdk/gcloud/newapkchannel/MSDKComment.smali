.class public Lcom/gsdk/gcloud/newapkchannel/MSDKComment;
.super Ljava/lang/Object;
.source "MSDKComment.java"


# static fields
.field private static final CHANNEL_HEAD:I = 0x96fa

.field private static final PROTO_HEAD:Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;


# instance fields
.field private otherData:[B

.field private final p:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;

    const v1, 0x96fa

    invoke-direct {v0, v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;-><init>(I)V

    sput-object v0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->PROTO_HEAD:Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->p:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public decode([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 33
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "WARNING:[YYBComment]decode|data=null|exit"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->PROTO_HEAD:Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;

    invoke-virtual {v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    .line 38
    new-array v3, v2, [B

    .line 39
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 41
    new-instance v4, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;

    invoke-direct {v4, v3}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;-><init>([B)V

    invoke-virtual {v1, v4}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    array-length v1, p1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    .line 46
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "ERROR:[YYBComment]decode|data.length - headLength <= 2|1|exit"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_1
    new-array v1, v3, [B

    .line 51
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 52
    new-instance v4, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;

    invoke-direct {v4, v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;-><init>([B)V

    invoke-virtual {v4}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;->getValue()I

    move-result v1

    .line 54
    array-length v4, p1

    sub-int/2addr v4, v2

    sub-int/2addr v4, v3

    if-ge v4, v1, :cond_2

    .line 55
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "ERROR:[YYBComment]decode|data.length - headLength <= 2|2|exit"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_2
    new-array v4, v1, [B

    .line 60
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 61
    iget-object v5, p0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->p:Ljava/util/Properties;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 63
    array-length p1, p1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v1

    sub-int/2addr p1, v3

    if-lez p1, :cond_3

    .line 65
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->otherData:[B

    .line 66
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_3
    return-void

    .line 42
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR:[YYBComment]decode|unknow protocol|exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[YYBComment] unknow protocl ["

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->encode(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Z)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    sget-object v1, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->PROTO_HEAD:Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;

    invoke-virtual {v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    iget-object v2, p0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->p:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->p:Ljava/util/Properties;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 93
    new-instance v2, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;

    array-length v3, v1

    invoke-direct {v2, v3}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;-><init>(I)V

    invoke-virtual {v2}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 94
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 95
    iget-object v1, p0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->otherData:[B

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz p1, :cond_4

    .line 101
    array-length p1, v0

    add-int/lit8 p1, p1, 0xc

    .line 102
    rem-int/lit16 p1, p1, 0x1000

    const/4 v1, 0x0

    if-lez p1, :cond_2

    rsub-int p1, p1, 0x1000

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 104
    :goto_1
    array-length v2, v0

    add-int/2addr p1, v2

    new-array v2, p1, [B

    .line 105
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    array-length v0, v0

    :goto_2
    if-ge v0, p1, :cond_3

    .line 107
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v2

    :cond_4
    return-object v0
.end method

.method public getP()Ljava/util/Properties;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->p:Ljava/util/Properties;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "YYBComment [p="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->p:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", otherData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->otherData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
