.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UninterpretedOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Ljava/lang/Object;

.field private e:J

.field private f:J

.field private g:D

.field private h:Lcom/uqm/crashsight/protobuf/ByteString;

.field private volatile i:Ljava/lang/Object;

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38342
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    .line 38350
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 36163
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 37215
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j:B

    .line 36164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    .line 36165
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    .line 36166
    sget-object v1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 36167
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36186
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    .line 36188
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36192
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 36196
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    const/16 v5, 0x12

    if-eq v3, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_6

    const/16 v5, 0x20

    if-eq v3, v5, :cond_5

    const/16 v6, 0x28

    if-eq v3, v6, :cond_4

    const/16 v6, 0x31

    if-eq v3, v6, :cond_3

    const/16 v6, 0x3a

    if-eq v3, v6, :cond_2

    const/16 v6, 0x42

    if-eq v3, v6, :cond_1

    .line 36243
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 36237
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    .line 36238
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    .line 36239
    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    goto :goto_0

    .line 36232
    :cond_2
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    .line 36233
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    goto :goto_0

    .line 36227
    :cond_3
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    .line 36228
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    goto :goto_0

    .line 36222
    :cond_4
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    .line 36223
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    goto :goto_0

    .line 36217
    :cond_5
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    .line 36218
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->d()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    goto :goto_0

    .line 36211
    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    .line 36212
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    .line 36213
    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    if-nez v2, :cond_8

    .line 36203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    const/4 v2, 0x1

    .line 36206
    :cond_8
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 36207
    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 36206
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 36254
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 36255
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 36252
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v2, :cond_a

    .line 36258
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    .line 36260
    :cond_a
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 36261
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->makeExtensionsImmutable()V

    .line 36262
    throw p1

    :cond_b
    if-eqz v2, :cond_c

    .line 36258
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    .line 36260
    :cond_c
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 36261
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36154
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    .line 36161
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 37215
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    .line 36154
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;D)D
    .locals 0

    .line 36154
    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    return-wide p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;I)I
    .locals 0

    .line 36154
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;J)J
    .locals 0

    .line 36154
    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 0

    .line 36154
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36154
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;
    .locals 0

    .line 36154
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 36154
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;J)J
    .locals 0

    .line 36154
    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    return-wide p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/lang/Object;
    .locals 0

    .line 36154
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36154
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/lang/Object;
    .locals 0

    .line 36154
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public static k()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 38346
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method private l()I
    .locals 1

    .line 37026
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private m()Ljava/lang/String;
    .locals 2

    .line 37066
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    .line 37067
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37068
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 37070
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 37072
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 37073
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37074
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private n()Ljava/lang/String;
    .locals 2

    .line 37184
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    .line 37185
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37186
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 37188
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 37190
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 37191
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37192
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private o()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 37466
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(B)V

    .line 37467
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 37054
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

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

    .line 37109
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()J
    .locals 2

    .line 37116
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    .line 37126
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    .line 37133
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 37301
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    if-nez v1, :cond_1

    .line 37302
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 37304
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    .line 40013
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    .line 41013
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    .line 37307
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 37308
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 37309
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37310
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->m()Ljava/lang/String;

    move-result-object v1

    .line 37311
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 37313
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 37314
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 41116
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    .line 42116
    iget-wide v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 37318
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 37319
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 42133
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    .line 43133
    iget-wide v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    .line 37323
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 37324
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 43150
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    .line 37325
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 44150
    iget-wide v5, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    .line 37326
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    .line 37329
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 37330
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 44167
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 45167
    iget-object v3, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 37332
    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 37334
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 37335
    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 37336
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->n()Ljava/lang/String;

    move-result-object v1

    .line 37337
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 37339
    :cond_e
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 37143
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()D
    .locals 2

    .line 37150
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    return-wide v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 50371
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 49371
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 38366
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 37261
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37265
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v0, v2, :cond_1

    .line 37266
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    .line 37267
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37269
    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 37270
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 37272
    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/2addr v0, v3

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    .line 37273
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    .line 37274
    invoke-static {v2, v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 37276
    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 37277
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    .line 37278
    invoke-static {v0, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 37280
    :cond_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 37281
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    .line 37282
    invoke-static {v0, v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ID)I

    move-result v0

    add-int/2addr v1, v0

    .line 37284
    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 37285
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 37286
    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v1, v0

    .line 37288
    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    .line 37289
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 37291
    :cond_7
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 37292
    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 36180
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 37160
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 37345
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 37346
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->memoizedHashCode:I

    return v0

    .line 45266
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->Q()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 37349
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 37350
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->l()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 46013
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    .line 37352
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 37354
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 37356
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 37358
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 46116
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    .line 37360
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 37363
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 46133
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    .line 37365
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 37368
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 46150
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    .line 37371
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 37370
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 37373
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 46167
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 37375
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 37377
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 37379
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    .line 37381
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 37382
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->memoizedHashCode:I

    return v0
.end method

.method public final i()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    .line 37167
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 36272
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->R()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 36273
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 37218
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 37222
    :goto_0
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->l()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 39032
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 37223
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 37224
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37228
    :cond_3
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->j:B

    return v1
.end method

.method public final j()Z
    .locals 1

    .line 37177
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 47459
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->o()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 46473
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 48459
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->o()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 36174
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 36154
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->o()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 36154
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->o()Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption$Builder;

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

    const/4 v0, 0x0

    .line 37235
    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_0

    .line 37236
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37238
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 37239
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->d:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 37241
    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/2addr v0, v2

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 37242
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->e:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 37244
    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    .line 37245
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->f:J

    .line 39256
    invoke-virtual {p1, v0, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    .line 37247
    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 37248
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->g:D

    const/4 v0, 0x6

    .line 39284
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IJ)V

    .line 37250
    :cond_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    .line 37251
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->h:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    .line 37253
    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 37254
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->i:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 37256
    :cond_6
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
