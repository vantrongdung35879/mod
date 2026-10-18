.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
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

    .line 26954
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>()V

    .line 27549
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    .line 26955
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->d()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 26935
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 26960
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 27549
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    .line 26961
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->d()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27179
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 27185
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27181
    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27182
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

    .line 27185
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 27187
    :cond_1
    throw p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 0

    .line 27062
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 27105
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    if-eqz v0, :cond_0

    .line 27106
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1

    .line 27108
    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 0

    .line 27862
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object p1
.end method

.method private a(Z)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 27267
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    .line 27268
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b:Z

    .line 27269
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->onChanged()V

    return-object p0
.end method

.method private b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 0

    .line 27057
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object p1
.end method

.method private b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 0

    .line 27068
    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object p1
.end method

.method private b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 0

    .line 27868
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object p1
.end method

.method private b(Z)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 27340
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    .line 27341
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->c:Z

    .line 27342
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->onChanged()V

    return-object p0
.end method

.method private c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 0

    .line 27052
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object p1
.end method

.method private c(Z)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 27404
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    .line 27405
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->d:Z

    .line 27406
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->onChanged()V

    return-object p0
.end method

.method private d(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 0

    .line 27074
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object p1
.end method

.method private d(Z)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 27511
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    .line 27512
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->e:Z

    .line 27513
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->onChanged()V

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 26964
    sget-boolean v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 26966
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->h()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method

.method private e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .line 26971
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->b()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;

    const/4 v0, 0x0

    .line 26972
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b:Z

    .line 26973
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    .line 26974
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->c:Z

    .line 26976
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->d:Z

    .line 26978
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->e:Z

    and-int/lit8 v0, v1, -0x10

    .line 26979
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    .line 26980
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 26981
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    .line 26982
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    goto :goto_0

    .line 26984
    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_0
    return-object p0
.end method

.method private f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;
    .locals 2

    .line 27002
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    .line 27003
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 27004
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method private g()V
    .locals 2

    .line 27551
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 27552
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    .line 27553
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

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

    .line 27848
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 27849
    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 27853
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 27854
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 27855
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    .line 27857
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .line 27114
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 27115
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27116
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Z)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 27118
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27119
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b(Z)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 27121
    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27122
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->f()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->c(Z)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 27124
    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27125
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->h()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->d(Z)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 27127
    :cond_4
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_6

    .line 27128
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 27129
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27130
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    .line 27131
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    goto :goto_0

    .line 27133
    :cond_5
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g()V

    .line 27134
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27136
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->onChanged()V

    goto :goto_1

    .line 27139
    :cond_6
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 27140
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27141
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    const/4 v0, 0x0

    .line 27142
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    .line 27143
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    .line 27144
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    .line 27145
    sget-boolean v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_7

    .line 27147
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->h()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 27149
    :cond_8
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    .line 27153
    :cond_9
    :goto_1
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    .line 27154
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 27155
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->onChanged()V

    return-object p0
.end method

.method public final a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;
    .locals 4

    .line 27011
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;B)V

    .line 27012
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 27015
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b:Z

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;Z)Z

    const/4 v1, 0x1

    :cond_0
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1

    .line 27019
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->c:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;Z)Z

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    .line 27023
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->d:Z

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;Z)Z

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 27027
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->e:Z

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;Z)Z

    or-int/lit8 v1, v1, 0x8

    .line 27030
    :cond_3
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_5

    .line 27031
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 27032
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    .line 27033
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a:I

    .line 27035
    :cond_4
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 27037
    :cond_5
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 27039
    :goto_0
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;I)I

    .line 27040
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->onBuilt()V

    return-object v0
.end method

.method public final synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->d(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->d(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->d(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 1

    .line 26935
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 26935
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 26935
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 26935
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 26935
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 26935
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 26935
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 26935
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 26935
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 31046
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 34046
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 30046
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 32046
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 33046
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35046
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 28997
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 29997
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 26992
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->C()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 26948
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->D()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 26949
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28582
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_0

    .line 28583
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 28585
    :cond_0
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    .line 28596
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    .line 28597
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    goto :goto_2

    .line 28599
    :cond_1
    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(I)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    .line 27162
    :goto_2
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27166
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->c()Z

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

    .line 26935
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

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

    .line 26935
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

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

    .line 26935
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

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

    .line 26935
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 26935
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p1

    return-object p1
.end method
