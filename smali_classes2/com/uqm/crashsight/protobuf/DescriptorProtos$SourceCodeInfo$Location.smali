.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;


# instance fields
.field private b:I

.field private c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

.field private d:I

.field private e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

.field private f:I

.field private volatile g:Ljava/lang/Object;

.field private volatile h:Ljava/lang/Object;

.field private i:Lcom/uqm/crashsight/protobuf/LazyStringList;

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40953
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 40961
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39042
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 39283
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:I

    .line 39334
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f:I

    .line 39578
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->j:B

    .line 39043
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39044
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->emptyIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39045
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    .line 39046
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Ljava/lang/Object;

    .line 39047
    sget-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 39066
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    .line 39068
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39072
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x10

    if-nez v1, :cond_13

    .line 39076
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_f

    const/16 v6, 0x8

    if-eq v4, v6, :cond_d

    const/16 v6, 0xa

    if-eq v4, v6, :cond_a

    if-eq v4, v3, :cond_8

    const/16 v6, 0x12

    if-eq v4, v6, :cond_5

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_4

    const/16 v6, 0x22

    if-eq v4, v6, :cond_3

    const/16 v6, 0x32

    if-eq v4, v6, :cond_1

    .line 39145
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 39136
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_2

    .line 39138
    new-instance v5, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x10

    .line 39141
    :cond_2
    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/uqm/crashsight/protobuf/LazyStringList;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

    goto :goto_0

    .line 39130
    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    .line 39131
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:I

    .line 39132
    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Ljava/lang/Object;

    goto :goto_0

    .line 39124
    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    .line 39125
    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:I

    .line 39126
    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    goto :goto_0

    .line 39111
    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->s()I

    move-result v4

    .line 39112
    invoke-virtual {p1, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_6

    .line 39113
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->x()I

    move-result v5

    if-lez v5, :cond_6

    .line 39114
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x2

    .line 39117
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->x()I

    move-result v5

    if-lez v5, :cond_7

    .line 39118
    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->d(I)V

    goto :goto_1

    .line 39120
    :cond_7
    invoke-virtual {p1, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d(I)V

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_9

    .line 39104
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x2

    .line 39107
    :cond_9
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->d(I)V

    goto/16 :goto_0

    .line 39090
    :cond_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->s()I

    move-result v4

    .line 39091
    invoke-virtual {p1, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_b

    .line 39092
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->x()I

    move-result v5

    if-lez v5, :cond_b

    .line 39093
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v5

    iput-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x1

    .line 39096
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->x()I

    move-result v5

    if-lez v5, :cond_c

    .line 39097
    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->d(I)V

    goto :goto_2

    .line 39099
    :cond_c
    invoke-virtual {p1, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d(I)V

    goto/16 :goto_0

    :cond_d
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_e

    .line 39083
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->newIntList()Lcom/uqm/crashsight/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x1

    .line 39086
    :cond_e
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->d(I)V
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_f
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 39156
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 39157
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 39154
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_10

    .line 39160
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    :cond_10
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_11

    .line 39163
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    :cond_11
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_12

    .line 39166
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 39168
    :cond_12
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 39169
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->makeExtensionsImmutable()V

    .line 39170
    throw p1

    :cond_13
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_14

    .line 39160
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    :cond_14
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_15

    .line 39163
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->b()V

    :cond_15
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_16

    .line 39166
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 39168
    :cond_16
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 39169
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 39033
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    .line 39040
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 39283
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:I

    .line 39334
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f:I

    .line 39578
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->j:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    .line 39033
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;I)I
    .locals 0

    .line 39033
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 0

    .line 39033
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 0

    .line 39033
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/uqm/crashsight/protobuf/LazyStringList;)Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 0

    .line 39033
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39033
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 0

    .line 39033
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/uqm/crashsight/protobuf/Internal$IntList;)Lcom/uqm/crashsight/protobuf/Internal$IntList;
    .locals 0

    .line 39033
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39033
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public static c()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .line 40957
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;
    .locals 0

    .line 39033
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Ljava/lang/Object;
    .locals 0

    .line 39033
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Ljava/lang/Object;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 39428
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    .line 39429
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39430
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 39432
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 39434
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 39435
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39436
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 0

    .line 39033
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .line 39512
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Ljava/lang/Object;

    .line 39513
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39514
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 39516
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 39518
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 39519
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39520
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    .line 39814
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(B)V

    .line 39815
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 39382
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:I

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

    .line 39505
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:I

    and-int/lit8 v0, v0, 0x2

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

    .line 39677
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    if-nez v1, :cond_1

    .line 39678
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 39680
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 43218
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 44218
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39683
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 44301
    :cond_2
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 45301
    iget-object v3, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39685
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 39686
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 39687
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39688
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d()Ljava/lang/String;

    move-result-object v1

    .line 39689
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 39691
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 39692
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 39693
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e()Ljava/lang/String;

    move-result-object v1

    .line 39694
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 45551
    :cond_7
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 46551
    iget-object v3, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 39697
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 39698
    :cond_8
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 50559
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 50558
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .line 40977
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 39621
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 39627
    :goto_0
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 39628
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39629
    invoke-interface {v3, v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->c(I)I

    move-result v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42218
    :cond_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39632
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, v2, 0x1

    .line 39635
    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    .line 39637
    :goto_1
    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 39641
    :goto_2
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v4}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 39642
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39643
    invoke-interface {v4, v2}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->c(I)I

    move-result v4

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v1, v3

    .line 42301
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39646
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 39649
    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 39651
    :cond_4
    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f:I

    .line 39653
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    .line 39654
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 39656
    :cond_5
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    .line 39657
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_6
    const/4 v2, 0x0

    .line 39661
    :goto_3
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 39662
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v3, v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->c(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    add-int/2addr v1, v2

    .line 42551
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 39665
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/ProtocolStringList;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 39667
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 39668
    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 39060
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 39704
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 39705
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedHashCode:I

    return v0

    .line 47174
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->W()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 39708
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 47249
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 48218
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39711
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 48316
    :cond_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 49301
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39715
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39717
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 39719
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39721
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 39723
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 49558
    :cond_4
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 50551
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 39727
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 39729
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39730
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 39180
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->X()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 39181
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 39581
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 39585
    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->j:B

    return v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 50555
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 50552
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 50557
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 39054
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 39033
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 39033
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

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

    .line 39592
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSerializedSize()I

    .line 41218
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39593
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    .line 39594
    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(I)V

    .line 39595
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->d:I

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(I)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39597
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 39598
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->c:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v2, v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->c(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41301
    :cond_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    .line 39600
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x12

    .line 39601
    invoke-virtual {p1, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(I)V

    .line 39602
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->f:I

    invoke-virtual {p1, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(I)V

    :cond_2
    const/4 v1, 0x0

    .line 39604
    :goto_1
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 39605
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->e:Lcom/uqm/crashsight/protobuf/Internal$IntList;

    invoke-interface {v2, v1}, Lcom/uqm/crashsight/protobuf/Internal$IntList;->c(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39607
    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    .line 39608
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->g:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 39610
    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    .line 39611
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->h:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 39613
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 39614
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->c(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 39616
    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$SourceCodeInfo$Location;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
