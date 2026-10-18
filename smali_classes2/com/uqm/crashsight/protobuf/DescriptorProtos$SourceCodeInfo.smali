.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceCodeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation
.end field

.field private c:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42639
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 42647
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38641
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 41242
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->c:B

    .line 38642
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38661
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;-><init>()V

    .line 38663
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38667
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 38671
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 38686
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 38678
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    const/4 v2, 0x1

    .line 38681
    :cond_2
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 38682
    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 38681
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

    .line 38697
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 38698
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 38695
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v2, :cond_4

    .line 38701
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    .line 38703
    :cond_4
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 38704
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->makeExtensionsImmutable()V

    .line 38705
    throw p1

    :cond_5
    if-eqz v2, :cond_6

    .line 38701
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    .line 38703
    :cond_6
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 38704
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38632
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 38639
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 41242
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->c:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    .line 38632
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 41385
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 38632
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    return-object p1
.end method

.method public static b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 1

    .line 42643
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;)Ljava/util/List;
    .locals 0

    .line 38632
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 2

    .line 41389
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;-><init>(B)V

    .line 41390
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 41282
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v1, :cond_1

    .line 41283
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 41285
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 43037
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    .line 44037
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    .line 41288
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 41289
    :cond_2
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 49668
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 48668
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;",
            ">;"
        }
    .end annotation

    .line 42663
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 41264
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41268
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 41269
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    .line 41270
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41272
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 41273
    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 38655
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 41295
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 41296
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->memoizedHashCode:I

    return v0

    .line 44709
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->U()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 41299
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 45138
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 46037
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    .line 41302
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 41304
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 41305
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 38715
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->V()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    .line 38716
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 41245
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 41249
    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->c:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 47382
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 46396
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 48382
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->d:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 38649
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 38632
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 38632
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41256
    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 41257
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41259
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
