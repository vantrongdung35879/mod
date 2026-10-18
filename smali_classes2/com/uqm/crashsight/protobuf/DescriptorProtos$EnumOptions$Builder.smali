.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31743
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>()V

    .line 32086
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    .line 31744
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 31724
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 31749
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 32086
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    .line 31750
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31950
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 31956
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31952
    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31953
    :try_start_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 31956
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 31958
    :cond_1
    throw p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 31839
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31882
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    if-eqz v0, :cond_0

    .line 31883
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1

    .line 31885
    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 32399
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method private a(Z)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 31999
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    .line 32000
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b:Z

    .line 32001
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    return-object p0
.end method

.method private b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 31834
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method private b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 31845
    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method private b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 32405
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method private b(Z)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 32062
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    .line 32063
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->c:Z

    .line 32064
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    return-object p0
.end method

.method private c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 31829
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method private d(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 0

    .line 31851
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object p1
.end method

.method private d()V
    .locals 1

    .line 31753
    sget-boolean v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 31755
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->h()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method

.method private e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2

    .line 31760
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    const/4 v0, 0x0

    .line 31761
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b:Z

    .line 31762
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    .line 31763
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->c:Z

    and-int/lit8 v0, v1, -0x4

    .line 31764
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    .line 31765
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 31766
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    .line 31767
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    goto :goto_0

    .line 31769
    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_0
    return-object p0
.end method

.method private f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;
    .locals 2

    .line 31787
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    .line 31788
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 31789
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method private g()V
    .locals 2

    .line 32088
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 32089
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    .line 32090
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    :cond_0
    return-void
.end method

.method private h()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 32385
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 32386
    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 32390
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 32391
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 32392
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    .line 32394
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 2

    .line 31891
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 31892
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31893
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Z)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 31895
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31896
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b(Z)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 31898
    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 31899
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 31900
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31901
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    .line 31902
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    goto :goto_0

    .line 31904
    :cond_3
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->g()V

    .line 31905
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31907
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    goto :goto_1

    .line 31910
    :cond_4
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 31911
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31912
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    const/4 v0, 0x0

    .line 31913
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    .line 31914
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    .line 31915
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    .line 31916
    sget-boolean v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_5

    .line 31918
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->h()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 31920
    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    .line 31924
    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    .line 31925
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 31926
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;
    .locals 4

    .line 31796
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;B)V

    .line 31797
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 31800
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b:Z

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;Z)Z

    const/4 v1, 0x1

    :cond_0
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 31804
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->c:Z

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;Z)Z

    or-int/lit8 v1, v1, 0x2

    .line 31807
    :cond_1
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_3

    .line 31808
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 31809
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    .line 31810
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a:I

    .line 31812
    :cond_2
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 31814
    :cond_3
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;

    .line 31816
    :goto_0
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;I)I

    .line 31817
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->onBuilt()V

    return-object v0
.end method

.method public final synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 1

    .line 31724
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 31724
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 31724
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 31724
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 31724
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 31724
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 31724
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 31724
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 31724
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 35823
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 38823
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 34823
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 36823
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 37823
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39823
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 33782
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 34782
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 31777
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->I()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 31737
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->J()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 31738
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33119
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_0

    .line 33120
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 33122
    :cond_0
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    .line 33133
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->e:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    .line 33134
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    goto :goto_2

    .line 33136
    :cond_1
    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(I)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    .line 31933
    :goto_2
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31937
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->c()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31724
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31724
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31724
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31724
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 31724
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    return-object p1
.end method
