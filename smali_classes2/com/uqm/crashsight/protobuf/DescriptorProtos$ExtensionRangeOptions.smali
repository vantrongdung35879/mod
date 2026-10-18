.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionRangeOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private c:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11136
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 11144
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10275
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 10409
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->c:B

    .line 10276
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10295
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;-><init>()V

    .line 10297
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10301
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 10305
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    const/16 v5, 0x1f3a

    if-eq v3, v5, :cond_1

    .line 10320
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 10312
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    const/4 v2, 0x1

    .line 10315
    :cond_2
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 10316
    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 10315
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10331
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 10332
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 10329
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v2, :cond_4

    .line 10335
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    .line 10337
    :cond_4
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 10338
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->makeExtensionsImmutable()V

    .line 10339
    throw p1

    :cond_5
    if-eqz v2, :cond_6

    .line 10335
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    .line 10337
    :cond_6
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 10338
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10265
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;",
            "*>;)V"
        }
    .end annotation

    .line 10273
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    const/4 p1, -0x1

    .line 10409
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->c:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;B)V
    .locals 0

    .line 10265
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1

    .line 10570
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 10265
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    return-object p1
.end method

.method public static b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;
    .locals 1

    .line 11140
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object v0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;)Ljava/util/List;
    .locals 0

    .line 10265
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    return-object p0
.end method

.method private c()I
    .locals 1

    .line 10385
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 2

    .line 10574
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;-><init>(B)V

    .line 10575
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10464
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    if-nez v1, :cond_1

    .line 10465
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 10467
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 12364
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    .line 13364
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    .line 10470
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 10471
    :cond_2
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object v3, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 10472
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->J()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->J()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 15165
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 16165
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;",
            ">;"
        }
    .end annotation

    .line 11160
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 10445
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10449
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 10450
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    .line 10451
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x3e7

    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10453
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->I()I

    move-result v0

    add-int/2addr v1, v0

    .line 10454
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 10455
    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 10289
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 10479
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 10480
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->memoizedHashCode:I

    return v0

    .line 14343
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->k()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 10483
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 10484
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->c()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x3e7

    mul-int/lit8 v0, v0, 0x35

    .line 14364
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    .line 10486
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10488
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->J()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    .line 10489
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10490
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 10349
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->l()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    .line 10350
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 10412
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 10416
    :goto_0
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->c()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 11395
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    .line 10417
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 10418
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->c:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10422
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->G()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10423
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->c:B

    return v2

    .line 10426
    :cond_4
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->c:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 17567
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 16581
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 18567
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 10283
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 10265
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 10265
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10435
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->H()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 10436
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 10437
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x20000000

    .line 10439
    invoke-virtual {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->a(ILcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    .line 10440
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ExtensionRangeOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
