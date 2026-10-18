.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ReservedRangeOrBuilder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRangeOrBuilder;
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;


# instance fields
.field private b:I

.field private volatile c:Ljava/lang/Object;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/uqm/crashsight/protobuf/LazyStringList;

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10179
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    .line 10187
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5131
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7274
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m:B

    .line 5132
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c:Ljava/lang/Object;

    .line 5133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    .line 5134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    .line 5135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    .line 5136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    .line 5137
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    .line 5138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    .line 5139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    .line 5140
    sget-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5159
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;-><init>()V

    .line 5161
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5165
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_13

    .line 5169
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 5266
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_3

    .line 5257
    :sswitch_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    and-int/lit16 v4, v2, 0x200

    if-nez v4, :cond_1

    .line 5259
    new-instance v4, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    or-int/lit16 v2, v2, 0x200

    .line 5262
    :cond_1
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/uqm/crashsight/protobuf/LazyStringList;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

    goto :goto_0

    :sswitch_1
    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_2

    .line 5249
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    or-int/lit16 v2, v2, 0x100

    .line 5252
    :cond_2
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 5253
    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 5252
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_3

    .line 5240
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 5243
    :cond_3
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 5244
    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 5243
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5227
    :sswitch_3
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 5228
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->i()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 5230
    :goto_1
    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    if-eqz v3, :cond_5

    .line 5232
    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 5233
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    .line 5235
    :cond_5
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b:I

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_6

    .line 5218
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 5221
    :cond_6
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 5222
    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 5221
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_7

    .line 5209
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 5212
    :cond_7
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 5213
    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 5212
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_8

    .line 5200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 5203
    :cond_8
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 5204
    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 5203
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_9

    .line 5191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 5194
    :cond_9
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 5195
    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 5194
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_a

    .line 5182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 5185
    :cond_a
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    sget-object v4, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 5186
    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    .line 5185
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5175
    :sswitch_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    .line 5176
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b:I

    .line 5177
    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c:Ljava/lang/Object;
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
    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 5277
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 5278
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5275
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_b

    .line 5281
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    :cond_b
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_c

    .line 5284
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_d

    .line 5287
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_e

    .line 5290
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_f

    .line 5293
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_10

    .line 5296
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    :cond_10
    and-int/lit16 p2, v2, 0x100

    if-eqz p2, :cond_11

    .line 5299
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    :cond_11
    and-int/lit16 p2, v2, 0x200

    if-eqz p2, :cond_12

    .line 5302
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 5304
    :cond_12
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 5305
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->makeExtensionsImmutable()V

    .line 5306
    throw p1

    :cond_13
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_14

    .line 5281
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    :cond_14
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_15

    .line 5284
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_16

    .line 5287
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    :cond_16
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_17

    .line 5290
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    :cond_17
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_18

    .line 5293
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    :cond_18
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_19

    .line 5296
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    :cond_19
    and-int/lit16 p1, v2, 0x100

    if-eqz p1, :cond_1a

    .line 5299
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    :cond_1a
    and-int/lit16 p1, v2, 0x200

    if-eqz p1, :cond_1b

    .line 5302
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 5304
    :cond_1b
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 5305
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
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

    .line 5122
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

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

    .line 5129
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 7274
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V
    .locals 0

    .line 5122
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;I)I
    .locals 0

    .line 5122
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b:I

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;
    .locals 0

    .line 5122
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Lcom/uqm/crashsight/protobuf/LazyStringList;)Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 0

    .line 5122
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;)Ljava/lang/Object;
    .locals 0

    .line 5122
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5122
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 5122
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 5122
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 5122
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 5122
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 5122
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 5122
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 5122
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 5122
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 5122
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 5122
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 5122
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic g(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 5122
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 5122
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    return-object p1
.end method

.method static synthetic h(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;
    .locals 0

    .line 5122
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;)Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 0

    .line 5122
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-object p0
.end method

.method public static k()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1

    .line 7582
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static l()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .line 10183
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method private m()I
    .locals 1

    .line 7110
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .line 7589
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;-><init>(B)V

    .line 7590
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .line 6976
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p1
.end method

.method public final a()Z
    .locals 2

    .line 6913
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .line 7011
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 6920
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c:Ljava/lang/Object;

    .line 6921
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6922
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6924
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 6926
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 6927
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6928
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final c()I
    .locals 1

    .line 6970
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .line 7046
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    return-object p1
.end method

.method public final d()I
    .locals 1

    .line 7005
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final d(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .line 7081
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p1
.end method

.method public final e()I
    .locals 1

    .line 7040
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final e(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1

    .line 7151
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7422
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    if-nez v1, :cond_1

    .line 7423
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7425
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    .line 7427
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 7428
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7429
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    .line 7430
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 11957
    :cond_3
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    .line 12957
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    .line 7433
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 12992
    :cond_4
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    .line 13992
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    .line 7435
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 14027
    :cond_5
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    .line 15027
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    .line 7437
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 15062
    :cond_6
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    .line 16062
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    .line 7439
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16097
    :cond_7
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    .line 17097
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    .line 7441
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 17132
    :cond_8
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    .line 18132
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    .line 7443
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 7444
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 7445
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 7446
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    .line 7447
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 18190
    :cond_b
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    .line 19190
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    .line 7450
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 19232
    :cond_c
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 20232
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 7452
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 7453
    :cond_d
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v3

    :cond_e
    return v0
.end method

.method public final f()I
    .locals 1

    .line 7075
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation

    .line 7097
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 27208
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 26208
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .line 10203
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 7365
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7369
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7370
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 7372
    :goto_1
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v1, v3, :cond_2

    .line 7373
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    .line 7374
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 7376
    :goto_2
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 7377
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    .line 7378
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 v5, 0x3

    invoke-static {v5, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 7380
    :goto_3
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 7381
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    .line 7382
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 v5, 0x4

    invoke-static {v5, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 7384
    :goto_4
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 7385
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    .line 7386
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 v5, 0x5

    invoke-static {v5, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 7388
    :goto_5
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 7389
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    .line 7390
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 v5, 0x6

    invoke-static {v5, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7392
    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 7394
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    const/4 v1, 0x0

    .line 7396
    :goto_6
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 7397
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    .line 7398
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v4, 0x8

    invoke-static {v4, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    .line 7400
    :goto_7
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 7401
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    .line 7402
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v4, 0x9

    invoke-static {v4, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    .line 7406
    :goto_8
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 7407
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v3, v2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->c(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    add-int/2addr v0, v1

    .line 11232
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 7410
    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/ProtocolStringList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 7412
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7413
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 5153
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 7145
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 7459
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 7460
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->memoizedHashCode:I

    return v0

    .line 20310
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->e()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 7463
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 7464
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 7466
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7468
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 20957
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    .line 7470
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7472
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 20992
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    .line 7474
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7476
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 21027
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    .line 7478
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7480
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 21062
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    .line 7482
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7484
    :cond_5
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 21097
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    .line 7486
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7488
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 21132
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    .line 7490
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7492
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 7494
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21203
    :cond_8
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 22190
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    .line 7498
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22244
    :cond_9
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v1

    if-lez v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 23232
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 7502
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    mul-int/lit8 v0, v0, 0x1d

    .line 7504
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7505
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->memoizedHashCode:I

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 7168
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 5316
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->f()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    .line 5317
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 7277
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 7281
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 7282
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7283
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 7287
    :goto_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 7288
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 7289
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 7293
    :goto_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 7294
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 7295
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 7299
    :goto_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 7300
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    .line 7301
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    .line 7305
    :goto_4
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 11116
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 7306
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a

    .line 7307
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m:B

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    .line 7311
    :goto_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 7312
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_c

    .line 7313
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m:B

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7317
    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7318
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 7319
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m:B

    return v2

    .line 7323
    :cond_e
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->m:B

    return v1
.end method

.method public final j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .line 7175
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j:Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 24582
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 23596
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 25582
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 5147
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;-><init>()V

    return-object p1
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 5122
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 5122
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->n()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7330
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 7331
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7333
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_1

    .line 7334
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7336
    :goto_1
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7337
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 7339
    :goto_2
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7340
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 7342
    :goto_3
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 7343
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 7345
    :goto_4
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 7346
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 7348
    :cond_5
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 7349
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_6
    const/4 v1, 0x0

    .line 7351
    :goto_5
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 7352
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    .line 7354
    :goto_6
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 7355
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 7357
    :cond_8
    :goto_7
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 7358
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->l:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->c(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 7360
    :cond_9
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
