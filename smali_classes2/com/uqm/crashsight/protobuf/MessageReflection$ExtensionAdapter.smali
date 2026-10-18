.class Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/MessageReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtensionAdapter"
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/FieldSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-void
.end method

.method private c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/ExtensionRegistry;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 0

    .line 629
    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->b(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 1

    .line 617
    sget-object v0, Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget$ContainerType;->b:Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget$ContainerType;

    return-object v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message;->newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p4

    .line 676
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/uqm/crashsight/protobuf/Message;

    if-eqz p3, :cond_0

    .line 679
    invoke-interface {p4, p3}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    .line 682
    :cond_0
    invoke-interface {p4, p1, p2}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    .line 683
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message;->newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p4

    .line 640
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Message;

    if-eqz v0, :cond_0

    .line 643
    invoke-interface {p4, v0}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    .line 646
    :cond_0
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result p3

    invoke-virtual {p1, p3, p4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    .line 647
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->a:Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;
    .locals 0

    .line 700
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 701
    sget-object p1, Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;->b:Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;

    return-object p1

    .line 704
    :cond_0
    sget-object p1, Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;->a:Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;

    return-object p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Lcom/uqm/crashsight/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message;->newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p4

    .line 658
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/MessageReflection$ExtensionAdapter;->c(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/uqm/crashsight/protobuf/Message;

    if-eqz p3, :cond_0

    .line 661
    invoke-interface {p4, p3}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    .line 664
    :cond_0
    invoke-virtual {p1, p4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    .line 665
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Message$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p1

    return-object p1
.end method
