.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;


# instance fields
.field private b:I

.field private volatile c:Ljava/lang/Object;

.field private volatile d:Ljava/lang/Object;

.field private volatile e:Ljava/lang/Object;

.field private f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

.field private g:Z

.field private h:Z

.field private i:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21122
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 21130
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19794
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 20128
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i:B

    .line 19795
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    .line 19796
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    .line 19797
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19816
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    .line 19818
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19822
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 19826
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0xa

    if-eq v2, v4, :cond_8

    const/16 v4, 0x12

    if-eq v2, v4, :cond_7

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_6

    const/16 v4, 0x22

    if-eq v2, v4, :cond_3

    const/16 v4, 0x28

    if-eq v2, v4, :cond_2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_1

    .line 19873
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 19868
    :cond_1
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    .line 19869
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v2

    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    goto :goto_0

    .line 19863
    :cond_2
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    .line 19864
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v2

    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    goto :goto_0

    .line 19851
    :cond_3
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 19852
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 19854
    :goto_1
    sget-object v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v2, :cond_5

    .line 19856
    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 19857
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    .line 19859
    :cond_5
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    goto :goto_0

    .line 19844
    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    .line 19845
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    .line 19846
    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    goto :goto_0

    .line 19838
    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    .line 19839
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    .line 19840
    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    goto/16 :goto_0

    .line 19832
    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    .line 19833
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    .line 19834
    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 19884
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 19885
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 19882
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19887
    :goto_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 19888
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->makeExtensionsImmutable()V

    .line 19889
    throw p1

    .line 19887
    :cond_a
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 19888
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19785
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    .line 19792
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 20128
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    .line 19785
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;I)I
    .locals 0

    .line 19785
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;
    .locals 0

    .line 19785
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 19785
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19785
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z
    .locals 0

    .line 19785
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 19785
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19785
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z
    .locals 0

    .line 19785
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 19785
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19785
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public static m()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .line 21126
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method private n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    .line 20363
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(B)V

    .line 20364
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 19912
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 19919
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    .line 19920
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19921
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 19923
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 19925
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 19926
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19927
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final c()Z
    .locals 1

    .line 19962
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 19974
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    .line 19975
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19976
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 19978
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 19980
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 19981
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19982
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final e()Z
    .locals 1

    .line 20017
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

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

    .line 20206
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    if-nez v1, :cond_1

    .line 20207
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 20209
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 20211
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 20212
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20213
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    .line 20214
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 20216
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 20217
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20218
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d()Ljava/lang/String;

    move-result-object v1

    .line 20219
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 20221
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 20222
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20223
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f()Ljava/lang/String;

    move-result-object v1

    .line 20224
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 20226
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 20227
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 20228
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    .line 20229
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20231
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 20232
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22100
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    .line 23100
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    if-eq v1, v2, :cond_b

    return v3

    .line 20236
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->k()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 20237
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->k()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 23125
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    .line 24125
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    if-eq v1, v2, :cond_d

    return v3

    .line 20241
    :cond_d
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v3

    :cond_e
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 20024
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    .line 20025
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20026
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 20028
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 20030
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 20031
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20032
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final g()Z
    .locals 1

    .line 20062
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

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

    .line 29151
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 28151
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 21146
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 20171
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 20175
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 20176
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 20178
    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 20179
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20181
    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 20182
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20184
    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 20186
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20188
    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 20189
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    .line 20190
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20192
    :cond_5
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 20193
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    .line 20194
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20196
    :cond_6
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 20197
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 19810
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 20069
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 20247
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 20248
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedHashCode:I

    return v0

    .line 24893
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->y()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 20251
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 20252
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 20254
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 20256
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 20258
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 20260
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 20262
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 20264
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 20266
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 20268
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 25100
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    .line 20270
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 20273
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 25125
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    .line 20275
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    .line 20278
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 20279
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 20089
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 19899
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->z()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 19900
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 20131
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 20135
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20136
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20137
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i:B

    return v2

    .line 20141
    :cond_2
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->i:B

    return v1
.end method

.method public final j()Z
    .locals 1

    .line 20100
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 20114
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 20125
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    return v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 26356
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 25370
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 27356
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 19804
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 19785
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 19785
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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

    .line 20148
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 20149
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 20151
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 20152
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->d:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 20154
    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 20155
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->e:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 20157
    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 20158
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    .line 20160
    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 20161
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 20163
    :cond_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 20164
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 20166
    :cond_5
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
