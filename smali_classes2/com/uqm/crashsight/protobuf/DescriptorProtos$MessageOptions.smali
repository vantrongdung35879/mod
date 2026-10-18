.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;


# instance fields
.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27878
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    .line 27886
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26362
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 26689
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h:B

    .line 26363
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26382
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    .line 26384
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26388
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x10

    if-nez v1, :cond_9

    .line 26392
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    const/16 v6, 0x8

    if-eq v4, v6, :cond_6

    if-eq v4, v3, :cond_5

    const/16 v7, 0x18

    if-eq v4, v7, :cond_4

    const/16 v7, 0x38

    if-eq v4, v7, :cond_3

    const/16 v6, 0x1f3a

    if-eq v4, v6, :cond_1

    .line 26427
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_2

    .line 26419
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    const/16 v2, 0x10

    .line 26422
    :cond_2
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 26423
    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    .line 26422
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26413
    :cond_3
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 26414
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->f:Z

    goto :goto_0

    .line 26408
    :cond_4
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 26409
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e:Z

    goto :goto_0

    .line 26403
    :cond_5
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 26404
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->d:Z

    goto :goto_0

    .line 26398
    :cond_6
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    .line 26399
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c:Z
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 26438
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 26439
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 26436
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_8

    .line 26442
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 26444
    :cond_8
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 26445
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->makeExtensionsImmutable()V

    .line 26446
    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_a

    .line 26442
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 26444
    :cond_a
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 26445
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26352
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;",
            "*>;)V"
        }
    .end annotation

    .line 26360
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    const/4 p1, -0x1

    .line 26689
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;B)V
    .locals 0

    .line 26352
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;I)I
    .locals 0

    .line 26352
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    return p1
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 26918
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 26352
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    .line 26352
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;
    .locals 0

    .line 26352
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    .line 26352
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    .line 26352
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e:Z

    return p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0

    .line 26352
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->f:Z

    return p1
.end method

.method public static j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .line 27882
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method private k()I
    .locals 1

    .line 26665
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 26487
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 26512
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 26528
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 26541
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 26558
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 26772
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    if-nez v1, :cond_1

    .line 26773
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 26775
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    .line 26777
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 26778
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29512
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c:Z

    .line 30512
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c:Z

    if-eq v1, v2, :cond_3

    return v3

    .line 26782
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 26783
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 30541
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->d:Z

    .line 31541
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->d:Z

    if-eq v1, v2, :cond_5

    return v3

    .line 26787
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 26788
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 31572
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e:Z

    .line 32572
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e:Z

    if-eq v1, v2, :cond_7

    return v3

    .line 26792
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 26793
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 32631
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->f:Z

    .line 33631
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->f:Z

    if-eq v1, v2, :cond_9

    return v3

    .line 33644
    :cond_9
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 34644
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 26798
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 26799
    :cond_a
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 26800
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->J()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->J()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v3

    :cond_c
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 26572
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 26603
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 35907
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 36907
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;",
            ">;"
        }
    .end annotation

    .line 27902
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 26737
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 26741
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 26742
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c:Z

    .line 26743
    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 26745
    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 26746
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->d:Z

    .line 26747
    invoke-static {v3, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 26749
    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 26750
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e:Z

    .line 26751
    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 26753
    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    .line 26754
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->f:Z

    .line 26755
    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 26757
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 26758
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 26759
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x3e7

    invoke-static {v3, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26761
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->I()I

    move-result v1

    add-int/2addr v0, v1

    .line 26762
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 26763
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 26376
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 26631
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->f:Z

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 26807
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 26808
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->memoizedHashCode:I

    return v0

    .line 35450
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->C()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 26811
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 26812
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 35512
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c:Z

    .line 26814
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 26817
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 35541
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->d:Z

    .line 26819
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 26822
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 35572
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e:Z

    .line 26824
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 26827
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 35631
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->f:Z

    .line 26829
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 26832
    :cond_4
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->k()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x3e7

    mul-int/lit8 v0, v0, 0x35

    .line 35644
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    .line 26834
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26836
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->J()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    .line 26837
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26838
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->memoizedHashCode:I

    return v0
.end method

.method public final i()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .line 26922
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>(B)V

    .line 26923
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 26456
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->D()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 26457
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 26692
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 26696
    :goto_0
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->k()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 28675
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    .line 26697
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 26698
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26702
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->G()Z

    move-result v0

    if-nez v0, :cond_4

    .line 26703
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h:B

    return v2

    .line 26706
    :cond_4
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 37915
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 36929
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 38915
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 26370
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 26352
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 26352
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

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

    .line 26715
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->H()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 26716
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 26717
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c:Z

    invoke-virtual {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 26719
    :cond_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 26720
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->d:Z

    invoke-virtual {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 26722
    :cond_1
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 26723
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e:Z

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 26725
    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    .line 26726
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->f:Z

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_3
    const/4 v1, 0x0

    .line 26728
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 26729
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/high16 v1, 0x20000000

    .line 26731
    invoke-virtual {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->a(ILcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    .line 26732
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
