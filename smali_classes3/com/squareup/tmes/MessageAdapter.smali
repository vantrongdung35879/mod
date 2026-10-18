.class final Lcom/squareup/tmes/MessageAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/tmes/MessageAdapter$ImmutableList;,
        Lcom/squareup/tmes/MessageAdapter$Storage;,
        Lcom/squareup/tmes/MessageAdapter$FieldInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/tmes/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FULL_BLOCK:Ljava/lang/String; = "\u2588"

.field private static final REDACTED:Ljava/lang/String; = "\u2588\u2588"


# instance fields
.field private final builderType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/squareup/tmes/Message$Builder<",
            "TM;>;>;"
        }
    .end annotation
.end field

.field private final fieldInfoMap:Lcom/squareup/tmes/TagMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/tmes/TagMap<",
            "Lcom/squareup/tmes/MessageAdapter$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final tagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final wire:Lcom/squareup/tmes/Wire;


# direct methods
.method public constructor <init>(Lcom/squareup/tmes/Wire;Ljava/lang/Class;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tmes/Wire;",
            "Ljava/lang/Class<",
            "TM;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/squareup/tmes/MessageAdapter;->tagMap:Ljava/util/Map;

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/squareup/tmes/MessageAdapter;->wire:Lcom/squareup/tmes/Wire;

    iput-object v1, v0, Lcom/squareup/tmes/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/tmes/MessageAdapter;->getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/squareup/tmes/MessageAdapter;->builderType:Ljava/lang/Class;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v12, v1, v4

    const-class v5, Lcom/squareup/tmes/ProtoField;

    invoke-virtual {v12, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/squareup/tmes/ProtoField;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/squareup/tmes/ProtoField;->tag()I

    move-result v6

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/squareup/tmes/MessageAdapter;->tagMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Lcom/squareup/tmes/ProtoField;->type()Lcom/squareup/tmes/Message$Datatype;

    move-result-object v8

    sget-object v9, Lcom/squareup/tmes/Message$Datatype;->ENUM:Lcom/squareup/tmes/Message$Datatype;

    if-ne v8, v9, :cond_0

    invoke-direct {v0, v12}, Lcom/squareup/tmes/MessageAdapter;->getEnumType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v9

    goto :goto_1

    :cond_0
    sget-object v9, Lcom/squareup/tmes/Message$Datatype;->MESSAGE:Lcom/squareup/tmes/Message$Datatype;

    if-ne v8, v9, :cond_1

    invoke-direct {v0, v12}, Lcom/squareup/tmes/MessageAdapter;->getMessageType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    move-object v11, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v14, Lcom/squareup/tmes/MessageAdapter$FieldInfo;

    invoke-interface {v5}, Lcom/squareup/tmes/ProtoField;->label()Lcom/squareup/tmes/Message$Label;

    move-result-object v9

    invoke-interface {v5}, Lcom/squareup/tmes/ProtoField;->redacted()Z

    move-result v10

    invoke-direct {v0, v7}, Lcom/squareup/tmes/MessageAdapter;->getBuilderField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/16 v16, 0x0

    move-object v5, v14

    move-object/from16 p1, v1

    move-object v1, v14

    move-object/from16 v14, v16

    invoke-direct/range {v5 .. v14}, Lcom/squareup/tmes/MessageAdapter$FieldInfo;-><init>(ILjava/lang/String;Lcom/squareup/tmes/Message$Datatype;Lcom/squareup/tmes/Message$Label;ZLjava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lcom/squareup/tmes/MessageAdapter$1;)V

    invoke-interface {v2, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object/from16 p1, v1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/squareup/tmes/TagMap;->of(Ljava/util/Map;)Lcom/squareup/tmes/TagMap;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/tmes/MessageAdapter;->fieldInfoMap:Lcom/squareup/tmes/TagMap;

    return-void
.end method

.method private getBuilderField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->builderType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No builder field "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/tmes/MessageAdapter;->builderType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TM;>;)",
            "Ljava/lang/Class<",
            "Lcom/squareup/tmes/Message$Builder<",
            "TM;>;>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$Builder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No builder class found for message type "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEnumAdapter(I)Lcom/squareup/tmes/EnumAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/tmes/EnumAdapter<",
            "+",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->fieldInfoMap:Lcom/squareup/tmes/TagMap;

    invoke-virtual {v0, p1}, Lcom/squareup/tmes/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->enumAdapter:Lcom/squareup/tmes/EnumAdapter;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/squareup/tmes/MessageAdapter;->wire:Lcom/squareup/tmes/Wire;

    invoke-direct {p0, p1}, Lcom/squareup/tmes/MessageAdapter;->getEnumClass(I)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/squareup/tmes/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/EnumAdapter;

    move-result-object p1

    if-eqz v0, :cond_1

    iput-object p1, v0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->enumAdapter:Lcom/squareup/tmes/EnumAdapter;

    :cond_1
    return-object p1
.end method

.method private getEnumClass(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->fieldInfoMap:Lcom/squareup/tmes/TagMap;

    invoke-virtual {v0, p1}, Lcom/squareup/tmes/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->enumType:Ljava/lang/Class;

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/MessageAdapter;->getExtension(I)Lcom/squareup/tmes/Extension;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/squareup/tmes/Extension;->getEnumType()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getEnumSize(Lcom/squareup/tmes/ProtoEnum;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">(TE;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->wire:Lcom/squareup/tmes/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/tmes/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/EnumAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/tmes/EnumAdapter;->toInt(Lcom/squareup/tmes/ProtoEnum;)I

    move-result p1

    invoke-static {p1}, Lcom/squareup/tmes/WireOutput;->varint32Size(I)I

    move-result p1

    return p1
.end method

.method private getEnumType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Class;

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getExtension(I)Lcom/squareup/tmes/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/tmes/Extension<",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->wire:Lcom/squareup/tmes/Wire;

    iget-object v0, v0, Lcom/squareup/tmes/Wire;->registry:Lcom/squareup/tmes/ExtensionRegistry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/squareup/tmes/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/tmes/ExtensionRegistry;->getExtension(Ljava/lang/Class;I)Lcom/squareup/tmes/Extension;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getExtensionsSerializedSize(Lcom/squareup/tmes/ExtensionMap;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Lcom/squareup/tmes/ExtensionMap<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/squareup/tmes/ExtensionMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/squareup/tmes/ExtensionMap;->getExtension(I)Lcom/squareup/tmes/Extension;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/squareup/tmes/ExtensionMap;->getExtensionValue(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lcom/squareup/tmes/Extension;->getTag()I

    move-result v4

    invoke-virtual {v2}, Lcom/squareup/tmes/Extension;->getDatatype()Lcom/squareup/tmes/Message$Datatype;

    move-result-object v5

    invoke-virtual {v2}, Lcom/squareup/tmes/Extension;->getLabel()Lcom/squareup/tmes/Message$Label;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/tmes/Message$Label;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/squareup/tmes/Message$Label;->isPacked()Z

    move-result v2

    check-cast v3, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-direct {p0, v3, v4, v5}, Lcom/squareup/tmes/MessageAdapter;->getPackedSize(Ljava/util/List;ILcom/squareup/tmes/Message$Datatype;)I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3, v4, v5}, Lcom/squareup/tmes/MessageAdapter;->getRepeatedSize(Ljava/util/List;ILcom/squareup/tmes/Message$Datatype;)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4, v3, v5}, Lcom/squareup/tmes/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private getMessageAdapter(I)Lcom/squareup/tmes/MessageAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/tmes/MessageAdapter<",
            "+",
            "Lcom/squareup/tmes/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->fieldInfoMap:Lcom/squareup/tmes/TagMap;

    invoke-virtual {v0, p1}, Lcom/squareup/tmes/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->messageAdapter:Lcom/squareup/tmes/MessageAdapter;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/squareup/tmes/MessageAdapter;->wire:Lcom/squareup/tmes/Wire;

    invoke-direct {p0, p1}, Lcom/squareup/tmes/MessageAdapter;->getMessageClass(I)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/squareup/tmes/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/MessageAdapter;

    move-result-object p1

    if-eqz v0, :cond_1

    iput-object p1, v0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->messageAdapter:Lcom/squareup/tmes/MessageAdapter;

    :cond_1
    return-object p1
.end method

.method private getMessageClass(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "Lcom/squareup/tmes/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->fieldInfoMap:Lcom/squareup/tmes/TagMap;

    invoke-virtual {v0, p1}, Lcom/squareup/tmes/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->messageType:Ljava/lang/Class;

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/MessageAdapter;->getExtension(I)Lcom/squareup/tmes/Extension;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/squareup/tmes/Extension;->getMessageType()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getMessageSize(Lcom/squareup/tmes/Message;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/tmes/Message;",
            ">(TM;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/squareup/tmes/Message;->getSerializedSize()I

    move-result p1

    invoke-static {p1}, Lcom/squareup/tmes/WireOutput;->varint32Size(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getMessageType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/squareup/tmes/Message;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/squareup/tmes/Message;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Class;

    const-class v0, Lcom/squareup/tmes/Message;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPackedSize(Ljava/util/List;ILcom/squareup/tmes/Message$Datatype;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I",
            "Lcom/squareup/tmes/Message$Datatype;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/squareup/tmes/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/squareup/tmes/WireType;->LENGTH_DELIMITED:Lcom/squareup/tmes/WireType;

    invoke-static {p2, p1}, Lcom/squareup/tmes/WireOutput;->makeTag(ILcom/squareup/tmes/WireType;)I

    move-result p1

    invoke-static {p1}, Lcom/squareup/tmes/WireOutput;->varint32Size(I)I

    move-result p1

    invoke-static {v0}, Lcom/squareup/tmes/WireOutput;->varint32Size(I)I

    move-result p2

    add-int/2addr p2, p1

    add-int/2addr p2, v0

    return p2
.end method

.method private getRepeatedSize(Ljava/util/List;ILcom/squareup/tmes/Message$Datatype;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I",
            "Lcom/squareup/tmes/Message$Datatype;",
            ")I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p2, v1, p3}, Lcom/squareup/tmes/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getSerializedSize(ILjava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)I
    .locals 0

    invoke-static {p1}, Lcom/squareup/tmes/WireOutput;->varintTagSize(I)I

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/squareup/tmes/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)I
    .locals 1

    sget-object v0, Lcom/squareup/tmes/MessageAdapter$1;->$SwitchMap$com$squareup$tmes$Message$Datatype:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :pswitch_0
    const/16 p1, 0x8

    return p1

    :pswitch_1
    const/4 p1, 0x4

    return p1

    :pswitch_2
    check-cast p1, Lcom/squareup/tmes/Message;

    invoke-direct {p0, p1}, Lcom/squareup/tmes/MessageAdapter;->getMessageSize(Lcom/squareup/tmes/Message;)I

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    :goto_0
    invoke-static {p1}, Lcom/squareup/tmes/WireOutput;->varint32Size(I)I

    move-result p2

    add-int/2addr p2, p1

    return p2

    :pswitch_4
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/squareup/tmes/MessageAdapter;->utf8Length(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_5
    check-cast p1, Lcom/squareup/tmes/ProtoEnum;

    invoke-direct {p0, p1}, Lcom/squareup/tmes/MessageAdapter;->getEnumSize(Lcom/squareup/tmes/ProtoEnum;)I

    move-result p1

    return p1

    :pswitch_6
    const/4 p1, 0x1

    return p1

    :pswitch_7
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/squareup/tmes/WireOutput;->zigZag64(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/squareup/tmes/WireOutput;->varint64Size(J)I

    move-result p1

    return p1

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/squareup/tmes/WireOutput;->zigZag32(I)I

    move-result p1

    invoke-static {p1}, Lcom/squareup/tmes/WireOutput;->varint32Size(I)I

    move-result p1

    return p1

    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/squareup/tmes/WireOutput;->varint32Size(I)I

    move-result p1

    return p1

    :pswitch_a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/squareup/tmes/WireOutput;->varint64Size(J)I

    move-result p1

    return p1

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/squareup/tmes/WireOutput;->int32Size(I)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readMessage(Lcom/squareup/tmes/WireInput;I)Lcom/squareup/tmes/Message;
    .locals 3

    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readVarint32()I

    move-result v0

    iget v1, p1, Lcom/squareup/tmes/WireInput;->recursionDepth:I

    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/squareup/tmes/WireInput;->pushLimit(I)I

    move-result v0

    iget v1, p1, Lcom/squareup/tmes/WireInput;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/squareup/tmes/WireInput;->recursionDepth:I

    invoke-direct {p0, p2}, Lcom/squareup/tmes/MessageAdapter;->getMessageAdapter(I)Lcom/squareup/tmes/MessageAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/squareup/tmes/MessageAdapter;->read(Lcom/squareup/tmes/WireInput;)Lcom/squareup/tmes/Message;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/squareup/tmes/WireInput;->checkLastTagWas(I)V

    iget v1, p1, Lcom/squareup/tmes/WireInput;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/squareup/tmes/WireInput;->recursionDepth:I

    invoke-virtual {p1, v0}, Lcom/squareup/tmes/WireInput;->popLimit(I)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Wire recursion limit exceeded"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readUnknownField(Lcom/squareup/tmes/Message$Builder;Lcom/squareup/tmes/WireInput;ILcom/squareup/tmes/WireType;)V
    .locals 2

    sget-object v0, Lcom/squareup/tmes/MessageAdapter$1;->$SwitchMap$com$squareup$tmes$WireType:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported wire type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p2}, Lcom/squareup/tmes/WireInput;->skipGroup()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lcom/squareup/tmes/WireInput;->readVarint32()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/squareup/tmes/WireInput;->readBytes(I)Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/squareup/tmes/Message$Builder;->addLengthDelimited(ILokio/ByteString;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/squareup/tmes/WireInput;->readFixed64()J

    move-result-wide v0

    invoke-virtual {p1, p3, v0, v1}, Lcom/squareup/tmes/Message$Builder;->addFixed64(IJ)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lcom/squareup/tmes/WireInput;->readFixed32()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lcom/squareup/tmes/Message$Builder;->addFixed32(II)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lcom/squareup/tmes/WireInput;->readVarint64()J

    move-result-wide v0

    invoke-virtual {p1, p3, v0, v1}, Lcom/squareup/tmes/Message$Builder;->addVarint(IJ)V

    :goto_0
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private readValue(Lcom/squareup/tmes/WireInput;ILcom/squareup/tmes/Message$Datatype;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/squareup/tmes/MessageAdapter$1;->$SwitchMap$com$squareup$tmes$Message$Datatype:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/squareup/tmes/MessageAdapter;->readMessage(Lcom/squareup/tmes/WireInput;I)Lcom/squareup/tmes/Message;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readBytes()Lokio/ByteString;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-direct {p0, p2}, Lcom/squareup/tmes/MessageAdapter;->getEnumAdapter(I)Lcom/squareup/tmes/EnumAdapter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readVarint32()I

    move-result p1

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/squareup/tmes/EnumAdapter;->fromInt(I)Lcom/squareup/tmes/ProtoEnum;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readVarint32()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readVarint64()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/squareup/tmes/WireInput;->decodeZigZag64(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readVarint32()I

    move-result p1

    invoke-static {p1}, Lcom/squareup/tmes/WireInput;->decodeZigZag32(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readVarint64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p1}, Lcom/squareup/tmes/WireInput;->readVarint32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setExtension(Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;Lcom/squareup/tmes/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;",
            "Lcom/squareup/tmes/Extension<",
            "**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;->setExtension(Lcom/squareup/tmes/Extension;Ljava/lang/Object;)Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;

    return-void
.end method

.method private utf8Length(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private writeEnum(Lcom/squareup/tmes/ProtoEnum;Lcom/squareup/tmes/WireOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">(TE;",
            "Lcom/squareup/tmes/WireOutput;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->wire:Lcom/squareup/tmes/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/tmes/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/EnumAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/tmes/EnumAdapter;->toInt(Lcom/squareup/tmes/ProtoEnum;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/squareup/tmes/WireOutput;->writeVarint32(I)V

    return-void
.end method

.method private writeExtensions(Lcom/squareup/tmes/WireOutput;Lcom/squareup/tmes/ExtensionMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;>(",
            "Lcom/squareup/tmes/WireOutput;",
            "Lcom/squareup/tmes/ExtensionMap<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/squareup/tmes/ExtensionMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Lcom/squareup/tmes/ExtensionMap;->getExtension(I)Lcom/squareup/tmes/Extension;

    move-result-object v1

    invoke-virtual {p2, v0}, Lcom/squareup/tmes/ExtensionMap;->getExtensionValue(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/squareup/tmes/Extension;->getTag()I

    move-result v3

    invoke-virtual {v1}, Lcom/squareup/tmes/Extension;->getDatatype()Lcom/squareup/tmes/Message$Datatype;

    move-result-object v4

    invoke-virtual {v1}, Lcom/squareup/tmes/Extension;->getLabel()Lcom/squareup/tmes/Message$Label;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/tmes/Message$Label;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/squareup/tmes/Message$Label;->isPacked()Z

    move-result v1

    check-cast v2, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/tmes/MessageAdapter;->writePacked(Lcom/squareup/tmes/WireOutput;Ljava/util/List;ILcom/squareup/tmes/Message$Datatype;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/squareup/tmes/MessageAdapter;->writeRepeated(Lcom/squareup/tmes/WireOutput;Ljava/util/List;ILcom/squareup/tmes/Message$Datatype;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v3, v2, v4}, Lcom/squareup/tmes/MessageAdapter;->writeValue(Lcom/squareup/tmes/WireOutput;ILjava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeMessage(Lcom/squareup/tmes/Message;Lcom/squareup/tmes/WireOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/tmes/Message;",
            ">(TM;",
            "Lcom/squareup/tmes/WireOutput;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/squareup/tmes/Message;->getSerializedSize()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/squareup/tmes/WireOutput;->writeVarint32(I)V

    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->wire:Lcom/squareup/tmes/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/tmes/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/squareup/tmes/MessageAdapter;->write(Lcom/squareup/tmes/Message;Lcom/squareup/tmes/WireOutput;)V

    return-void
.end method

.method private writePacked(Lcom/squareup/tmes/WireOutput;Ljava/util/List;ILcom/squareup/tmes/Message$Datatype;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tmes/WireOutput;",
            "Ljava/util/List<",
            "*>;I",
            "Lcom/squareup/tmes/Message$Datatype;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p4}, Lcom/squareup/tmes/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/squareup/tmes/WireType;->LENGTH_DELIMITED:Lcom/squareup/tmes/WireType;

    invoke-virtual {p1, p3, v0}, Lcom/squareup/tmes/WireOutput;->writeTag(ILcom/squareup/tmes/WireType;)V

    invoke-virtual {p1, v1}, Lcom/squareup/tmes/WireOutput;->writeVarint32(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p3, p4}, Lcom/squareup/tmes/MessageAdapter;->writeValueNoTag(Lcom/squareup/tmes/WireOutput;Ljava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private writeRepeated(Lcom/squareup/tmes/WireOutput;Ljava/util/List;ILcom/squareup/tmes/Message$Datatype;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tmes/WireOutput;",
            "Ljava/util/List<",
            "*>;I",
            "Lcom/squareup/tmes/Message$Datatype;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0, p4}, Lcom/squareup/tmes/MessageAdapter;->writeValue(Lcom/squareup/tmes/WireOutput;ILjava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeValue(Lcom/squareup/tmes/WireOutput;ILjava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)V
    .locals 1

    invoke-virtual {p4}, Lcom/squareup/tmes/Message$Datatype;->wireType()Lcom/squareup/tmes/WireType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/tmes/WireOutput;->writeTag(ILcom/squareup/tmes/WireType;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/squareup/tmes/MessageAdapter;->writeValueNoTag(Lcom/squareup/tmes/WireOutput;Ljava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)V

    return-void
.end method

.method private writeValueNoTag(Lcom/squareup/tmes/WireOutput;Ljava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)V
    .locals 1

    sget-object v0, Lcom/squareup/tmes/MessageAdapter$1;->$SwitchMap$com$squareup$tmes$Message$Datatype:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :pswitch_0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/squareup/tmes/WireOutput;->writeFixed64(J)V

    goto/16 :goto_4

    :pswitch_2
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    goto :goto_1

    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_1
    invoke-virtual {p1, p2}, Lcom/squareup/tmes/WireOutput;->writeFixed32(I)V

    goto :goto_4

    :pswitch_4
    check-cast p2, Lcom/squareup/tmes/Message;

    invoke-direct {p0, p2, p1}, Lcom/squareup/tmes/MessageAdapter;->writeMessage(Lcom/squareup/tmes/Message;Lcom/squareup/tmes/WireOutput;)V

    goto :goto_4

    :pswitch_5
    check-cast p2, Lokio/ByteString;

    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/squareup/tmes/WireOutput;->writeVarint32(I)V

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/tmes/WireOutput;->writeRawBytes([B)V

    goto :goto_4

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    array-length p3, p2

    invoke-virtual {p1, p3}, Lcom/squareup/tmes/WireOutput;->writeVarint32(I)V

    invoke-virtual {p1, p2}, Lcom/squareup/tmes/WireOutput;->writeRawBytes([B)V

    goto :goto_4

    :pswitch_7
    check-cast p2, Lcom/squareup/tmes/ProtoEnum;

    invoke-direct {p0, p2, p1}, Lcom/squareup/tmes/MessageAdapter;->writeEnum(Lcom/squareup/tmes/ProtoEnum;Lcom/squareup/tmes/WireOutput;)V

    goto :goto_4

    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/squareup/tmes/WireOutput;->writeRawByte(I)V

    goto :goto_4

    :pswitch_9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/squareup/tmes/WireOutput;->zigZag64(J)J

    move-result-wide p2

    goto :goto_3

    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/squareup/tmes/WireOutput;->zigZag32(I)I

    move-result p2

    goto :goto_2

    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_2
    invoke-virtual {p1, p2}, Lcom/squareup/tmes/WireOutput;->writeVarint32(I)V

    goto :goto_4

    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :goto_3
    invoke-virtual {p1, p2, p3}, Lcom/squareup/tmes/WireOutput;->writeVarint64(J)V

    goto :goto_4

    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/squareup/tmes/WireOutput;->writeSignedVarint32(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getExtension(Ljava/lang/String;)Lcom/squareup/tmes/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/tmes/Extension<",
            "Lcom/squareup/tmes/ExtendableMessage<",
            "*>;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->wire:Lcom/squareup/tmes/Wire;

    iget-object v0, v0, Lcom/squareup/tmes/Wire;->registry:Lcom/squareup/tmes/ExtensionRegistry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/squareup/tmes/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/tmes/ExtensionRegistry;->getExtension(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/tmes/Extension;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getField(Ljava/lang/String;)Lcom/squareup/tmes/MessageAdapter$FieldInfo;
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->tagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->fieldInfoMap:Lcom/squareup/tmes/TagMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/squareup/tmes/TagMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/tmes/MessageAdapter$FieldInfo;

    :goto_0
    return-object p1
.end method

.method public getFieldValue(Lcom/squareup/tmes/Message;Lcom/squareup/tmes/MessageAdapter$FieldInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/tmes/MessageAdapter$FieldInfo;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p2}, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->access$000(Lcom/squareup/tmes/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->access$000(Lcom/squareup/tmes/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Field is not of type \"Message\""

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public getFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/squareup/tmes/MessageAdapter$FieldInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->fieldInfoMap:Lcom/squareup/tmes/TagMap;

    invoke-virtual {v0}, Lcom/squareup/tmes/TagMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize(Lcom/squareup/tmes/Message;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/tmes/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/tmes/MessageAdapter$FieldInfo;

    invoke-virtual {p0, p1, v2}, Lcom/squareup/tmes/MessageAdapter;->getFieldValue(Lcom/squareup/tmes/Message;Lcom/squareup/tmes/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v2, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->tag:I

    iget-object v5, v2, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/tmes/Message$Datatype;

    iget-object v2, v2, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->label:Lcom/squareup/tmes/Message$Label;

    invoke-virtual {v2}, Lcom/squareup/tmes/Message$Label;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/squareup/tmes/Message$Label;->isPacked()Z

    move-result v2

    check-cast v3, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-direct {p0, v3, v4, v5}, Lcom/squareup/tmes/MessageAdapter;->getPackedSize(Ljava/util/List;ILcom/squareup/tmes/Message$Datatype;)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3, v4, v5}, Lcom/squareup/tmes/MessageAdapter;->getRepeatedSize(Ljava/util/List;ILcom/squareup/tmes/Message$Datatype;)I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v4, v3, v5}, Lcom/squareup/tmes/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/squareup/tmes/ExtendableMessage;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/squareup/tmes/ExtendableMessage;

    iget-object v0, v0, Lcom/squareup/tmes/ExtendableMessage;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/squareup/tmes/MessageAdapter;->getExtensionsSerializedSize(Lcom/squareup/tmes/ExtensionMap;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p1}, Lcom/squareup/tmes/Message;->getUnknownFieldsSerializedSize()I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public newBuilder()Lcom/squareup/tmes/Message$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/tmes/Message$Builder<",
            "TM;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->builderType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/tmes/Message$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public read(Lcom/squareup/tmes/WireInput;)Lcom/squareup/tmes/Message;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tmes/WireInput;",
            ")TM;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_0
    iget-object v2, v1, Lcom/squareup/tmes/MessageAdapter;->builderType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/tmes/Message$Builder;

    new-instance v3, Lcom/squareup/tmes/MessageAdapter$Storage;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/squareup/tmes/MessageAdapter$Storage;-><init>(Lcom/squareup/tmes/MessageAdapter$1;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/tmes/WireInput;->readTag()I

    move-result v5

    shr-int/lit8 v6, v5, 0x3

    invoke-static {v5}, Lcom/squareup/tmes/WireType;->valueOf(I)Lcom/squareup/tmes/WireType;

    move-result-object v5

    if-nez v6, :cond_2

    invoke-virtual {v3}, Lcom/squareup/tmes/MessageAdapter$Storage;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Lcom/squareup/tmes/MessageAdapter;->fieldInfoMap:Lcom/squareup/tmes/TagMap;

    invoke-virtual {v5, v4}, Lcom/squareup/tmes/TagMap;->containsKey(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Lcom/squareup/tmes/MessageAdapter$Storage;->get(I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/squareup/tmes/MessageAdapter;->setBuilderField(Lcom/squareup/tmes/Message$Builder;ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    move-object v5, v2

    check-cast v5, Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;

    invoke-direct {v1, v4}, Lcom/squareup/tmes/MessageAdapter;->getExtension(I)Lcom/squareup/tmes/Extension;

    move-result-object v6

    invoke-virtual {v3, v4}, Lcom/squareup/tmes/MessageAdapter$Storage;->get(I)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v5, v6, v4}, Lcom/squareup/tmes/MessageAdapter;->setExtension(Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;Lcom/squareup/tmes/Extension;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/squareup/tmes/Message$Builder;->build()Lcom/squareup/tmes/Message;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v7, v1, Lcom/squareup/tmes/MessageAdapter;->fieldInfoMap:Lcom/squareup/tmes/TagMap;

    invoke-virtual {v7, v6}, Lcom/squareup/tmes/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/tmes/MessageAdapter$FieldInfo;

    if-eqz v7, :cond_3

    iget-object v8, v7, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/tmes/Message$Datatype;

    iget-object v7, v7, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->label:Lcom/squareup/tmes/Message$Label;

    move-object v9, v8

    move-object v8, v4

    goto :goto_2

    :cond_3
    invoke-direct {v1, v6}, Lcom/squareup/tmes/MessageAdapter;->getExtension(I)Lcom/squareup/tmes/Extension;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-direct {v1, v2, v0, v6, v5}, Lcom/squareup/tmes/MessageAdapter;->readUnknownField(Lcom/squareup/tmes/Message$Builder;Lcom/squareup/tmes/WireInput;ILcom/squareup/tmes/WireType;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Lcom/squareup/tmes/Extension;->getDatatype()Lcom/squareup/tmes/Message$Datatype;

    move-result-object v8

    invoke-virtual {v7}, Lcom/squareup/tmes/Extension;->getLabel()Lcom/squareup/tmes/Message$Label;

    move-result-object v9

    move-object/from16 v16, v8

    move-object v8, v7

    move-object v7, v9

    move-object/from16 v9, v16

    :goto_2
    invoke-virtual {v7}, Lcom/squareup/tmes/Message$Label;->isPacked()Z

    move-result v10

    if-eqz v10, :cond_8

    sget-object v10, Lcom/squareup/tmes/WireType;->LENGTH_DELIMITED:Lcom/squareup/tmes/WireType;

    if-ne v5, v10, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/tmes/WireInput;->readVarint32()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/tmes/WireInput;->getPosition()J

    move-result-wide v7

    invoke-virtual {v0, v5}, Lcom/squareup/tmes/WireInput;->pushLimit(I)I

    move-result v10

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/tmes/WireInput;->getPosition()J

    move-result-wide v11

    int-to-long v13, v5

    add-long/2addr v13, v7

    cmp-long v15, v11, v13

    if-gez v15, :cond_6

    invoke-direct {v1, v0, v6, v9}, Lcom/squareup/tmes/MessageAdapter;->readValue(Lcom/squareup/tmes/WireInput;ILcom/squareup/tmes/Message$Datatype;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/squareup/tmes/Message$Datatype;->ENUM:Lcom/squareup/tmes/Message$Datatype;

    if-ne v9, v12, :cond_5

    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_5

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v2, v6, v11, v12}, Lcom/squareup/tmes/Message$Builder;->addVarint(IJ)V

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v6, v11}, Lcom/squareup/tmes/MessageAdapter$Storage;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v10}, Lcom/squareup/tmes/WireInput;->popLimit(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/tmes/WireInput;->getPosition()J

    move-result-wide v5

    cmp-long v7, v5, v13

    if-nez v7, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Packed data had wrong length!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {v1, v0, v6, v9}, Lcom/squareup/tmes/MessageAdapter;->readValue(Lcom/squareup/tmes/WireInput;ILcom/squareup/tmes/Message$Datatype;)Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Lcom/squareup/tmes/Message$Datatype;->ENUM:Lcom/squareup/tmes/Message$Datatype;

    if-ne v9, v10, :cond_9

    instance-of v9, v5, Ljava/lang/Integer;

    if-eqz v9, :cond_9

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v7, v5

    invoke-virtual {v2, v6, v7, v8}, Lcom/squareup/tmes/Message$Builder;->addVarint(IJ)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v7}, Lcom/squareup/tmes/Message$Label;->isRepeated()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v3, v6, v5}, Lcom/squareup/tmes/MessageAdapter$Storage;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    if-eqz v8, :cond_b

    move-object v6, v2

    check-cast v6, Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;

    invoke-direct {v1, v6, v8, v5}, Lcom/squareup/tmes/MessageAdapter;->setExtension(Lcom/squareup/tmes/ExtendableMessage$ExtendableBuilder;Lcom/squareup/tmes/Extension;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1, v2, v6, v5}, Lcom/squareup/tmes/MessageAdapter;->setBuilderField(Lcom/squareup/tmes/Message$Builder;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setBuilderField(Lcom/squareup/tmes/Message$Builder;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tmes/Message$Builder<",
            "TM;>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/squareup/tmes/MessageAdapter;->fieldInfoMap:Lcom/squareup/tmes/TagMap;

    invoke-virtual {v0, p2}, Lcom/squareup/tmes/TagMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/squareup/tmes/MessageAdapter$FieldInfo;

    invoke-static {p2}, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->access$100(Lcom/squareup/tmes/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public toByteArray(Lcom/squareup/tmes/Message;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)[B"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/MessageAdapter;->getSerializedSize(Lcom/squareup/tmes/Message;)I

    move-result v0

    new-array v0, v0, [B

    :try_start_0
    invoke-static {v0}, Lcom/squareup/tmes/WireOutput;->newInstance([B)Lcom/squareup/tmes/WireOutput;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/squareup/tmes/MessageAdapter;->write(Lcom/squareup/tmes/Message;Lcom/squareup/tmes/WireOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString(Lcom/squareup/tmes/Message;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/tmes/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/tmes/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/tmes/MessageAdapter$FieldInfo;

    invoke-virtual {p0, p1, v3}, Lcom/squareup/tmes/MessageAdapter;->getFieldValue(Lcom/squareup/tmes/Message;Lcom/squareup/tmes/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v3, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->redacted:Z

    if-eqz v2, :cond_1

    const-string/jumbo v4, "\u2588\u2588"

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/squareup/tmes/ExtendableMessage;

    const-string/jumbo v3, "}"

    if-eqz v1, :cond_3

    check-cast p1, Lcom/squareup/tmes/ExtendableMessage;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{extensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/tmes/ExtendableMessage;->extensionsToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/squareup/tmes/Message;Lcom/squareup/tmes/WireOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/tmes/WireOutput;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/tmes/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/tmes/MessageAdapter$FieldInfo;

    invoke-virtual {p0, p1, v1}, Lcom/squareup/tmes/MessageAdapter;->getFieldValue(Lcom/squareup/tmes/Message;Lcom/squareup/tmes/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v3, v1, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->tag:I

    iget-object v4, v1, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/tmes/Message$Datatype;

    iget-object v1, v1, Lcom/squareup/tmes/MessageAdapter$FieldInfo;->label:Lcom/squareup/tmes/Message$Label;

    invoke-virtual {v1}, Lcom/squareup/tmes/Message$Label;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/squareup/tmes/Message$Label;->isPacked()Z

    move-result v1

    check-cast v2, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, v2, v3, v4}, Lcom/squareup/tmes/MessageAdapter;->writePacked(Lcom/squareup/tmes/WireOutput;Ljava/util/List;ILcom/squareup/tmes/Message$Datatype;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, v2, v3, v4}, Lcom/squareup/tmes/MessageAdapter;->writeRepeated(Lcom/squareup/tmes/WireOutput;Ljava/util/List;ILcom/squareup/tmes/Message$Datatype;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v3, v2, v4}, Lcom/squareup/tmes/MessageAdapter;->writeValue(Lcom/squareup/tmes/WireOutput;ILjava/lang/Object;Lcom/squareup/tmes/Message$Datatype;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/squareup/tmes/ExtendableMessage;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/squareup/tmes/ExtendableMessage;

    iget-object v0, v0, Lcom/squareup/tmes/ExtendableMessage;->extensionMap:Lcom/squareup/tmes/ExtensionMap;

    if-eqz v0, :cond_4

    invoke-direct {p0, p2, v0}, Lcom/squareup/tmes/MessageAdapter;->writeExtensions(Lcom/squareup/tmes/WireOutput;Lcom/squareup/tmes/ExtensionMap;)V

    :cond_4
    invoke-virtual {p1, p2}, Lcom/squareup/tmes/Message;->writeUnknownFieldMap(Lcom/squareup/tmes/WireOutput;)V

    return-void
.end method
