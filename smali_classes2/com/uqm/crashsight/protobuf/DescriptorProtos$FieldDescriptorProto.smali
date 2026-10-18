.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;


# instance fields
.field private b:I

.field private volatile c:Ljava/lang/Object;

.field private d:I

.field private e:I

.field private f:I

.field private volatile g:Ljava/lang/Object;

.field private volatile h:Ljava/lang/Object;

.field private volatile i:Ljava/lang/Object;

.field private j:I

.field private volatile k:Ljava/lang/Object;

.field private l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13932
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 13940
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 11438
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 12442
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m:B

    .line 11439
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 11440
    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    .line 11441
    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    .line 11442
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    .line 11443
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    .line 11444
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    .line 11445
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11464
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>()V

    .line 11466
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11470
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 11474
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 11557
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_3

    .line 11551
    :sswitch_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    .line 11552
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    .line 11553
    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    goto :goto_0

    .line 11546
    :sswitch_1
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    .line 11547
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v2

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    goto :goto_0

    .line 11534
    :sswitch_2
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1

    .line 11535
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->m()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 11537
    :goto_1
    sget-object v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v2, :cond_2

    .line 11539
    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 11540
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    .line 11542
    :cond_2
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    goto :goto_0

    .line 11527
    :sswitch_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    .line 11528
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    .line 11529
    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    goto :goto_0

    .line 11521
    :sswitch_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    .line 11522
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    .line 11523
    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    goto :goto_0

    .line 11509
    :sswitch_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v2

    .line 11511
    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x5

    .line 11513
    invoke-virtual {v0, v3, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 11515
    :cond_3
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    .line 11516
    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    goto/16 :goto_0

    .line 11497
    :sswitch_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v2

    .line 11499
    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v3

    const/4 v4, 0x4

    if-nez v3, :cond_4

    .line 11501
    invoke-virtual {v0, v4, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 11503
    :cond_4
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    .line 11504
    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    goto/16 :goto_0

    .line 11492
    :sswitch_7
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    .line 11493
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v2

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    goto/16 :goto_0

    .line 11486
    :sswitch_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    .line 11487
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    .line 11488
    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    goto/16 :goto_0

    .line 11480
    :sswitch_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    .line 11481
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    .line 11482
    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_a
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_3
    if-nez v2, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 11568
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 11569
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 11566
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11571
    :goto_4
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 11572
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->makeExtensionsImmutable()V

    .line 11573
    throw p1

    .line 11571
    :cond_5
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 11572
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x48 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11429
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    .line 11436
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 12442
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    .line 11429
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    .line 11429
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
    .locals 0

    .line 11429
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 11429
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11429
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    .line 11429
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 11429
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11429
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    .line 11429
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    return p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 11429
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11429
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    .line 11429
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    return p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 11429
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11429
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;I)I
    .locals 0

    .line 11429
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    return p1
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 11429
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11429
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    return-object p1
.end method

.method public static u()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .line 13936
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method private v()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .line 12735
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(B)V

    .line 12736
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 12025
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    .line 12032
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    .line 12033
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12034
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 12036
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 12038
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 12039
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12040
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final c()Z
    .locals 1

    .line 12070
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 1

    .line 12077
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 12087
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    .line 12546
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-nez v1, :cond_1

    .line 12547
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 12549
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 12551
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 12552
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12553
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    .line 12554
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 12556
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 12557
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16077
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    .line 17077
    iget v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    if-eq v1, v2, :cond_5

    return v3

    .line 12561
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 12562
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12563
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    iget v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    if-eq v1, v2, :cond_7

    return v3

    .line 12565
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 12566
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 12567
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    iget v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    if-eq v1, v2, :cond_9

    return v3

    .line 12569
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 12570
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 12571
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v1

    .line 12572
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 12574
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 12575
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 12576
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l()Ljava/lang/String;

    move-result-object v1

    .line 12577
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 12579
    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 12580
    :cond_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 12581
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    .line 12582
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 12584
    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->o()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->o()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 12585
    :cond_10
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->o()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17350
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    .line 18350
    iget v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    if-eq v1, v2, :cond_11

    return v3

    .line 12589
    :cond_11
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->q()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->q()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 12590
    :cond_12
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->q()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 12591
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->r()Ljava/lang/String;

    move-result-object v1

    .line 12592
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 12594
    :cond_13
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->s()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->s()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 12595
    :cond_14
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->s()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 12596
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    .line 12597
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 12599
    :cond_15
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v3

    :cond_16
    return v0
.end method

.method public final f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 1

    .line 12095
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12096
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    :cond_0
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 12111
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    .line 22961
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 21961
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 13956
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 12497
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 12501
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 12502
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 12504
    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 12505
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12507
    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 12508
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    .line 12509
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12511
    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 12512
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    .line 12513
    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12515
    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 12516
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    .line 12517
    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12519
    :cond_5
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 12520
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12522
    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 12523
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12525
    :cond_7
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    .line 12527
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12529
    :cond_8
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 12530
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    .line 12531
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12533
    :cond_9
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 12534
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12536
    :cond_a
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 12537
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 11458
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .line 12124
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12125
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 12605
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 12606
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedHashCode:I

    return v0

    .line 18577
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->m()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 12609
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 12610
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 12612
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12614
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 19077
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    add-int/2addr v0, v1

    .line 12618
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 12620
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    add-int/2addr v0, v1

    .line 12622
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12624
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    add-int/2addr v0, v1

    .line 12626
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 12628
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12630
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 12632
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12634
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 12636
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12638
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 19350
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    add-int/2addr v0, v1

    .line 12642
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->q()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 12644
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12646
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->s()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 12648
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    mul-int/lit8 v0, v0, 0x1d

    .line 12650
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12651
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 12143
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

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

    .line 11583
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->n()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 11584
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 12445
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 12449
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12450
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12451
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m:B

    return v2

    .line 12455
    :cond_2
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->m:B

    return v1
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .line 12158
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    .line 12159
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12160
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 12162
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 12164
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 12165
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12166
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final k()Z
    .locals 1

    .line 12209
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .line 12221
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    .line 12222
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12223
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 12225
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 12227
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 12228
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12229
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final m()Z
    .locals 1

    .line 12272
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .line 12287
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    .line 12288
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12289
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 12291
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 12293
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 12294
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12295
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 20728
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->v()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 19742
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 21728
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->v()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 11452
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>()V

    return-object p1
.end method

.method public final o()Z
    .locals 1

    .line 12338
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()I
    .locals 1

    .line 12350
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 12367
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .line 12381
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    .line 12382
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12383
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 12385
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 12387
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 12388
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12389
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final s()Z
    .locals 1

    .line 12426
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .line 12433
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->l:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 11429
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->v()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 11429
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->v()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    .line 12462
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 12463
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 12465
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 12466
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->h:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 12468
    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 12469
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 12471
    :cond_2
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 12472
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->e:I

    .line 14296
    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 12474
    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 12475
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->f:I

    .line 15296
    invoke-virtual {p1, v0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 12477
    :cond_4
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12478
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->g:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 12480
    :cond_5
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 12481
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->i:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 12483
    :cond_6
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 12484
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->t()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    .line 12486
    :cond_7
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 12487
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 12489
    :cond_8
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 12490
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->k:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 12492
    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
