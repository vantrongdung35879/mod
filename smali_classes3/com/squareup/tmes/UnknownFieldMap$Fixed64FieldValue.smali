.class final Lcom/squareup/tmes/UnknownFieldMap$Fixed64FieldValue;
.super Lcom/squareup/tmes/UnknownFieldMap$FieldValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/UnknownFieldMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fixed64FieldValue"
.end annotation


# instance fields
.field private final value:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ILjava/lang/Long;)V
    .locals 1

    sget-object v0, Lcom/squareup/tmes/WireType;->FIXED64:Lcom/squareup/tmes/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/tmes/UnknownFieldMap$FieldValue;-><init>(ILcom/squareup/tmes/WireType;)V

    iput-object p2, p0, Lcom/squareup/tmes/UnknownFieldMap$Fixed64FieldValue;->value:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getAsLong()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/UnknownFieldMap$Fixed64FieldValue;->value:Ljava/lang/Long;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public write(ILcom/squareup/tmes/WireOutput;)V
    .locals 2

    sget-object v0, Lcom/squareup/tmes/WireType;->FIXED64:Lcom/squareup/tmes/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/tmes/WireOutput;->writeTag(ILcom/squareup/tmes/WireType;)V

    iget-object p1, p0, Lcom/squareup/tmes/UnknownFieldMap$Fixed64FieldValue;->value:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/squareup/tmes/WireOutput;->writeFixed64(J)V

    return-void
.end method
