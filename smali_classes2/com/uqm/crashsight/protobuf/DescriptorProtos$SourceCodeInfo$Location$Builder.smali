.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

.field private c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Lcom/uqm/crashsight/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39845
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 40042
    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 40289
    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 40424
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->d:Ljava/lang/Object;

    .line 40742
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e:Ljava/lang/Object;

    .line 40826
    sget-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 41855
    sget-boolean v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 39827
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 39851
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 40042
    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 40289
    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 40424
    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->d:Ljava/lang/Object;

    .line 40742
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e:Ljava/lang/Object;

    .line 40826
    sget-object p1, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 42855
    sget-boolean p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    .line 39861
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    .line 39862
    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39863
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    .line 39864
    invoke-static {}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39865
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    .line 39866
    const-string v1, ""

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->d:Ljava/lang/Object;

    .line 39868
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0xf

    .line 39869
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    .line 39870
    sget-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 39871
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40029
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 40035
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40031
    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40032
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

    .line 40035
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 40037
    :cond_1
    throw p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 39941
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 39952
    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 39936
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 39946
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 39962
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    if-eqz v0, :cond_0

    .line 39963
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1

    .line 39965
    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 40937
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method private b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 39958
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method private b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 0

    .line 40943
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method private b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 2

    .line 39888
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    .line 39889
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 39890
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method private c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 4

    .line 39897
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V

    .line 39898
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 39901
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    .line 39902
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    .line 39904
    :cond_0
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39905
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 39906
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    .line 39907
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    .line 39909
    :cond_1
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 39913
    :cond_2
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->d:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x2

    .line 39917
    :cond_3
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39918
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 39919
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 39920
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    .line 39922
    :cond_4
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/uqm/crashsight/protobuf/LazyStringList;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 39923
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;I)I

    .line 39924
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onBuilt()V

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 40044
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 40045
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 40046
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 40291
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 40292
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 40293
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 40828
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 40829
    new-instance v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>(Lcom/uqm/crashsight/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 40830
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    .line 39971
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 39972
    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 39973
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39974
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39975
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    goto :goto_0

    .line 39977
    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->d()V

    .line 39978
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    .line 39980
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    .line 39982
    :cond_2
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 39983
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39984
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39985
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    goto :goto_1

    .line 39987
    :cond_3
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e()V

    .line 39988
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    .line 39990
    :goto_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    .line 39992
    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39993
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    .line 39994
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->d:Ljava/lang/Object;

    .line 39995
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    .line 39997
    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39998
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    .line 39999
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->e:Ljava/lang/Object;

    .line 40000
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    .line 40002
    :cond_6
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 40003
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 40004
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 40005
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a:I

    goto :goto_2

    .line 40007
    :cond_7
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f()V

    .line 40008
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->f:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 40010
    :goto_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    .line 40012
    :cond_8
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 40013
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->onChanged()V

    return-object p0
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 39827
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 39827
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 39827
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 39827
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 39827
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 39827
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 39827
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 39827
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 43930
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 47930
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 42930
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 44930
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 45930
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48930
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 47883
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 46883
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 39878
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->W()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 39839
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->X()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 39840
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

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

    .line 39827
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

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

    .line 39827
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

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

    .line 39827
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

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

    .line 39827
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    .line 39827
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object p1

    return-object p1
.end method
