.class abstract Lcom/squareup/tmes/UnknownFieldMap$FieldValue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/UnknownFieldMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FieldValue"
.end annotation


# instance fields
.field private final tag:I

.field private final wireType:Lcom/squareup/tmes/WireType;


# direct methods
.method public constructor <init>(ILcom/squareup/tmes/WireType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;->tag:I

    iput-object p2, p0, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;->wireType:Lcom/squareup/tmes/WireType;

    return-void
.end method

.method public static fixed32(ILjava/lang/Integer;)Lcom/squareup/tmes/UnknownFieldMap$Fixed32FieldValue;
    .locals 1

    new-instance v0, Lcom/squareup/tmes/UnknownFieldMap$Fixed32FieldValue;

    invoke-direct {v0, p0, p1}, Lcom/squareup/tmes/UnknownFieldMap$Fixed32FieldValue;-><init>(ILjava/lang/Integer;)V

    return-object v0
.end method

.method public static fixed64(ILjava/lang/Long;)Lcom/squareup/tmes/UnknownFieldMap$Fixed64FieldValue;
    .locals 1

    new-instance v0, Lcom/squareup/tmes/UnknownFieldMap$Fixed64FieldValue;

    invoke-direct {v0, p0, p1}, Lcom/squareup/tmes/UnknownFieldMap$Fixed64FieldValue;-><init>(ILjava/lang/Long;)V

    return-object v0
.end method

.method public static lengthDelimited(ILokio/ByteString;)Lcom/squareup/tmes/UnknownFieldMap$LengthDelimitedFieldValue;
    .locals 1

    new-instance v0, Lcom/squareup/tmes/UnknownFieldMap$LengthDelimitedFieldValue;

    invoke-direct {v0, p0, p1}, Lcom/squareup/tmes/UnknownFieldMap$LengthDelimitedFieldValue;-><init>(ILokio/ByteString;)V

    return-object v0
.end method

.method public static varint(ILjava/lang/Long;)Lcom/squareup/tmes/UnknownFieldMap$VarintFieldValue;
    .locals 1

    new-instance v0, Lcom/squareup/tmes/UnknownFieldMap$VarintFieldValue;

    invoke-direct {v0, p0, p1}, Lcom/squareup/tmes/UnknownFieldMap$VarintFieldValue;-><init>(ILjava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public getAsBytes()Lokio/ByteString;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsInteger()Ljava/lang/Integer;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsLong()Ljava/lang/Long;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public abstract getSerializedSize()I
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;->tag:I

    return v0
.end method

.method public getWireType()Lcom/squareup/tmes/WireType;
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;->wireType:Lcom/squareup/tmes/WireType;

    return-object v0
.end method

.method public abstract write(ILcom/squareup/tmes/WireOutput;)V
.end method
