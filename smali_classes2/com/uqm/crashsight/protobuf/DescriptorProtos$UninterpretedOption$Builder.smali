.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;

.field private e:J

.field private f:J

.field private g:D

.field private h:Lcom/uqm/crashsight/protobuf/ByteString;

.field private i:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 37506
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 37736
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    .line 37975
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->d:Ljava/lang/Object;

    .line 38200
    sget-object v1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 38240
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->i:Ljava/lang/Object;

    .line 37507
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 37488
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 37512
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 37736
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    .line 37975
    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->d:Ljava/lang/Object;

    .line 38200
    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 38240
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->i:Ljava/lang/Object;

    .line 37513
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private a(D)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 38184
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    .line 38185
    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->g:D

    .line 38186
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method private a(J)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 38110
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    .line 38111
    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->e:J

    .line 38112
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 38222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38224
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    .line 38225
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 38226
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 37722
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 37728
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37724
    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37725
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

    .line 37728
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 37730
    :cond_1
    throw p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 37621
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 37632
    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 37616
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 37626
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 37642
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_0

    .line 37643
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1

    .line 37645
    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 38326
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method private a()V
    .locals 1

    .line 37516
    sget-boolean v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 37518
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->f()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method

.method private b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 4

    .line 37523
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    .line 37524
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 37525
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    .line 37526
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    goto :goto_0

    .line 37528
    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    .line 37530
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->d:Ljava/lang/Object;

    .line 37531
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    const-wide/16 v2, 0x0

    .line 37532
    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->e:J

    .line 37534
    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->f:J

    const-wide/16 v2, 0x0

    .line 37536
    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->g:D

    and-int/lit8 v1, v1, -0x1f

    .line 37537
    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    .line 37538
    sget-object v1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 37539
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    .line 37540
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->i:Ljava/lang/Object;

    and-int/lit8 v0, v1, -0x61

    .line 37541
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    return-object p0
.end method

.method private b(J)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 38147
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    .line 38148
    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->f:J

    .line 38149
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method private b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 37638
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method private b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 0

    .line 38332
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object p1
.end method

.method private c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 2

    .line 37558
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    .line 37559
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 37560
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method private d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 5

    .line 37567
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V

    .line 37568
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    .line 37570
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_1

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 37572
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    .line 37573
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    .line 37575
    :cond_0
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 37577
    :cond_1
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    :goto_0
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 37582
    :cond_2
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->d:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_3

    .line 37584
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->e:J

    invoke-static {v0, v3, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;J)J

    or-int/lit8 v1, v1, 0x2

    :cond_3
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_4

    .line 37588
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->f:J

    invoke-static {v0, v3, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;J)J

    or-int/lit8 v1, v1, 0x4

    :cond_4
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_5

    .line 37592
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->g:D

    invoke-static {v0, v3, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;D)D

    or-int/lit8 v1, v1, 0x8

    :cond_5
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_6

    or-int/lit8 v1, v1, 0x10

    .line 37598
    :cond_6
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString;

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    or-int/lit8 v1, v1, 0x20

    .line 37602
    :cond_7
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->i:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37603
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;I)I

    .line 37604
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onBuilt()V

    return-object v0
.end method

.method private e()V
    .locals 2

    .line 37738
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 37739
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    .line 37740
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    :cond_0
    return-void
.end method

.method private f()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;",
            ">;"
        }
    .end annotation

    .line 37963
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 37964
    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 37968
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 37969
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 37970
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    .line 37972
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 37651
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 37652
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 37653
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 37654
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37655
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    .line 37656
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    goto :goto_0

    .line 37658
    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->e()V

    .line 37659
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37661
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    goto :goto_1

    .line 37664
    :cond_2
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 37665
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37666
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    const/4 v0, 0x0

    .line 37667
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    .line 37668
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    .line 37669
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    .line 37670
    sget-boolean v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_3

    .line 37672
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->f()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 37674
    :cond_4
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    .line 37678
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37679
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    .line 37680
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->d:Ljava/lang/Object;

    .line 37681
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    .line 37683
    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37684
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(J)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 37686
    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 37687
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b(J)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 37689
    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37690
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(D)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 37692
    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 37693
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 37695
    :cond_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37696
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a:I

    .line 37697
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->i:Ljava/lang/Object;

    .line 37698
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    .line 37700
    :cond_b
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 37701
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->onChanged()V

    return-object p0
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 37488
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 37488
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 37488
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 37488
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 37488
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 37488
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 37488
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 37488
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 40610
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 44610
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 39610
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 41610
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 42610
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 45610
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 44553
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 43553
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 37548
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->Q()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 37500
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->R()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 37501
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38761
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_0

    .line 38762
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 38764
    :cond_0
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    .line 38771
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->c:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    .line 38772
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    goto :goto_2

    .line 38774
    :cond_1
    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(I)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 37708
    :goto_2
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
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

    .line 37488
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

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

    .line 37488
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

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

    .line 37488
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

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

    .line 37488
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 37488
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method
