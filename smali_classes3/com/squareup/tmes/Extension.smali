.class public final Lcom/squareup/tmes/Extension;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/tmes/Extension$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/tmes/ExtendableMessage<",
        "*>;E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/squareup/tmes/Extension<",
        "**>;>;"
    }
.end annotation


# instance fields
.field private final datatype:Lcom/squareup/tmes/Message$Datatype;

.field private final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">;"
        }
    .end annotation
.end field

.field private final extendedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final label:Lcom/squareup/tmes/Message$Label;

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/tmes/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final tag:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/tmes/Message$Label;Lcom/squareup/tmes/Message$Datatype;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/tmes/Message;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/squareup/tmes/Message$Label;",
            "Lcom/squareup/tmes/Message$Datatype;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/tmes/Extension;->extendedType:Ljava/lang/Class;

    iput-object p4, p0, Lcom/squareup/tmes/Extension;->name:Ljava/lang/String;

    iput p5, p0, Lcom/squareup/tmes/Extension;->tag:I

    iput-object p7, p0, Lcom/squareup/tmes/Extension;->datatype:Lcom/squareup/tmes/Message$Datatype;

    iput-object p6, p0, Lcom/squareup/tmes/Extension;->label:Lcom/squareup/tmes/Message$Label;

    iput-object p2, p0, Lcom/squareup/tmes/Extension;->messageType:Ljava/lang/Class;

    iput-object p3, p0, Lcom/squareup/tmes/Extension;->enumType:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/tmes/Message$Label;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/squareup/tmes/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/tmes/Message$Label;Lcom/squareup/tmes/Message$Datatype;)V

    return-void
.end method

.method public static boolExtending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->BOOL:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static bytesExtending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->BYTES:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static doubleExtending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->DOUBLE:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static enumExtending(Ljava/lang/Class;Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;E:",
            "Ljava/lang/Enum;",
            ":",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;TE;>;"
        }
    .end annotation

    new-instance v6, Lcom/squareup/tmes/Extension$Builder;

    sget-object v4, Lcom/squareup/tmes/Message$Datatype;->ENUM:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v6
.end method

.method public static fixed32Extending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->FIXED32:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static fixed64Extending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->FIXED64:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static floatExtending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->FLOAT:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static int32Extending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->INT32:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static int64Extending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->INT64:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static messageExtending(Ljava/lang/Class;Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;M:",
            "Lcom/squareup/tmes/Message;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;TM;>;"
        }
    .end annotation

    new-instance v6, Lcom/squareup/tmes/Extension$Builder;

    sget-object v4, Lcom/squareup/tmes/Message$Datatype;->MESSAGE:Lcom/squareup/tmes/Message$Datatype;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v6
.end method

.method public static sfixed32Extending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->SFIXED32:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static sfixed64Extending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->SFIXED64:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static sint32Extending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->SINT32:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static sint64Extending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->SINT64:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static stringExtending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->STRING:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static uint32Extending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->UINT32:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public static uint64Extending(Ljava/lang/Class;)Lcom/squareup/tmes/Extension$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/tmes/Extension$Builder;

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->UINT64:Lcom/squareup/tmes/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/squareup/tmes/Extension;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tmes/Extension<",
            "**>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/squareup/tmes/Extension;->tag:I

    iget v2, p1, Lcom/squareup/tmes/Extension;->tag:I

    if-eq v1, v2, :cond_1

    sub-int/2addr v1, v2

    return v1

    :cond_1
    iget-object v1, p0, Lcom/squareup/tmes/Extension;->datatype:Lcom/squareup/tmes/Message$Datatype;

    iget-object v2, p1, Lcom/squareup/tmes/Extension;->datatype:Lcom/squareup/tmes/Message$Datatype;

    if-eq v1, v2, :cond_2

    invoke-virtual {v1}, Lcom/squareup/tmes/Message$Datatype;->value()I

    move-result v0

    iget-object p1, p1, Lcom/squareup/tmes/Extension;->datatype:Lcom/squareup/tmes/Message$Datatype;

    invoke-virtual {p1}, Lcom/squareup/tmes/Message$Datatype;->value()I

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    return v0

    :cond_2
    iget-object v1, p0, Lcom/squareup/tmes/Extension;->label:Lcom/squareup/tmes/Message$Label;

    iget-object v2, p1, Lcom/squareup/tmes/Extension;->label:Lcom/squareup/tmes/Message$Label;

    if-eq v1, v2, :cond_3

    invoke-virtual {v1}, Lcom/squareup/tmes/Message$Label;->value()I

    move-result v0

    iget-object p1, p1, Lcom/squareup/tmes/Extension;->label:Lcom/squareup/tmes/Message$Label;

    invoke-virtual {p1}, Lcom/squareup/tmes/Message$Label;->value()I

    move-result p1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/squareup/tmes/Extension;->extendedType:Ljava/lang/Class;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lcom/squareup/tmes/Extension;->extendedType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->extendedType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/squareup/tmes/Extension;->extendedType:Ljava/lang/Class;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_4
    iget-object v1, p0, Lcom/squareup/tmes/Extension;->messageType:Ljava/lang/Class;

    if-eqz v1, :cond_5

    iget-object v2, p1, Lcom/squareup/tmes/Extension;->messageType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->messageType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/squareup/tmes/Extension;->messageType:Ljava/lang/Class;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/squareup/tmes/Extension;->enumType:Ljava/lang/Class;

    if-eqz v1, :cond_6

    iget-object v2, p1, Lcom/squareup/tmes/Extension;->enumType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->enumType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/squareup/tmes/Extension;->enumType:Ljava/lang/Class;

    goto :goto_1

    :cond_6
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/squareup/tmes/Extension;

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Extension;->compareTo(Lcom/squareup/tmes/Extension;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/squareup/tmes/Extension;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/tmes/Extension;

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/Extension;->compareTo(Lcom/squareup/tmes/Extension;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDatatype()Lcom/squareup/tmes/Message$Datatype;
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->datatype:Lcom/squareup/tmes/Message$Datatype;

    return-object v0
.end method

.method public getEnumType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->enumType:Ljava/lang/Class;

    return-object v0
.end method

.method public getExtendedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->extendedType:Ljava/lang/Class;

    return-object v0
.end method

.method public getLabel()Lcom/squareup/tmes/Message$Label;
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->label:Lcom/squareup/tmes/Message$Label;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/tmes/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->messageType:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/squareup/tmes/Extension;->tag:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/squareup/tmes/Extension;->tag:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/squareup/tmes/Extension;->datatype:Lcom/squareup/tmes/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/tmes/Message$Datatype;->value()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->label:Lcom/squareup/tmes/Message$Label;

    invoke-virtual {v0}, Lcom/squareup/tmes/Message$Label;->value()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/squareup/tmes/Extension;->extendedType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->messageType:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->enumType:Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/squareup/tmes/Extension;->label:Lcom/squareup/tmes/Message$Label;

    iget-object v1, p0, Lcom/squareup/tmes/Extension;->datatype:Lcom/squareup/tmes/Message$Datatype;

    iget-object v2, p0, Lcom/squareup/tmes/Extension;->name:Ljava/lang/String;

    iget v3, p0, Lcom/squareup/tmes/Extension;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const-string v0, "[%s %s %s = %d]"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
