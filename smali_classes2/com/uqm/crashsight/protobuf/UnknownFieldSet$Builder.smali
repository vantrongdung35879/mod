.class public final Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c:Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v0, :cond_1

    .line 331
    iget v1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->b:I

    if-ne p1, v1, :cond_0

    return-object v0

    .line 335
    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->b(ILcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    .line 341
    iput p1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->b:I

    .line 342
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c:Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v0, :cond_3

    .line 344
    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    .line 346
    :cond_3
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c:Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    return-object p1
.end method

.method private b(ILcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;
    .locals 1

    if-eqz p1, :cond_2

    .line 495
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c:Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->b:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c:Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    const/4 v0, 0x0

    .line 498
    iput v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->b:I

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a:Ljava/util/Map;

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 493
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(I)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 484
    iget v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->b:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 482
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zero is not a valid field number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;
    .locals 2

    .line 4321
    new-instance v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;-><init>()V

    .line 4394
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a:Ljava/util/Map;

    const/4 v1, 0x0

    .line 4395
    iput v1, v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->b:I

    const/4 v1, 0x0

    .line 4396
    iput-object v1, v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c:Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    return-object v0
.end method


# virtual methods
.method public final a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 462
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(I)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a(J)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    return-object p0

    .line 460
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;
    .locals 1

    if-eqz p1, :cond_1

    .line 443
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(I)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    goto :goto_0

    .line 449
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->b(ILcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    :goto_0
    return-object p0

    .line 441
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 568
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->h()Lcom/uqm/crashsight/protobuf/CodedInputStream;

    move-result-object p1

    .line 569
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    const/4 v0, 0x0

    .line 570
    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(I)V
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 575
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 573
    throw p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    :goto_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(ILcom/uqm/crashsight/protobuf/CodedInputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;
    .locals 2

    .line 427
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 428
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 429
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    invoke-virtual {p0, v1, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(ILcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 3

    const/4 v0, 0x0

    .line 359
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(I)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    .line 361
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    .line 366
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 367
    new-instance v1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    .line 369
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final a(ILcom/uqm/crashsight/protobuf/CodedInputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v0

    .line 536
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 554
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(I)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->h()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a(I)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    return v1

    .line 557
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->h()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 547
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    .line 548
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->a()Lcom/uqm/crashsight/protobuf/ExtensionRegistry;

    move-result-object v2

    invoke-virtual {p2, v0, p1, v2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    .line 549
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(I)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    return v1

    .line 544
    :cond_3
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(I)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    return v1

    .line 541
    :cond_4
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(I)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->g()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->b(J)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    return v1

    .line 538
    :cond_5
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(I)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a(J)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    return v1
.end method

.method public final b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 3376
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1381
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(I)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    .line 1383
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    .line 1384
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1385
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    new-instance v2, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a:Ljava/util/Map;

    invoke-direct {v2, v3, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 3390
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2634
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 1682
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    if-eqz v0, :cond_0

    .line 1683
    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1

    .line 1685
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
