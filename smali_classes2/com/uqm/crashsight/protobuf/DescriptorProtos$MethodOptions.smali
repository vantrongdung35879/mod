.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;


# instance fields
.field private b:I

.field private c:Z

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private f:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35987
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    .line 35995
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34771
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 35101
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f:B

    const/4 v0, 0x0

    .line 34772
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->d:I

    .line 34773
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 34792
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;-><init>()V

    .line 34794
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34798
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x4

    if-nez v1, :cond_8

    .line 34802
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    const/16 v6, 0x108

    if-eq v4, v6, :cond_5

    const/16 v6, 0x110

    if-eq v4, v6, :cond_3

    const/16 v6, 0x1f3a

    if-eq v4, v6, :cond_1

    .line 34834
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_2

    .line 34826
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    const/4 v2, 0x4

    .line 34829
    :cond_2
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 34830
    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    .line 34829
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34813
    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v4

    .line 34815
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    move-result-object v5

    if-nez v5, :cond_4

    const/16 v5, 0x22

    .line 34817
    invoke-virtual {v0, v5, v4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 34819
    :cond_4
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->b:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->b:I

    .line 34820
    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->d:I

    goto :goto_0

    .line 34808
    :cond_5
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->b:I

    .line 34809
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->c:Z
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 34845
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 34846
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 34843
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_7

    .line 34849
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 34851
    :cond_7
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 34852
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->makeExtensionsImmutable()V

    .line 34853
    throw p1

    :cond_8
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_9

    .line 34849
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 34851
    :cond_9
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 34852
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 34761
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;",
            "*>;)V"
        }
    .end annotation

    .line 34769
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    const/4 p1, -0x1

    .line 35101
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;B)V
    .locals 0

    .line 34761
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;I)I
    .locals 0

    .line 34761
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->d:I

    return p1
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 35294
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 34761
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;Z)Z
    .locals 0

    .line 34761
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;I)I
    .locals 0

    .line 34761
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->b:I

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;
    .locals 0

    .line 34761
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    return-object p0
.end method

.method public static f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 35991
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method private g()I
    .locals 1

    .line 35077
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 35010
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->b:I

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

    .line 35024
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->c:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 35034
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 1

    .line 35042
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->d:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35043
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    :cond_0
    return-object v0
.end method

.method public final e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2

    .line 35298
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>(B)V

    .line 35299
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 35170
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    if-nez v1, :cond_1

    .line 35171
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 35173
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    .line 35175
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 35176
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37024
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->c:Z

    .line 38024
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->c:Z

    if-eq v1, v2, :cond_3

    return v3

    .line 35180
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->c()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 35181
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 35182
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->d:I

    iget v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->d:I

    if-eq v1, v2, :cond_5

    return v3

    .line 38056
    :cond_5
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 39056
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 35185
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 35186
    :cond_6
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 35187
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->J()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->J()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v3

    :cond_8
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 41016
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 42016
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;",
            ">;"
        }
    .end annotation

    .line 36011
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 35143
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 35147
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->b:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    .line 35148
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->c:Z

    .line 35149
    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 35151
    :goto_0
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->b:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/16 v2, 0x22

    .line 35152
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->d:I

    .line 35153
    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 35155
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 35156
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 35157
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x3e7

    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 35159
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->I()I

    move-result v1

    add-int/2addr v0, v1

    .line 35160
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 35161
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 34786
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 35194
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 35195
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->memoizedHashCode:I

    return v0

    .line 39857
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->O()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 35198
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 35199
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x21

    mul-int/lit8 v0, v0, 0x35

    .line 40024
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->c:Z

    .line 35201
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 35204
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x22

    mul-int/lit8 v0, v0, 0x35

    .line 35206
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->d:I

    add-int/2addr v0, v1

    .line 35208
    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->g()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x3e7

    mul-int/lit8 v0, v0, 0x35

    .line 40056
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    .line 35210
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35212
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->J()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    .line 35213
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35214
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 34863
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->P()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 34864
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 35104
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 35108
    :goto_0
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->g()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 36087
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    .line 35109
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 35110
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35114
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->G()Z

    move-result v0

    if-nez v0, :cond_4

    .line 35115
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f:B

    return v2

    .line 35118
    :cond_4
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 43291
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 42305
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 44291
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->g:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 34780
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 34761
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 34761
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

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

    .line 35127
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->H()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 35128
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    .line 35129
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->c:Z

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 35131
    :cond_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x22

    .line 35132
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->d:I

    .line 36296
    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_1
    const/4 v1, 0x0

    .line 35134
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 35135
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x20000000

    .line 35137
    invoke-virtual {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->a(ILcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    .line 35138
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
