.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;,
        Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;


# instance fields
.field private b:I

.field private volatile c:Ljava/lang/Object;

.field private volatile d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private volatile i:Ljava/lang/Object;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private volatile p:Ljava/lang/Object;

.field private volatile q:Ljava/lang/Object;

.field private volatile r:Ljava/lang/Object;

.field private volatile s:Ljava/lang/Object;

.field private volatile t:Ljava/lang/Object;

.field private volatile u:Ljava/lang/Object;

.field private volatile v:Ljava/lang/Object;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private x:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26118
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    .line 26126
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 21781
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    const/4 v0, -0x1

    .line 23082
    iput-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x:B

    .line 21782
    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    .line 21783
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 21784
    iput v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    .line 21785
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    .line 21786
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    .line 21787
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    .line 21788
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    .line 21789
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    .line 21790
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    .line 21791
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    .line 21792
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    .line 21793
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21812
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;-><init>()V

    .line 21814
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21818
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/high16 v3, 0x100000

    if-nez v1, :cond_4

    .line 21822
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    .line 21954
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    :sswitch_0
    and-int v4, v2, v3

    if-nez v4, :cond_1

    .line 21946
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    const/high16 v2, 0x100000

    .line 21949
    :cond_1
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    sget-object v5, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->a:Lcom/uqm/crashsight/protobuf/Parser;

    .line 21950
    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    .line 21949
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21939
    :sswitch_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    .line 21940
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21941
    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    goto :goto_0

    .line 21933
    :sswitch_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    .line 21934
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21935
    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    goto :goto_0

    .line 21928
    :sswitch_3
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21929
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    goto :goto_0

    .line 21922
    :sswitch_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    .line 21923
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21924
    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    goto :goto_0

    .line 21916
    :sswitch_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    .line 21917
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21918
    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    goto :goto_0

    .line 21910
    :sswitch_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    .line 21911
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21912
    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    goto :goto_0

    .line 21904
    :sswitch_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    .line 21905
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21906
    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21898
    :sswitch_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    .line 21899
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21900
    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21893
    :sswitch_9
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21894
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    goto/16 :goto_0

    .line 21888
    :sswitch_a
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21889
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    goto/16 :goto_0

    .line 21883
    :sswitch_b
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21884
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    goto/16 :goto_0

    .line 21878
    :sswitch_c
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21879
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    goto/16 :goto_0

    .line 21873
    :sswitch_d
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21874
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    goto/16 :goto_0

    .line 21868
    :sswitch_e
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21869
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    goto/16 :goto_0

    .line 21863
    :sswitch_f
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21864
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    goto/16 :goto_0

    .line 21857
    :sswitch_10
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    .line 21858
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21859
    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21852
    :sswitch_11
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21853
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    goto/16 :goto_0

    .line 21840
    :sswitch_12
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->n()I

    move-result v4

    .line 21842
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v5

    if-nez v5, :cond_2

    const/16 v5, 0x9

    .line 21844
    invoke-virtual {v0, v5, v4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(II)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 21846
    :cond_2
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21847
    iput v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    goto/16 :goto_0

    .line 21834
    :sswitch_13
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    .line 21835
    iget v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21836
    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    goto/16 :goto_0

    .line 21828
    :sswitch_14
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->l()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    .line 21829
    iget v6, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    .line 21830
    iput-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_15
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 21965
    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 21966
    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 21963
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int p2, v2, v3

    if-eqz p2, :cond_3

    .line 21969
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    .line 21971
    :cond_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 21972
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->makeExtensionsImmutable()V

    .line 21973
    throw p1

    :cond_4
    and-int p1, v2, v3

    if-eqz p1, :cond_5

    .line 21969
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    .line 21971
    :cond_5
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    .line 21972
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_14
        0x42 -> :sswitch_13
        0x48 -> :sswitch_12
        0x50 -> :sswitch_11
        0x5a -> :sswitch_10
        0x80 -> :sswitch_f
        0x88 -> :sswitch_e
        0x90 -> :sswitch_d
        0xa0 -> :sswitch_c
        0xb8 -> :sswitch_b
        0xd8 -> :sswitch_a
        0xf8 -> :sswitch_9
        0x122 -> :sswitch_8
        0x12a -> :sswitch_7
        0x13a -> :sswitch_6
        0x142 -> :sswitch_5
        0x14a -> :sswitch_4
        0x150 -> :sswitch_3
        0x162 -> :sswitch_2
        0x16a -> :sswitch_1
        0x1f3a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21771
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;",
            "*>;)V"
        }
    .end annotation

    .line 21779
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    const/4 p1, -0x1

    .line 23082
    iput-byte p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;B)V
    .locals 0

    .line 21771
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method public static F()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .line 26122
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method private K()Ljava/lang/String;
    .locals 2

    .line 22150
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    .line 22151
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22152
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22154
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22156
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 22157
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22158
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private L()Ljava/lang/String;
    .locals 2

    .line 22218
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    .line 22219
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22220
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22222
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22224
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 22225
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22226
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private M()Ljava/lang/String;
    .locals 2

    .line 22401
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    .line 22402
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22403
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22405
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22407
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 22408
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22409
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private N()Ljava/lang/String;
    .locals 2

    .line 22614
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    .line 22615
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22616
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22618
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22620
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 22621
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22622
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private O()Ljava/lang/String;
    .locals 2

    .line 22672
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    .line 22673
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22674
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22676
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22678
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 22679
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22680
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private P()Ljava/lang/String;
    .locals 2

    .line 22735
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    .line 22736
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22737
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22739
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22741
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 22742
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22743
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private Q()Ljava/lang/String;
    .locals 2

    .line 22797
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    .line 22798
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22799
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22801
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22803
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 22804
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22805
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private R()Ljava/lang/String;
    .locals 2

    .line 22859
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    .line 22860
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22861
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22863
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22865
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 22866
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22867
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private S()Ljava/lang/String;
    .locals 2

    .line 22922
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    .line 22923
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22924
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22926
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22928
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 22929
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22930
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private T()Ljava/lang/String;
    .locals 2

    .line 22985
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    .line 22986
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22987
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 22989
    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 22991
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 22992
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22993
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private U()I
    .locals 1

    .line 23056
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0

    .line 21771
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    return p1
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 23561
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->E()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 21771
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21771
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0

    .line 21771
    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    return p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21771
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21771
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21771
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    return p1
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21771
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    return p1
.end method

