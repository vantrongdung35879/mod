.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30210
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    .line 30218
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28172
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 28833
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:B

    const/4 v0, 0x0

    .line 28173
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c:I

    .line 28174
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    .line 28175
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28194
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    .line 28196
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28200
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/16 v3, 0x40

    if-nez v1, :cond_d

    .line 28204
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_b

    const/16 v6, 0x8

    if-eq v4, v6, :cond_9

    const/16 v7, 0x10

    if-eq v4, v7, :cond_8

    const/16 v8, 0x18

    if-eq v4, v8, :cond_7

    const/16 v7, 0x28

    if-eq v4, v7, :cond_6

    const/16 v6, 0x30

    if-eq v4, v6, :cond_4

    const/16 v6, 0x50

    if-eq v4, v6, :cond_3

    const/16 v6, 0x1f3a

    if-eq v4, v6, :cond_1

    .line 28263
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x40

    if-nez v4, :cond_2

    .line 28255
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    const/16 v2, 0x40

    .line 28258
    :cond_2
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 28259
    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    .line 28258
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28249
    :cond_3
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 28250
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:Z

    goto :goto_0

    .line 28237
    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v4

    .line 28239
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x6

    .line 28241
    invoke-virtual {v0, v5, v4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 28243
    :cond_5
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 28244
    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    goto :goto_0

    .line 28232
    :cond_6
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 28233
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:Z

    goto :goto_0

    .line 28227
    :cond_7
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    or-int/2addr v4, v7

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 28228
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    goto/16 :goto_0

    .line 28222
    :cond_8
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 28223
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Z

    goto/16 :goto_0

    .line 28210
    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v4

    .line 28212
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v6

    if-nez v6, :cond_a

    .line 28214
    invoke-virtual {v0, v5, v4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 28216
    :cond_a
    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    .line 28217
    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c:I
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 28274
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 28275
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 28272
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_c

    .line 28278
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 28280
    :cond_c
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 28281
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->makeExtensionsImmutable()V

    .line 28282
    throw p1

    :cond_d
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_e

    .line 28278
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 28280
    :cond_e
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 28281
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 28162
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;",
            "*>;)V"
        }
    .end annotation

    .line 28170
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    const/4 p1, -0x1

    .line 28833
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;B)V
    .locals 0

    .line 28162
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;I)I
    .locals 0

    .line 28162
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c:I

    return p1
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 29092
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28162
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    .line 28162
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;I)I
    .locals 0

    .line 28162
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;
    .locals 0

    .line 28162
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    .line 28162
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;I)I
    .locals 0

    .line 28162
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    return p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    .line 28162
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0

    .line 28162
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:Z

    return p1
.end method

.method public static n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .line 30214
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method private o()I
    .locals 1

    .line 28809
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 28554
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    .line 28569
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28570
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$CType;

    :cond_0
    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 28588
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 28603
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 28626
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

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

    .line 28930
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-nez v1, :cond_1

    .line 28931
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 28933
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    .line 28935
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 28936
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28937
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c:I

    iget v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c:I

    if-eq v1, v2, :cond_3

    return v3

    .line 28939
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 28940
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32603
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Z

    .line 33603
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Z

    if-eq v1, v2, :cond_5

    return v3

    .line 28944
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 28945
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28946
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    iget v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    if-eq v1, v2, :cond_7

    return v3

    .line 28948
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 28949
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 33719
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:Z

    .line 34719
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:Z

    if-eq v1, v2, :cond_9

    return v3

    .line 28953
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 28954
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 34750
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    .line 35750
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    if-eq v1, v2, :cond_b

    return v3

    .line 28958
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 28959
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 35775
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:Z

    .line 36775
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:Z

    if-eq v1, v2, :cond_d

    return v3

    .line 36788
    :cond_d
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 37788
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 28964
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 28965
    :cond_e
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 28966
    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->J()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->J()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v3

    :cond_10
    return v0
.end method

.method public final f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;
    .locals 1

    .line 28647
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28648
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$JSType;

    :cond_0
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 28685
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

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

    .line 39239
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 40239
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;",
            ">;"
        }
    .end annotation

    .line 30234
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 28887
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 28891
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 28892
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c:I

    .line 28893
    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 28895
    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 28896
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Z

    .line 28897
    invoke-static {v3, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28899
    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 28900
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    .line 28901
    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28903
    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 28904
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:Z

    .line 28905
    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28907
    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 28908
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    .line 28909
    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28911
    :cond_5
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    const/16 v1, 0xa

    .line 28912
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:Z

    .line 28913
    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28915
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 28916
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 28917
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x3e7

    invoke-static {v3, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 28919
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->I()I

    move-result v1

    add-int/2addr v0, v1

    .line 28920
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 28921
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 28188
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 28719
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:Z

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 28973
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 28974
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->memoizedHashCode:I

    return v0

    .line 38286
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->E()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 28977
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 28978
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 28980
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c:I

    add-int/2addr v0, v1

    .line 28982
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 38603
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Z

    .line 28984
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 28987
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 28989
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    add-int/2addr v0, v1

    .line 28991
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 38719
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:Z

    .line 28993
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 28996
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 38750
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    .line 28998
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 29001
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 38775
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:Z

    .line 29003
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 29006
    :cond_6
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->o()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x3e7

    mul-int/lit8 v0, v0, 0x35

    .line 38788
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    .line 29008
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29010
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->J()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    .line 29011
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29012
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->memoizedHashCode:I

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 28736
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

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

    .line 28292
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->F()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 28293
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 28836
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 28840
    :goto_0
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->o()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 30819
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    .line 28841
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 28842
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28846
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->G()Z

    move-result v0

    if-nez v0, :cond_4

    .line 28847
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:B

    return v2

    .line 28850
    :cond_4
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->j:B

    return v1
.end method

.method public final j()Z
    .locals 1

    .line 28750
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 28764
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

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

    .line 28775
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:Z

    return v0
.end method

.method public final m()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .line 29096
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(B)V

    .line 29097
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 42089
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 41103
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 43089
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->k:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 28182
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 28162
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 28162
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

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

    .line 28859
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->H()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 28860
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 28861
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->c:I

    .line 31296
    invoke-virtual {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 28863
    :cond_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 28864
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->d:Z

    invoke-virtual {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 28866
    :cond_1
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 28867
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->g:Z

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 28869
    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    .line 28870
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->f:Z

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 28872
    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    .line 28873
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->e:I

    .line 32296
    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 28875
    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const/16 v1, 0xa

    .line 28876
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->h:Z

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_5
    const/4 v1, 0x0

    .line 28878
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 28879
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/high16 v1, 0x20000000

    .line 28881
    invoke-virtual {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->a(ILcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    .line 28882
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
