.class public Lcom/uqm/crashsight/protobuf/MapEntry$Builder;
.super Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/MapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder<",
        "Lcom/uqm/crashsight/protobuf/MapEntry$Builder<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapEntry$Metadata<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/MapEntry$Metadata<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 251
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->d:Ljava/lang/Object;

    iget-object v3, p1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->f:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;B)V
    .locals 0

    .line 243
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/MapEntry$Metadata<",
            "TK;TV;>;TK;TV;ZZ)V"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    .line 256
    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b:Ljava/lang/Object;

    .line 257
    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->c:Ljava/lang/Object;

    .line 258
    iput-boolean p4, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->d:Z

    .line 259
    iput-boolean p5, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZB)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V
    .locals 3

    .line 314
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    return-void

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong FieldDescriptor \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" used in message \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 319
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()Lcom/uqm/crashsight/protobuf/MapEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 388
    new-instance v0, Lcom/uqm/crashsight/protobuf/MapEntry;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v2, v1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->d:Ljava/lang/Object;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v3, v3, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->f:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/MapEntry;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;B)V

    return-object v0
.end method

.method private d()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 442
    new-instance v6, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->c:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->d:Z

    iget-boolean v5, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->e:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-object v6
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/uqm/crashsight/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 272
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->d:Z

    return-object p0
.end method

.method public final a()Lcom/uqm/crashsight/protobuf/MapEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapEntry;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 298
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 2377
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/uqm/crashsight/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 284
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->e:Z

    return-object p0
.end method

.method public final b()Lcom/uqm/crashsight/protobuf/MapEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/uqm/crashsight/protobuf/MapEntry;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->c:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/MapEntry;-><init>(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;B)V

    return-object v0
.end method

.method public synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 3361
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    .line 3362
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 4277
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b:Ljava/lang/Object;

    .line 4278
    iput-boolean v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->d:Z

    goto :goto_0

    .line 4289
    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->c:Ljava/lang/Object;

    .line 4290
    iput-boolean v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->e:Z

    :goto_0
    return-object p0
.end method

.method public synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->d()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->d()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->d()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->d()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->d()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 399
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    .line 400
    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->c()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->c()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3

    .line 415
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    .line 416
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b:Ljava/lang/Object;

    goto :goto_0

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->c:Ljava/lang/Object;

    .line 418
    :goto_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    sget-object v2, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->n:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v1, v2, :cond_1

    .line 419
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->x()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    move-result-object p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 436
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public hasField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 409
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    .line 410
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->d:Z

    return p1

    :cond_0
    iget-boolean p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->e:Z

    return p1
.end method

.method public isInitialized()Z
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/MapEntry;->a(Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newBuilderForField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 3

    .line 325
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    .line 329
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->c:Ljava/lang/Object;

    check-cast p1, Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Message;->newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p1

    return-object p1

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not a message value field."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 4338
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    .line 4339
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4340
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    goto :goto_1

    .line 4342
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->n:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1

    .line 4343
    check-cast p2, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 4344
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->h()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;->k:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 4345
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4350
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a:Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;->f:Ljava/lang/Object;

    check-cast p1, Lcom/uqm/crashsight/protobuf/Message;

    .line 4351
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Message;->toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p1

    check-cast p2, Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {p1, p2}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Message$Builder;->build()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p2

    .line 4354
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    return-object p0
.end method
