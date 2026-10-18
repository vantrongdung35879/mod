.class public final Lcom/squareup/tmes/Extension$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tmes/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/tmes/ExtendableMessage<",
        "*>;E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

.field private label:Lcom/squareup/tmes/Message$Label;

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

.field private name:Ljava/lang/String;

.field private tag:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/squareup/tmes/Message$Datatype;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->name:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/squareup/tmes/Extension$Builder;->tag:I

    iput-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->label:Lcom/squareup/tmes/Message$Label;

    iput-object p1, p0, Lcom/squareup/tmes/Extension$Builder;->extendedType:Ljava/lang/Class;

    iput-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->messageType:Ljava/lang/Class;

    iput-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->enumType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/squareup/tmes/Extension$Builder;->datatype:Lcom/squareup/tmes/Message$Datatype;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;)V
    .locals 2
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
            "Lcom/squareup/tmes/Message$Datatype;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->name:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/squareup/tmes/Extension$Builder;->tag:I

    iput-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->label:Lcom/squareup/tmes/Message$Label;

    iput-object p1, p0, Lcom/squareup/tmes/Extension$Builder;->extendedType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/squareup/tmes/Extension$Builder;->messageType:Ljava/lang/Class;

    iput-object p3, p0, Lcom/squareup/tmes/Extension$Builder;->enumType:Ljava/lang/Class;

    iput-object p4, p0, Lcom/squareup/tmes/Extension$Builder;->datatype:Lcom/squareup/tmes/Message$Datatype;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/tmes/Extension$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/tmes/Message$Datatype;)V

    return-void
.end method

