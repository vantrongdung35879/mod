.class public final Lcom/squareup/tmes/Wire;
.super Ljava/lang/Object;


# instance fields
.field private final builderAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/tmes/Message$Builder;",
            ">;",
            "Lcom/squareup/tmes/BuilderAdapter<",
            "+",
            "Lcom/squareup/tmes/Message$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final enumAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">;",
            "Lcom/squareup/tmes/EnumAdapter<",
            "+",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/squareup/tmes/Message;",
            ">;",
            "Lcom/squareup/tmes/MessageAdapter<",
            "+",
            "Lcom/squareup/tmes/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field public final registry:Lcom/squareup/tmes/ExtensionRegistry;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/tmes/Wire;->messageAdapters:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/tmes/Wire;->builderAdapters:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/tmes/Wire;->enumAdapters:Ljava/util/Map;

    new-instance v0, Lcom/squareup/tmes/ExtensionRegistry;

    invoke-direct {v0}, Lcom/squareup/tmes/ExtensionRegistry;-><init>()V

    iput-object v0, p0, Lcom/squareup/tmes/Wire;->registry:Lcom/squareup/tmes/ExtensionRegistry;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/squareup/tmes/Extension;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/tmes/Extension;

    iget-object v4, p0, Lcom/squareup/tmes/Wire;->registry:Lcom/squareup/tmes/ExtensionRegistry;

    invoke-virtual {v4, v3}, Lcom/squareup/tmes/ExtensionRegistry;->add(Lcom/squareup/tmes/Extension;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/squareup/tmes/Wire;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private parseFrom(Lcom/squareup/tmes/WireInput;Ljava/lang/Class;)Lcom/squareup/tmes/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/tmes/Message;",
            ">(",
            "Lcom/squareup/tmes/WireInput;",
            "Ljava/lang/Class<",
            "TM;>;)TM;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/squareup/tmes/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/MessageAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/squareup/tmes/MessageAdapter;->read(Lcom/squareup/tmes/WireInput;)Lcom/squareup/tmes/Message;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized builderAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/BuilderAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lcom/squareup/tmes/Message$Builder;",
            ">(",
            "Ljava/lang/Class<",
            "TB;>;)",
            "Lcom/squareup/tmes/BuilderAdapter<",
            "TB;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/tmes/Wire;->builderAdapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/tmes/BuilderAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/tmes/BuilderAdapter;

    invoke-direct {v0, p1}, Lcom/squareup/tmes/BuilderAdapter;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/squareup/tmes/Wire;->builderAdapters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized enumAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/EnumAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/tmes/ProtoEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/squareup/tmes/EnumAdapter<",
            "TE;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/tmes/Wire;->enumAdapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/tmes/EnumAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/tmes/EnumAdapter;

    invoke-direct {v0, p1}, Lcom/squareup/tmes/EnumAdapter;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/squareup/tmes/Wire;->enumAdapters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized messageAdapter(Ljava/lang/Class;)Lcom/squareup/tmes/MessageAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/tmes/Message;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;)",
            "Lcom/squareup/tmes/MessageAdapter<",
            "TM;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/tmes/Wire;->messageAdapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/tmes/MessageAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/tmes/MessageAdapter;

    invoke-direct {v0, p0, p1}, Lcom/squareup/tmes/MessageAdapter;-><init>(Lcom/squareup/tmes/Wire;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/squareup/tmes/Wire;->messageAdapters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public parseFrom(Ljava/io/InputStream;Ljava/lang/Class;)Lcom/squareup/tmes/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/tmes/Message;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TM;>;)TM;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/squareup/tmes/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageClass"

    invoke-static {p2, v0}, Lcom/squareup/tmes/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/squareup/tmes/WireInput;->newInstance(Ljava/io/InputStream;)Lcom/squareup/tmes/WireInput;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/squareup/tmes/Wire;->parseFrom(Lcom/squareup/tmes/WireInput;Ljava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lokio/Source;Ljava/lang/Class;)Lcom/squareup/tmes/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/tmes/Message;",
            ">(",
            "Lokio/Source;",
            "Ljava/lang/Class<",
            "TM;>;)TM;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/squareup/tmes/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageClass"

    invoke-static {p2, v0}, Lcom/squareup/tmes/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/squareup/tmes/WireInput;->newInstance(Lokio/Source;)Lcom/squareup/tmes/WireInput;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/squareup/tmes/Wire;->parseFrom(Lcom/squareup/tmes/WireInput;Ljava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom([BIILjava/lang/Class;)Lcom/squareup/tmes/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/tmes/Message;",
            ">([BII",
            "Ljava/lang/Class<",
            "TM;>;)TM;"
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lcom/squareup/tmes/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "offset < 0"

    invoke-static {v2, v3}, Lcom/squareup/tmes/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-ltz p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "count < 0"

    invoke-static {v2, v3}, Lcom/squareup/tmes/Preconditions;->checkArgument(ZLjava/lang/String;)V

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v1, "offset + count > bytes"

    invoke-static {v0, v1}, Lcom/squareup/tmes/Preconditions;->checkArgument(ZLjava/lang/String;)V

    const-string v0, "messageClass"

    invoke-static {p4, v0}, Lcom/squareup/tmes/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/squareup/tmes/WireInput;->newInstance([BII)Lcom/squareup/tmes/WireInput;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/squareup/tmes/Wire;->parseFrom(Lcom/squareup/tmes/WireInput;Ljava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/tmes/Message;",
            ">([B",
            "Ljava/lang/Class<",
            "TM;>;)TM;"
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lcom/squareup/tmes/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageClass"

    invoke-static {p2, v0}, Lcom/squareup/tmes/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/squareup/tmes/WireInput;->newInstance([B)Lcom/squareup/tmes/WireInput;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/squareup/tmes/Wire;->parseFrom(Lcom/squareup/tmes/WireInput;Ljava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object p1

    return-object p1
.end method
