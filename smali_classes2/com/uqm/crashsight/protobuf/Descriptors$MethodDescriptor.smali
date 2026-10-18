.class public final Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptor"
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private final e:Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;

.field private f:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private g:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2064
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    .line 2065
    iput p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->a:I

    .line 2066
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2067
    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 2068
    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;

    .line 2070
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->c:Ljava/lang/String;

    .line 2072
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1983
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$ServiceDescriptor;I)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 3076
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 3077
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 3078
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->a:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 3077
    invoke-virtual {v0, v1, p0, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 3079
    instance-of v1, v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    const-string v3, "\" is not a message type."

    const-string v4, "\""

    if-eqz v1, :cond_1

    .line 3083
    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->f:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 3085
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 3086
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 3087
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;->a:Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .line 3086
    invoke-virtual {v0, v1, p0, v5}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 3088
    instance-of v1, v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-eqz v1, :cond_0

    .line 3092
    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->g:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-void

    .line 3089
    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 3090
    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0

    .line 3080
    :cond_1
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 3081
    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 2000
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 2010
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 2016
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 2994
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$MethodDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method
