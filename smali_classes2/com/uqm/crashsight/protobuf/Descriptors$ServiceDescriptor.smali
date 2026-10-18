.class public final Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDescriptor"
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private e:[Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1950
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    .line 1951
    iput p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->a:I

    .line 1952
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 p3, 0x0

    .line 1953
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v1}, Lcom/uqm/crashsight/protobuf/Descriptors;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->c:Ljava/lang/String;

    .line 1954
    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 1956
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->c()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->e:[Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;

    .line 1957
    :goto_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->c()I

    move-result p3

    if-ge v0, p3, :cond_0

    .line 1958
    iget-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->e:[Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;

    new-instance v7, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p2

    move-object v4, p0

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;IB)V

    aput-object v7, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1961
    :cond_0
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1881
    invoke-direct {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;I)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2965
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->e:[Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2966
    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1898
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1908
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 2892
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method