.method private validate()V
    .locals 3

    iget-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->extendedType:Ljava/lang/Class;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->datatype:Lcom/squareup/tmes/Message$Datatype;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/squareup/tmes/Extension$Builder;->label:Lcom/squareup/tmes/Message$Label;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/squareup/tmes/Extension$Builder;->tag:I

    if-lez v1, :cond_5

    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->MESSAGE:Lcom/squareup/tmes/Message$Datatype;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->messageType:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->enumType:Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Message w/o messageType or w/ enumType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Lcom/squareup/tmes/Message$Datatype;->ENUM:Lcom/squareup/tmes/Message$Datatype;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->messageType:Ljava/lang/Class;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->enumType:Ljava/lang/Class;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Enum w/ messageType or w/o enumType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->messageType:Ljava/lang/Class;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->enumType:Ljava/lang/Class;

    if-nez v0, :cond_4

    :goto_0
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scalar w/ messageType or enumType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tag == "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/tmes/Extension$Builder;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "datatype == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extendedType == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public buildOptional()Lcom/squareup/tmes/Extension;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/tmes/Extension<",
            "TT;TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/squareup/tmes/Message$Label;->OPTIONAL:Lcom/squareup/tmes/Message$Label;

    iput-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->label:Lcom/squareup/tmes/Message$Label;

    invoke-direct {p0}, Lcom/squareup/tmes/Extension$Builder;->validate()V

    new-instance v0, Lcom/squareup/tmes/Extension;

    iget-object v2, p0, Lcom/squareup/tmes/Extension$Builder;->extendedType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/tmes/Extension$Builder;->messageType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/tmes/Extension$Builder;->enumType:Ljava/lang/Class;

    iget-object v5, p0, Lcom/squareup/tmes/Extension$Builder;->name:Ljava/lang/String;

    iget v6, p0, Lcom/squareup/tmes/Extension$Builder;->tag:I

    iget-object v7, p0, Lcom/squareup/tmes/Extension$Builder;->label:Lcom/squareup/tmes/Message$Label;

    iget-object v8, p0, Lcom/squareup/tmes/Extension$Builder;->datatype:Lcom/squareup/tmes/Message$Datatype;

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/squareup/tmes/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/tmes/Message$Label;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public buildPacked()Lcom/squareup/tmes/Extension;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/tmes/Extension<",
            "TT;",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/squareup/tmes/Message$Label;->PACKED:Lcom/squareup/tmes/Message$Label;

    iput-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->label:Lcom/squareup/tmes/Message$Label;

    invoke-direct {p0}, Lcom/squareup/tmes/Extension$Builder;->validate()V

    new-instance v0, Lcom/squareup/tmes/Extension;

    iget-object v2, p0, Lcom/squareup/tmes/Extension$Builder;->extendedType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/tmes/Extension$Builder;->messageType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/tmes/Extension$Builder;->enumType:Ljava/lang/Class;

    iget-object v5, p0, Lcom/squareup/tmes/Extension$Builder;->name:Ljava/lang/String;

    iget v6, p0, Lcom/squareup/tmes/Extension$Builder;->tag:I

    iget-object v7, p0, Lcom/squareup/tmes/Extension$Builder;->label:Lcom/squareup/tmes/Message$Label;

    iget-object v8, p0, Lcom/squareup/tmes/Extension$Builder;->datatype:Lcom/squareup/tmes/Message$Datatype;

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/squareup/tmes/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/tmes/Message$Label;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public buildRepeated()Lcom/squareup/tmes/Extension;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/tmes/Extension<",
            "TT;",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/squareup/tmes/Message$Label;->REPEATED:Lcom/squareup/tmes/Message$Label;

    iput-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->label:Lcom/squareup/tmes/Message$Label;

    invoke-direct {p0}, Lcom/squareup/tmes/Extension$Builder;->validate()V

    new-instance v0, Lcom/squareup/tmes/Extension;

    iget-object v2, p0, Lcom/squareup/tmes/Extension$Builder;->extendedType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/tmes/Extension$Builder;->messageType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/tmes/Extension$Builder;->enumType:Ljava/lang/Class;

    iget-object v5, p0, Lcom/squareup/tmes/Extension$Builder;->name:Ljava/lang/String;

    iget v6, p0, Lcom/squareup/tmes/Extension$Builder;->tag:I

    iget-object v7, p0, Lcom/squareup/tmes/Extension$Builder;->label:Lcom/squareup/tmes/Message$Label;

    iget-object v8, p0, Lcom/squareup/tmes/Extension$Builder;->datatype:Lcom/squareup/tmes/Message$Datatype;

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/squareup/tmes/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/tmes/Message$Label;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public buildRequired()Lcom/squareup/tmes/Extension;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/tmes/Extension<",
            "TT;TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/squareup/tmes/Message$Label;->REQUIRED:Lcom/squareup/tmes/Message$Label;

    iput-object v0, p0, Lcom/squareup/tmes/Extension$Builder;->label:Lcom/squareup/tmes/Message$Label;

    invoke-direct {p0}, Lcom/squareup/tmes/Extension$Builder;->validate()V

    new-instance v0, Lcom/squareup/tmes/Extension;

    iget-object v2, p0, Lcom/squareup/tmes/Extension$Builder;->extendedType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/tmes/Extension$Builder;->messageType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/tmes/Extension$Builder;->enumType:Ljava/lang/Class;

    iget-object v5, p0, Lcom/squareup/tmes/Extension$Builder;->name:Ljava/lang/String;

    iget v6, p0, Lcom/squareup/tmes/Extension$Builder;->tag:I

    iget-object v7, p0, Lcom/squareup/tmes/Extension$Builder;->label:Lcom/squareup/tmes/Message$Label;

    iget-object v8, p0, Lcom/squareup/tmes/Extension$Builder;->datatype:Lcom/squareup/tmes/Message$Datatype;

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/squareup/tmes/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/tmes/Message$Label;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Extension$1;)V

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/squareup/tmes/Extension$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;TE;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/squareup/tmes/Extension$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(I)Lcom/squareup/tmes/Extension$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/tmes/Extension$Builder<",
            "TT;TE;>;"
        }
    .end annotation

    iput p1, p0, Lcom/squareup/tmes/Extension$Builder;->tag:I

    return-object p0
.end method