.method static synthetic f(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21771
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    return p1
.end method

.method static synthetic g(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21771
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    return p1
.end method

.method static synthetic h(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic h(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21771
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    return p1
.end method

.method static synthetic i(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic i(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic i(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0

    .line 21771
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    return p1
.end method

.method static synthetic j(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic j(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic k(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 0

    .line 21771
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic l(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;
    .locals 0

    .line 21771
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .line 22785
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Z
    .locals 2

    .line 22846
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Z
    .locals 2

    .line 22909
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Z
    .locals 2

    .line 22972
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final E()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 23565
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(B)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(B)V

    .line 23566
    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 2

    .line 22136
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

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

    .line 22203
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 22273
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 22289
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    return v0
.end method

.method public final e()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22303
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v0, v0, 0x8

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

    .line 23267
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    if-nez v1, :cond_1

    .line 23268
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 23270
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    .line 23272
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 23273
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23274
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->K()Ljava/lang/String;

    move-result-object v1

    .line 23275
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 23277
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 23278
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23279
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->L()Ljava/lang/String;

    move-result-object v1

    .line 23280
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 23282
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 23283
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28289
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    .line 29289
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    if-eq v1, v2, :cond_7

    return v3

    .line 23287
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 23288
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 29314
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    .line 30314
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    if-eq v1, v2, :cond_9

    return v3

    .line 23292
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 23293
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 30349
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    .line 31349
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    if-eq v1, v2, :cond_b

    return v3

    .line 23297
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 23298
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 23299
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    iget v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    if-eq v1, v2, :cond_d

    return v3

    .line 23301
    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 23302
    :cond_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 23303
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->M()Ljava/lang/String;

    move-result-object v1

    .line 23304
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 23306
    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 23307
    :cond_10
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 31478
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    .line 32478
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    if-eq v1, v2, :cond_11

    return v3

    .line 23311
    :cond_11
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 23312
    :cond_12
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 32495
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    .line 33495
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    if-eq v1, v2, :cond_13

    return v3

    .line 23316
    :cond_13
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 23317
    :cond_14
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 33512
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    .line 34512
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    if-eq v1, v2, :cond_15

    return v3

    .line 23321
    :cond_15
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r()Z

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    .line 23322
    :cond_16
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 34529
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    .line 35529
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    if-eq v1, v2, :cond_17

    return v3

    .line 23326
    :cond_17
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t()Z

    move-result v2

    if-eq v1, v2, :cond_18

    return v3

    .line 23327
    :cond_18
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 35560
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    .line 36560
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    if-eq v1, v2, :cond_19

    return v3

    .line 23331
    :cond_19
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v()Z

    move-result v2

    if-eq v1, v2, :cond_1a

    return v3

    .line 23332
    :cond_1a
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 36587
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    .line 37587
    iget-boolean v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    if-eq v1, v2, :cond_1b

    return v3

    .line 23336
    :cond_1b
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x()Z

    move-result v2

    if-eq v1, v2, :cond_1c

    return v3

    .line 23337
    :cond_1c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 23338
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->N()Ljava/lang/String;

    move-result-object v1

    .line 23339
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v3

    .line 23341
    :cond_1d
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y()Z

    move-result v2

    if-eq v1, v2, :cond_1e

    return v3

    .line 23342
    :cond_1e
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 23343
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->O()Ljava/lang/String;

    move-result-object v1

    .line 23344
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v3

    .line 23346
    :cond_1f
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->z()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->z()Z

    move-result v2

    if-eq v1, v2, :cond_20

    return v3

    .line 23347
    :cond_20
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->z()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 23348
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->P()Ljava/lang/String;

    move-result-object v1

    .line 23349
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v3

    .line 23351
    :cond_21
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->A()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->A()Z

    move-result v2

    if-eq v1, v2, :cond_22

    return v3

    .line 23352
    :cond_22
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->A()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 23353
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->Q()Ljava/lang/String;

    move-result-object v1

    .line 23354
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v3

    .line 23356
    :cond_23
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->B()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->B()Z

    move-result v2

    if-eq v1, v2, :cond_24

    return v3

    .line 23357
    :cond_24
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->B()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 23358
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->R()Ljava/lang/String;

    move-result-object v1

    .line 23359
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v3

    .line 23361
    :cond_25
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->C()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->C()Z

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 23362
    :cond_26
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->C()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 23363
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->S()Ljava/lang/String;

    move-result-object v1

    .line 23364
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v3

    .line 23366
    :cond_27
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->D()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->D()Z

    move-result v2

    if-eq v1, v2, :cond_28

    return v3

    .line 23367
    :cond_28
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->D()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 23368
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->T()Ljava/lang/String;

    move-result-object v1

    .line 23369
    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v3

    .line 38033
    :cond_29
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    .line 39033
    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    .line 23372
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    .line 23373
    :cond_2a
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object v2, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v3

    .line 23374
    :cond_2b
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->J()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->J()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    return v3

    :cond_2c
    return v0
.end method

.method public final f()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22314
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 22333
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 41147
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    .line 42147
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    .line 26142
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 23178
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 23182
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 23183
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 23185
    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x2

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 23186
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23188
    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    .line 23189
    iget v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    .line 23190
    invoke-static {v1, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 23192
    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    .line 23193
    iget-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    .line 23194
    invoke-static {v1, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23196
    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    .line 23197
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23199
    :cond_5
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v4, 0x10

    if-eqz v1, :cond_6

    .line 23200
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    .line 23201
    invoke-static {v4, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23203
    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    const/16 v1, 0x11

    .line 23204
    iget-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    .line 23205
    invoke-static {v1, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23207
    :cond_7
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    const/16 v1, 0x12

    .line 23208
    iget-boolean v5, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    .line 23209
    invoke-static {v1, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23211
    :cond_8
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_9

    const/16 v1, 0x14

    .line 23212
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    .line 23213
    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23215
    :cond_9
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_a

    const/16 v1, 0x17

    .line 23216
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    .line 23217
    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23219
    :cond_a
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_b

    const/16 v1, 0x1b

    .line 23220
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    .line 23221
    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23223
    :cond_b
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    const/16 v1, 0x1f

    .line 23224
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    .line 23225
    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23227
    :cond_c
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    const/16 v1, 0x24

    .line 23228
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23230
    :cond_d
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    const/16 v1, 0x25

    .line 23231
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23233
    :cond_e
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const v3, 0x8000

    and-int/2addr v1, v3

    if-eqz v1, :cond_f

    const/16 v1, 0x27

    .line 23234
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23236
    :cond_f
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_10

    const/16 v1, 0x28

    .line 23237
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23239
    :cond_10
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_11

    const/16 v1, 0x29

    .line 23240
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23242
    :cond_11
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_12

    const/16 v1, 0x2a

    .line 23243
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    .line 23244
    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23246
    :cond_12
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    const/16 v1, 0x2c

    .line 23247
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23249
    :cond_13
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_14

    const/16 v1, 0x2d

    .line 23250
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23252
    :cond_14
    :goto_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_15

    .line 23253
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    .line 23254
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x3e7

    invoke-static {v3, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23256
    :cond_15
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->I()I

    move-result v1

    add-int/2addr v0, v1

    .line 23257
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 23258
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    .line 21806
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 22349
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 23381
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 23382
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->memoizedHashCode:I

    return v0

    .line 39977
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->A()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    .line 23385
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 23386
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 23388
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23390
    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 23392
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23394
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 40289
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    .line 23396
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 23399
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 40314
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    .line 23401
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 23404
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 40349
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    .line 23406
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 23409
    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 23411
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    add-int/2addr v0, v1

    .line 23413
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 23415
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23417
    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 40478
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    .line 23419
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 23422
    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 40495
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    .line 23424
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 23427
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 40512
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    .line 23429
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 23432
    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2a

    mul-int/lit8 v0, v0, 0x35

    .line 40529
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    .line 23434
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 23437
    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 40560
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    .line 23439
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 23442
    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x35

    .line 40587
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    .line 23444
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 23447
    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x24

    mul-int/lit8 v0, v0, 0x35

    .line 23449
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23451
    :cond_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x35

    .line 23453
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23455
    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->z()Z

    move-result v1

    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x27

    mul-int/lit8 v0, v0, 0x35

    .line 23457
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23459
    :cond_10
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->A()Z

    move-result v1

    if-eqz v1, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x28

    mul-int/lit8 v0, v0, 0x35

    .line 23461
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23463
    :cond_11
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->B()Z

    move-result v1

    if-eqz v1, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x35

    .line 23465
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23467
    :cond_12
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->C()Z

    move-result v1

    if-eqz v1, :cond_13

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2c

    mul-int/lit8 v0, v0, 0x35

    .line 23469
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23471
    :cond_13
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->D()Z

    move-result v1

    if-eqz v1, :cond_14

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2d

    mul-int/lit8 v0, v0, 0x35

    .line 23473
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23475
    :cond_14
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->U()I

    move-result v1

    if-lez v1, :cond_15

    mul-int/lit8 v0, v0, 0x25

    add-int/lit16 v0, v0, 0x3e7

    mul-int/lit8 v0, v0, 0x35

    .line 41033
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    .line 23477
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23479
    :cond_15
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->J()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    .line 23480
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23481
    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->memoizedHashCode:I

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 22359
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 21983
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->B()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 21984
    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 23085
    iget-byte v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 23089
    :goto_0
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->U()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 27067
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;

    .line 23090
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 23091
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23095
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->G()Z

    move-result v0

    if-nez v0, :cond_4

    .line 23096
    iput-byte v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x:B

    return v2

    .line 23099
    :cond_4
    iput-byte v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->x:B

    return v1
.end method

.method public final j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .line 22367
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22368
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->a:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    :cond_0
    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 22386
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 22459
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 22478
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    .line 22488
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 43558
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->E()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    .line 42572
    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V

    return-object v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 44558
    sget-object v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->y:Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->E()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 21800
    new-instance p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;-><init>()V

    return-object p1
.end method

.method public final o()Z
    .locals 1

    .line 22495
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    .line 22505
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 22512
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    .line 22522
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Z
    .locals 1

    .line 22529
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    .line 22546
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    .line 21771
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->E()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    .line 21771
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->E()Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 22560
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    .line 22575
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 1

    .line 22587
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    return v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23108
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->H()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 23109
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 23110
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->c:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23112
    :cond_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 23113
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->d:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23115
    :cond_1
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    .line 23116
    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->h:I

    .line 27296
    invoke-virtual {p1, v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    .line 23118
    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 23119
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->e:Z

    invoke-virtual {p1, v1, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 23121
    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    const/16 v1, 0xb

    .line 23122
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->i:Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23124
    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x10

    if-eqz v1, :cond_5

    .line 23125
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->j:Z

    invoke-virtual {p1, v3, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 23127
    :cond_5
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_6

    const/16 v1, 0x11

    .line 23128
    iget-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->k:Z

    invoke-virtual {p1, v1, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 23130
    :cond_6
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7

    const/16 v1, 0x12

    .line 23131
    iget-boolean v4, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->l:Z

    invoke-virtual {p1, v1, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 23133
    :cond_7
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    const/16 v1, 0x14

    .line 23134
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->f:Z

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 23136
    :cond_8
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_9

    const/16 v1, 0x17

    .line 23137
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->n:Z

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 23139
    :cond_9
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    const/16 v1, 0x1b

    .line 23140
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->g:Z

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 23142
    :cond_a
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_b

    const/16 v1, 0x1f

    .line 23143
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->o:Z

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 23145
    :cond_b
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_c

    const/16 v1, 0x24

    .line 23146
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->p:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23148
    :cond_c
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_d

    const/16 v1, 0x25

    .line 23149
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->q:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23151
    :cond_d
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    const/16 v1, 0x27

    .line 23152
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->r:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23154
    :cond_e
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    const/16 v1, 0x28

    .line 23155
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->s:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23157
    :cond_f
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    const/16 v1, 0x29

    .line 23158
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->t:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23160
    :cond_10
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_11

    const/16 v1, 0x2a

    .line 23161
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->m:Z

    invoke-virtual {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    .line 23163
    :cond_11
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    const/16 v1, 0x2c

    .line 23164
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->u:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23166
    :cond_12
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    const/16 v1, 0x2d

    .line 23167
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->v:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_13
    const/4 v1, 0x0

    .line 23169
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 23170
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_14
    const/high16 v1, 0x20000000

    .line 23172
    invoke-virtual {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->a(ILcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    .line 23173
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final x()Z
    .locals 1

    .line 22602
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y()Z
    .locals 1

    .line 22661
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()Z
    .locals 2

    .line 22721
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$FileOptions;->b:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
