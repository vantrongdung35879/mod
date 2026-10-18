.class public abstract Lcom/squareup/tmes/Message;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/tmes/Message$Builder;,
        Lcom/squareup/tmes/Message$Label;,
        Lcom/squareup/tmes/Message$Datatype;
    }
.end annotation


# static fields
.field private static final WIRE:Lcom/squareup/tmes/Wire;


# instance fields
.field private transient cachedSerializedSize:I

.field public transient hashCode:I

.field private transient haveCachedSerializedSize:Z

.field private transient unknownFields:Lcom/squareup/tmes/UnknownFieldMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/tmes/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/tmes/Wire;-><init>([Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/tmes/Message;->WIRE:Lcom/squareup/tmes/Wire;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/tmes/Message;->hashCode:I

    return-void
.end method

.method public static synthetic access$000(Lcom/squareup/tmes/Message;)Lcom/squareup/tmes/UnknownFieldMap;
    .locals 0

    iget-object p0, p0, Lcom/squareup/tmes/Message;->unknownFields:Lcom/squareup/tmes/UnknownFieldMap;

    return-object p0
.end method

.method public static synthetic access$100()Lcom/squareup/tmes/Wire;
    .locals 1

    sget-object v0, Lcom/squareup/tmes/Message;->WIRE:Lcom/squareup/tmes/Wire;

    return-object v0
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static enumFromInt(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum;",
            ":",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;I)TE;"
        }
    .end annotation

    sget-object v0, Lcom/squareup/tmes/Message;->WIRE:Lcom/squareup/tmes/Wire;

    invoke-virtual {v0, p0}, Lcom/squareup/tmes/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/EnumAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/squareup/tmes/EnumAdapter;->fromInt(I)Lcom/squareup/tmes/ProtoEnum;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    return-object p0
.end method

.method public static immutableCopyOf(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/squareup/tmes/MessageAdapter$ImmutableList;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static intFromEnum(Ljava/lang/Enum;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum;",
            ":",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">(TE;)I"
        }
    .end annotation

    sget-object v0, Lcom/squareup/tmes/Message;->WIRE:Lcom/squareup/tmes/Wire;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/tmes/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/EnumAdapter;

    move-result-object v0

    check-cast p0, Lcom/squareup/tmes/ProtoEnum;

    invoke-virtual {v0, p0}, Lcom/squareup/tmes/EnumAdapter;->toInt(Lcom/squareup/tmes/ProtoEnum;)I

    move-result p0

    return p0
.end method

.method private write(Lcom/squareup/tmes/WireOutput;)V
    .locals 2

    sget-object v0, Lcom/squareup/tmes/Message;->WIRE:Lcom/squareup/tmes/Wire;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/tmes/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/MessageAdapter;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/squareup/tmes/MessageAdapter;->write(Lcom/squareup/tmes/Message;Lcom/squareup/tmes/WireOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public equals(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p2, v0

    :cond_1
    if-eq p1, p2, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getSerializedSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/squareup/tmes/Message;->haveCachedSerializedSize:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/tmes/Message;->WIRE:Lcom/squareup/tmes/Wire;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/tmes/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/tmes/MessageAdapter;->getSerializedSize(Lcom/squareup/tmes/Message;)I

    move-result v0

    iput v0, p0, Lcom/squareup/tmes/Message;->cachedSerializedSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/tmes/Message;->haveCachedSerializedSize:Z

    :cond_0
    iget v0, p0, Lcom/squareup/tmes/Message;->cachedSerializedSize:I

    return v0
.end method

.method public getUnknownFieldsSerializedSize()I
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/Message;->unknownFields:Lcom/squareup/tmes/UnknownFieldMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/tmes/UnknownFieldMap;->getSerializedSize()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setBuilder(Lcom/squareup/tmes/Message$Builder;)V
    .locals 1

    iget-object p1, p1, Lcom/squareup/tmes/Message$Builder;->unknownFieldMap:Lcom/squareup/tmes/UnknownFieldMap;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/squareup/tmes/UnknownFieldMap;

    invoke-direct {v0, p1}, Lcom/squareup/tmes/UnknownFieldMap;-><init>(Lcom/squareup/tmes/UnknownFieldMap;)V

    iput-object v0, p0, Lcom/squareup/tmes/Message;->unknownFields:Lcom/squareup/tmes/UnknownFieldMap;

    :cond_0
    return-void
.end method

.method public toByteArray()[B
    .locals 2

    sget-object v0, Lcom/squareup/tmes/Message;->WIRE:Lcom/squareup/tmes/Wire;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/tmes/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/tmes/MessageAdapter;->toByteArray(Lcom/squareup/tmes/Message;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/squareup/tmes/Message;->WIRE:Lcom/squareup/tmes/Wire;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/tmes/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/tmes/MessageAdapter;->toString(Lcom/squareup/tmes/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unknownFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Lcom/squareup/tmes/UnknownFieldMap$FieldValue;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/tmes/Message;->unknownFields:Lcom/squareup/tmes/UnknownFieldMap;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/squareup/tmes/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/tmes/Message;->writeTo([BII)V

    return-void
.end method

.method public writeTo([BII)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/squareup/tmes/WireOutput;->newInstance([BII)Lcom/squareup/tmes/WireOutput;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Message;->write(Lcom/squareup/tmes/WireOutput;)V

    return-void
.end method

.method public writeUnknownFieldMap(Lcom/squareup/tmes/WireOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/tmes/Message;->unknownFields:Lcom/squareup/tmes/UnknownFieldMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/squareup/tmes/UnknownFieldMap;->write(Lcom/squareup/tmes/WireOutput;)V

    :cond_0
    return-void
.end method
