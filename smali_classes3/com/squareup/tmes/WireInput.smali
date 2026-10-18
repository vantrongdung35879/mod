.class final Lcom/squareup/tmes/WireInput;
.super Ljava/lang/Object;


# static fields
.field private static final ENCOUNTERED_A_MALFORMED_VARINT:Ljava/lang/String; = "WireInput encountered a malformed varint."

.field private static final ENCOUNTERED_A_NEGATIVE_SIZE:Ljava/lang/String; = "Encountered a negative size"

.field private static final INPUT_ENDED_UNEXPECTEDLY:Ljava/lang/String; = "The input ended unexpectedly in the middle of a field"

.field private static final PROTOCOL_MESSAGE_CONTAINED_AN_INVALID_TAG_ZERO:Ljava/lang/String; = "Protocol message contained an invalid tag (zero)."

.field private static final PROTOCOL_MESSAGE_END_GROUP_TAG_DID_NOT_MATCH_EXPECTED_TAG:Ljava/lang/String; = "Protocol message end-group tag did not match expected tag."

.field public static final RECURSION_LIMIT:I = 0x40

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private currentLimit:I

.field private lastTag:I

.field private pos:I

.field public recursionDepth:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/squareup/tmes/WireInput;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Lokio/BufferedSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/tmes/WireInput;->pos:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/squareup/tmes/WireInput;->currentLimit:I

    iput-object p1, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static decodeZigZag64(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private isAtEnd()Z
    .locals 5

    invoke-virtual {p0}, Lcom/squareup/tmes/WireInput;->getPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/squareup/tmes/WireInput;->currentLimit:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/squareup/tmes/WireInput;
    .locals 1

    new-instance v0, Lcom/squareup/tmes/WireInput;

    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/squareup/tmes/WireInput;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method public static newInstance(Lokio/Source;)Lcom/squareup/tmes/WireInput;
    .locals 1

    new-instance v0, Lcom/squareup/tmes/WireInput;

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/squareup/tmes/WireInput;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/squareup/tmes/WireInput;
    .locals 2

    new-instance v0, Lcom/squareup/tmes/WireInput;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p0}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/squareup/tmes/WireInput;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method public static newInstance([BII)Lcom/squareup/tmes/WireInput;
    .locals 2

    new-instance v0, Lcom/squareup/tmes/WireInput;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/squareup/tmes/WireInput;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method private skip(J)V
    .locals 2

    iget v0, p0, Lcom/squareup/tmes/WireInput;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v1, v0

    iput v1, p0, Lcom/squareup/tmes/WireInput;->pos:I

    iget-object v0, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0, p1, p2}, Lokio/BufferedSource;->skip(J)V

    return-void
.end method

.method private skipField(I)Z
    .locals 4

    sget-object v0, Lcom/squareup/tmes/WireInput$1;->$SwitchMap$com$squareup$tmes$WireType:[I

    invoke-static {p1}, Lcom/squareup/tmes/WireType;->valueOf(I)Lcom/squareup/tmes/WireType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/squareup/tmes/WireInput;->skipGroup()V

    and-int/lit8 p1, p1, -0x8

    sget-object v0, Lcom/squareup/tmes/WireType;->END_GROUP:Lcom/squareup/tmes/WireType;

    invoke-virtual {v0}, Lcom/squareup/tmes/WireType;->value()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/WireInput;->checkLastTagWas(I)V

    return v1

    :pswitch_2
    invoke-virtual {p0}, Lcom/squareup/tmes/WireInput;->readVarint32()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v2, v3}, Lcom/squareup/tmes/WireInput;->skip(J)V

    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/squareup/tmes/WireInput;->readFixed64()J

    return v1

    :pswitch_4
    invoke-virtual {p0}, Lcom/squareup/tmes/WireInput;->readFixed32()I

    return v1

    :pswitch_5
    invoke-virtual {p0}, Lcom/squareup/tmes/WireInput;->readVarint64()J

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1

    iget v0, p0, Lcom/squareup/tmes/WireInput;->lastTag:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPosition()J
    .locals 2

    iget v0, p0, Lcom/squareup/tmes/WireInput;->pos:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public popLimit(I)V
    .locals 0

    iput p1, p0, Lcom/squareup/tmes/WireInput;->currentLimit:I

    return-void
.end method

.method public pushLimit(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/squareup/tmes/WireInput;->pos:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/squareup/tmes/WireInput;->currentLimit:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/squareup/tmes/WireInput;->currentLimit:I

    return v0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "The input ended unexpectedly in the middle of a field"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered a negative size"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBytes()Lokio/ByteString;
    .locals 1

    invoke-virtual {p0}, Lcom/squareup/tmes/WireInput;->readVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/squareup/tmes/WireInput;->readBytes(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(I)Lokio/ByteString;
    .locals 3

    iget v0, p0, Lcom/squareup/tmes/WireInput;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/tmes/WireInput;->pos:I

    iget-object v0, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public readFixed32()I
    .locals 1

    iget v0, p0, Lcom/squareup/tmes/WireInput;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/squareup/tmes/WireInput;->pos:I

    iget-object v0, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2

    iget v0, p0, Lcom/squareup/tmes/WireInput;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/squareup/tmes/WireInput;->pos:I

    iget-object v0, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/squareup/tmes/WireInput;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/squareup/tmes/WireInput;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/tmes/WireInput;->pos:I

    iget-object v1, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    int-to-long v2, v0

    sget-object v0, Lcom/squareup/tmes/WireInput;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v1, v2, v3, v0}, Lokio/BufferedSource;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readTag()I
    .locals 2

    invoke-direct {p0}, Lcom/squareup/tmes/WireInput;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/tmes/WireInput;->lastTag:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/tmes/WireInput;->readVarint32()I

    move-result v0

    iput v0, p0, Lcom/squareup/tmes/WireInput;->lastTag:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readVarint32()I
    .locals 3

    iget v0, p0, Lcom/squareup/tmes/WireInput;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/tmes/WireInput;->pos:I

    iget-object v0, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    iget v1, p0, Lcom/squareup/tmes/WireInput;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/tmes/WireInput;->pos:I

    iget-object v1, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iget v1, p0, Lcom/squareup/tmes/WireInput;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/tmes/WireInput;->pos:I

    iget-object v1, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    iget v1, p0, Lcom/squareup/tmes/WireInput;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/tmes/WireInput;->pos:I

    iget-object v1, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    iget v1, p0, Lcom/squareup/tmes/WireInput;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/tmes/WireInput;->pos:I

    iget-object v1, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    iget v2, p0, Lcom/squareup/tmes/WireInput;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/squareup/tmes/WireInput;->pos:I

    iget-object v2, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "WireInput encountered a malformed varint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public readVarint64()J
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    iget v3, p0, Lcom/squareup/tmes/WireInput;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/tmes/WireInput;->pos:I

    iget-object v3, p0, Lcom/squareup/tmes/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "WireInput encountered a malformed varint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipGroup()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/tmes/WireInput;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/squareup/tmes/WireInput;->skipField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method
