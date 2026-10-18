.class final Lcom/squareup/tmes/UnknownFieldMap$Fixed32FieldValue;
.super Lcom/squareup/tmes/UnknownFieldMap$FieldValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/UnknownFieldMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fixed32FieldValue"
.end annotation


# instance fields
.field private final value:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 1

    sget-object v0, Lcom/squareup/tmes/WireType;->FIXED32:Lcom/squareup/tmes/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;-><init>(ILcom/squareup/tmes/WireType;)V

    iput-object p2, p0, Lcom/squareup/tmes/UnknownFieldMap$Fixed32FieldValue;->value:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAsInteger()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/UnknownFieldMap$Fixed32FieldValue;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public write(ILcom/squareup/tmes/WireOutput;)V
    .locals 1

    sget-object v0, Lcom/squareup/tmes/WireType;->FIXED32:Lcom/squareup/tmes/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/tmes/WireOutput;->writeTag(ILcom/squareup/tmes/WireType;)V

    iget-object p1, p0, Lcom/squareup/tmes/UnknownFieldMap$Fixed32FieldValue;->value:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/squareup/tmes/WireOutput;->writeFixed32(I)V

    return-void
.end method
