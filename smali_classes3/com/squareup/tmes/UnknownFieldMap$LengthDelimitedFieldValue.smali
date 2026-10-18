.class final Lcom/squareup/tmes/UnknownFieldMap$LengthDelimitedFieldValue;
.super Lcom/squareup/tmes/UnknownFieldMap$FieldValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/UnknownFieldMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LengthDelimitedFieldValue"
.end annotation


# instance fields
.field private final value:Lokio/ByteString;


# direct methods
.method public constructor <init>(ILokio/ByteString;)V
    .locals 1

    sget-object v0, Lcom/squareup/tmes/WireType;->LENGTH_DELIMITED:Lcom/squareup/tmes/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;-><init>(ILcom/squareup/tmes/WireType;)V

    iput-object p2, p0, Lcom/squareup/tmes/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public getAsBytes()Lokio/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lokio/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    iget-object v0, p0, Lcom/squareup/tmes/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/tmes/WireOutput;->varint32Size(I)I

    move-result v0

    iget-object v1, p0, Lcom/squareup/tmes/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public write(ILcom/squareup/tmes/WireOutput;)V
    .locals 1

    sget-object v0, Lcom/squareup/tmes/WireType;->LENGTH_DELIMITED:Lcom/squareup/tmes/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/tmes/WireOutput;->writeTag(ILcom/squareup/tmes/WireType;)V

    iget-object p1, p0, Lcom/squareup/tmes/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/squareup/tmes/WireOutput;->writeVarint32(I)V

    iget-object p1, p0, Lcom/squareup/tmes/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/squareup/tmes/WireOutput;->writeRawBytes([B)V

    return-void
.end method
