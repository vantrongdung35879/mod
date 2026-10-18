.class final Lcom/uqm/crashsight/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/uqm/crashsight/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Lcom/uqm/crashsight/protobuf/MessageLite;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:[I

.field private final m:I

.field private final n:I

.field private final o:Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

.field private final p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

.field private final q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private final r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    new-array v0, v0, [I

    sput-object v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->a:[I

    .line 101
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/uqm/crashsight/protobuf/MessageLite;ZZ[IIILcom/uqm/crashsight/protobuf/NewInstanceSchema;Lcom/uqm/crashsight/protobuf/ListFieldSchema;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MapFieldSchema;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/uqm/crashsight/protobuf/MessageLite;",
            "ZZ[III",
            "Lcom/uqm/crashsight/protobuf/NewInstanceSchema;",
            "Lcom/uqm/crashsight/protobuf/ListFieldSchema;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    .line 191
    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    .line 192
    iput p3, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->e:I

    .line 193
    iput p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->f:I

    .line 195
    instance-of p1, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->i:Z

    .line 196
    iput-boolean p6, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->j:Z

    if-eqz p14, :cond_0

    .line 197
    invoke-virtual {p14, p5}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    .line 198
    iput-boolean p7, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    .line 200
    iput-object p8, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    .line 201
    iput p9, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    .line 202
    iput p10, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    .line 204
    iput-object p11, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->o:Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    .line 205
    iput-object p12, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    .line 206
    iput-object p13, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    .line 207
    iput-object p14, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    .line 208
    iput-object p5, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->g:Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 209
    iput-object p15, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    return-void
.end method

.method private a(II)I
    .locals 1

    .line 5851
    iget v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->f:I

    if-gt p1, v0, :cond_0

    .line 5852
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 2515
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2516
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->f(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Object;[BIIIIIIIJILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 4689
    sget-object v12, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    .line 4690
    iget-object v7, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 4821
    invoke-direct {v0, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 4820
    invoke-static/range {v2 .. v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4823
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 4824
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 4827
    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    .line 4829
    :cond_1
    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    .line 4830
    invoke-static {v15, v3}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4829
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    if-nez v5, :cond_a

    .line 4811
    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4812
    iget-wide v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_2
    if-nez v5, :cond_a

    .line 4804
    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4805
    iget v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_3
    if-nez v5, :cond_a

    .line 4790
    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4791
    iget v4, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    .line 4792
    invoke-direct {v0, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(I)Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 4793
    invoke-interface {v5, v4}, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 4798
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    goto :goto_2

    .line 4794
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4795
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_2
    move v2, v3

    goto/16 :goto_c

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 4783
    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4784
    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 4767
    invoke-direct {v0, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v2

    move/from16 v5, p4

    .line 4766
    invoke-static {v2, v3, v4, v5, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4769
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 4770
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    if-nez v15, :cond_5

    .line 4773
    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    .line 4775
    :cond_5
    iget-object v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    .line 4776
    invoke-static {v15, v3}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4775
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4778
    :goto_4
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 4747
    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4748
    iget v4, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-nez v4, :cond_6

    .line 4750
    const-string v3, ""

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 4753
    invoke-static {v3, v2, v5}, Lcom/uqm/crashsight/protobuf/Utf8;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    .line 4754
    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->l()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 4756
    :cond_8
    :goto_5
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4757
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 4760
    :goto_6
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_7
    if-nez v5, :cond_a

    .line 4740
    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4741
    iget-wide v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/4 v15, 0x1

    goto :goto_7

    :cond_9
    const/4 v15, 0x0

    :goto_7
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 4733
    invoke-static/range {p2 .. p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 4725
    invoke-static/range {p2 .. p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_a
    if-nez v5, :cond_a

    .line 4717
    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4718
    iget v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_b
    if-nez v5, :cond_a

    .line 4709
    invoke-static {v3, v4, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4710
    iget-wide v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 4701
    invoke-static/range {p2 .. p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    add-int/lit8 v2, v4, 0x4

    goto :goto_a

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 4694
    invoke-static/range {p2 .. p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_9
    add-int/lit8 v2, v4, 0x8

    .line 4832
    :goto_a
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c

    :cond_a
    :goto_b
    move v2, v4

    :goto_c
    return v2

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;[BIIIIIIJIJLcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v2, p7

    move/from16 v8, p8

    move-wide/from16 v5, p12

    move-object/from16 v7, p14

    .line 4485
    sget-object v9, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    .line 4486
    invoke-interface {v10}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->a()Z

    move-result v11

    const/4 v12, 0x1

    if-nez v11, :cond_1

    .line 4487
    invoke-interface {v10}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->size()I

    move-result v11

    if-nez v11, :cond_0

    const/16 v11, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v11, v12

    .line 4489
    :goto_0
    invoke-interface {v10, v11}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->b(I)Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    move-result-object v10

    .line 4491
    invoke-virtual {v9, p1, v5, v6, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v5, 0x5

    const/4 v6, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v1, 0x3

    if-ne v2, v1, :cond_f

    .line 4633
    invoke-direct {p0, v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    .line 4632
    invoke-static/range {p6 .. p12}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b(Lcom/uqm/crashsight/protobuf/Schema;I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_1
    if-ne v2, v6, :cond_2

    .line 4624
    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->i([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_2
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 4626
    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->i(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_2
    if-ne v2, v6, :cond_3

    .line 4616
    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->h([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_3
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 4618
    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->h(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_3
    if-ne v2, v6, :cond_4

    .line 4588
    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_1

    :cond_4
    if-nez v2, :cond_f

    move/from16 v2, p5

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p14

    .line 4590
    invoke-static/range {v2 .. v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4594
    :goto_1
    check-cast v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object v3, v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    .line 4595
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    .line 4606
    :cond_5
    invoke-direct {p0, v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(I)Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v4

    iget-object v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    move/from16 v6, p6

    .line 4603
    invoke-static {v6, v10, v4, v3, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    if-eqz v3, :cond_6

    .line 4610
    iput-object v3, v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    :cond_6
    move v1, v2

    goto/16 :goto_3

    :pswitch_4
    if-ne v2, v6, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 4582
    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->l(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_5
    if-ne v2, v6, :cond_f

    .line 4571
    invoke-direct {p0, v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    .line 4570
    invoke-static/range {p6 .. p12}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_6
    if-ne v2, v6, :cond_f

    const-wide/32 v1, 0x20000000

    and-long v1, p9, v1

    const-wide/16 v5, 0x0

    cmp-long v8, v1, v5

    if-nez v8, :cond_7

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 4561
    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->j(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_7
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 4563
    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->k(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_7
    if-ne v2, v6, :cond_8

    .line 4553
    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->g([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_8
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 4555
    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->g(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_8
    if-ne v2, v6, :cond_9

    .line 4545
    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_9
    if-ne v2, v5, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 4547
    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_9
    if-ne v2, v6, :cond_a

    .line 4535
    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_a
    if-ne v2, v12, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 4537
    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_a
    if-ne v2, v6, :cond_b

    .line 4525
    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto/16 :goto_3

    :cond_b
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 4527
    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :pswitch_b
    if-ne v2, v6, :cond_c

    .line 4515
    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :cond_c
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 4517
    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :pswitch_c
    if-ne v2, v6, :cond_d

    .line 4505
    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :cond_d
    if-ne v2, v5, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 4507
    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :pswitch_d
    if-ne v2, v6, :cond_e

    .line 4497
    invoke-static {p2, v4, v10, v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->f([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :cond_e
    if-ne v2, v12, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    .line 4499
    invoke-static/range {p5 .. p10}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->f(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_3

    :cond_f
    :goto_2
    move v1, v4

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;[BIIIJLcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4657
    sget-object v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    .line 4658
    invoke-direct {p0, p5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(I)Ljava/lang/Object;

    move-result-object p5

    .line 4659
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 4660
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v2, v1}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4662
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v2, p5}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4663
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v3, v2, v1}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4664
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    .line 4666
    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    .line 4670
    invoke-interface {p1, p5}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->e(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;

    move-result-object p1

    iget-object p5, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    .line 4671
    invoke-interface {p5, v1}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    .line 50761
    invoke-static {p2, p3, p8}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 50762
    iget p6, p8, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz p6, :cond_7

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_7

    add-int/2addr p6, p3

    .line 50767
    iget-object p7, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->d:Ljava/lang/Object;

    .line 50768
    iget-object v0, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->f:Ljava/lang/Object;

    :goto_0
    if-ge p3, p6, :cond_5

    add-int/lit8 v1, p3, 0x1

    .line 50770
    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    .line 50772
    invoke-static {p3, p2, v1, p8}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 50773
    iget p3, p8, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    :cond_1
    move v2, v1

    ushr-int/lit8 v1, p3, 0x3

    and-int/lit8 v3, p3, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_1

    .line 50787
    :cond_2
    iget-object v1, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->b()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 50788
    iget-object v4, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->e:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    iget-object p3, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->f:Ljava/lang/Object;

    .line 50794
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 50789
    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a([BIILcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 50796
    iget-object v0, p8, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_0

    .line 50779
    :cond_3
    iget-object v1, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->b()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 50780
    iget-object v4, p1, Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;->c:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 50781
    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a([BIILcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 50782
    iget-object p7, p8, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_0

    .line 50803
    :cond_4
    :goto_1
    invoke-static {p3, p2, v2, p4, p8}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto :goto_0

    :cond_5
    if-ne p3, p6, :cond_6

    .line 50808
    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    .line 50806
    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 50764
    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private static a([BIILcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4351
    sget-object v0, Lcom/uqm/crashsight/protobuf/MessageSchema$1;->a:[I

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    .line 4405
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4402
    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    goto/16 :goto_3

    .line 4398
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 4399
    iget-wide p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 4394
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 4395
    iget p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto/16 :goto_3

    .line 4391
    :pswitch_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object p3

    .line 4390
    invoke-static {p3, p0, p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    goto :goto_3

    .line 4385
    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 4386
    iget-wide p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_3

    .line 4380
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 4381
    iget p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_3

    .line 4374
    :pswitch_6
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_0

    .line 4370
    :pswitch_7
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_1

    .line 4365
    :pswitch_8
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    :goto_0
    add-int/lit8 p0, p1, 0x4

    goto :goto_3

    .line 4360
    :pswitch_9
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p1, 0x8

    goto :goto_3

    .line 4357
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    goto :goto_3

    .line 4353
    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 4354
    iget-wide p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Lcom/uqm/crashsight/protobuf/MessageInfo;Lcom/uqm/crashsight/protobuf/NewInstanceSchema;Lcom/uqm/crashsight/protobuf/ListFieldSchema;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MapFieldSchema;)Lcom/uqm/crashsight/protobuf/MessageSchema;
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/MessageInfo;",
            "Lcom/uqm/crashsight/protobuf/NewInstanceSchema;",
            "Lcom/uqm/crashsight/protobuf/ListFieldSchema;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/MapFieldSchema;",
            ")",
            "Lcom/uqm/crashsight/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 220
    instance-of v1, v0, Lcom/uqm/crashsight/protobuf/RawMessageInfo;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_34

    .line 221
    check-cast v0, Lcom/uqm/crashsight/protobuf/RawMessageInfo;

    .line 6247
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->a()Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    move-result-object v1

    sget-object v9, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->b:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    if-ne v1, v9, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 6249
    :goto_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->d()Ljava/lang/String;

    move-result-object v1

    .line 6250
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    .line 6253
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v12, 0xd800

    if-lt v10, v12, :cond_2

    and-int/lit16 v10, v10, 0x1fff

    const/4 v13, 0x1

    const/16 v14, 0xd

    :goto_1
    add-int/lit8 v15, v13, 0x1

    .line 6257
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v12, :cond_1

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v10, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_1

    :cond_1
    shl-int/2addr v13, v14

    or-int/2addr v10, v13

    goto :goto_2

    :cond_2
    const/4 v15, 0x1

    :goto_2
    add-int/lit8 v13, v15, 0x1

    .line 6265
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v12, :cond_4

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_3
    add-int/lit8 v17, v13, 0x1

    .line 6269
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v12, :cond_3

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v15

    or-int/2addr v14, v13

    add-int/lit8 v15, v15, 0xd

    move/from16 v13, v17

    goto :goto_3

    :cond_3
    shl-int/2addr v13, v15

    or-int/2addr v14, v13

    move/from16 v13, v17

    :cond_4
    if-nez v14, :cond_5

    .line 6296
    sget-object v14, Lcom/uqm/crashsight/protobuf/MessageSchema;->a:[I

    move-object v6, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_11

    :cond_5
    add-int/lit8 v14, v13, 0x1

    .line 6299
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v12, :cond_7

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_4
    add-int/lit8 v17, v14, 0x1

    .line 6303
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v12, :cond_6

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v17

    goto :goto_4

    :cond_6
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v17

    :cond_7
    add-int/lit8 v15, v14, 0x1

    .line 6311
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v12, :cond_9

    and-int/lit16 v14, v14, 0x1fff

    const/16 v17, 0xd

    :goto_5
    add-int/lit8 v18, v15, 0x1

    .line 6315
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v12, :cond_8

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int/2addr v14, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_5

    :cond_8
    shl-int v15, v15, v17

    or-int/2addr v14, v15

    move/from16 v15, v18

    :cond_9
    add-int/lit8 v17, v15, 0x1

    .line 6323
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v12, :cond_b

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v2, v17

    const/16 v17, 0xd

    :goto_6
    add-int/lit8 v19, v2, 0x1

    .line 6327
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v12, :cond_a

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v17

    or-int/2addr v15, v2

    add-int/lit8 v17, v17, 0xd

    move/from16 v2, v19

    goto :goto_6

    :cond_a
    shl-int v2, v2, v17

    or-int/2addr v15, v2

    move/from16 v2, v19

    goto :goto_7

    :cond_b
    move/from16 v2, v17

    :goto_7
    add-int/lit8 v17, v2, 0x1

    .line 6335
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v12, :cond_d

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v3, v17

    const/16 v17, 0xd

    :goto_8
    add-int/lit8 v20, v3, 0x1

    .line 6339
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v12, :cond_c

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v17

    or-int/2addr v2, v3

    add-int/lit8 v17, v17, 0xd

    move/from16 v3, v20

    goto :goto_8

    :cond_c
    shl-int v3, v3, v17

    or-int/2addr v2, v3

    move/from16 v3, v20

    goto :goto_9

    :cond_d
    move/from16 v3, v17

    :goto_9
    add-int/lit8 v17, v3, 0x1

    .line 6347
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v12, :cond_f

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v11, v17

    const/16 v17, 0xd

    :goto_a
    add-int/lit8 v20, v11, 0x1

    .line 6351
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v12, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v17

    or-int/2addr v3, v11

    add-int/lit8 v17, v17, 0xd

    move/from16 v11, v20

    goto :goto_a

    :cond_e
    shl-int v11, v11, v17

    or-int/2addr v3, v11

    move/from16 v11, v20

    goto :goto_b

    :cond_f
    move/from16 v11, v17

    :goto_b
    add-int/lit8 v17, v11, 0x1

    .line 6359
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v12, :cond_11

    and-int/lit16 v11, v11, 0x1fff

    move/from16 v7, v17

    const/16 v17, 0xd

    :goto_c
    add-int/lit8 v21, v7, 0x1

    .line 6363
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v12, :cond_10

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v17

    or-int/2addr v11, v7

    add-int/lit8 v17, v17, 0xd

    move/from16 v7, v21

    goto :goto_c

    :cond_10
    shl-int v7, v7, v17

    or-int/2addr v11, v7

    move/from16 v7, v21

    goto :goto_d

    :cond_11
    move/from16 v7, v17

    :goto_d
    add-int/lit8 v17, v7, 0x1

    .line 6371
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v12, :cond_13

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v5, v17

    const/16 v17, 0xd

    :goto_e
    add-int/lit8 v22, v5, 0x1

    .line 6375
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v12, :cond_12

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v17

    or-int/2addr v7, v5

    add-int/lit8 v17, v17, 0xd

    move/from16 v5, v22

    goto :goto_e

    :cond_12
    shl-int v5, v5, v17

    or-int/2addr v7, v5

    move/from16 v5, v22

    goto :goto_f

    :cond_13
    move/from16 v5, v17

    :goto_f
    add-int/lit8 v17, v5, 0x1

    .line 6383
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v12, :cond_15

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v6, v17

    const/16 v17, 0xd

    :goto_10
    add-int/lit8 v23, v6, 0x1

    .line 6387
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v12, :cond_14

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v17

    or-int/2addr v5, v6

    add-int/lit8 v17, v17, 0xd

    move/from16 v6, v23

    goto :goto_10

    :cond_14
    shl-int v6, v6, v17

    or-int/2addr v5, v6

    move/from16 v17, v23

    :cond_15
    add-int v6, v5, v11

    add-int/2addr v6, v7

    .line 6394
    new-array v6, v6, [I

    shl-int/lit8 v7, v13, 0x1

    add-int/2addr v7, v14

    move v14, v2

    move v2, v7

    move v7, v13

    move/from16 v13, v17

    .line 6399
    :goto_11
    sget-object v4, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    .line 6400
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->e()[Ljava/lang/Object;

    move-result-object v23

    .line 6402
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->c()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move/from16 v24, v2

    mul-int/lit8 v2, v3, 0x3

    .line 6403
    new-array v2, v2, [I

    shl-int/2addr v3, v8

    .line 6404
    new-array v3, v3, [Ljava/lang/Object;

    add-int v26, v5, v11

    move/from16 v28, v5

    move/from16 v29, v26

    const/4 v11, 0x0

    const/16 v27, 0x0

    :goto_12
    if-ge v13, v9, :cond_33

    add-int/lit8 v30, v13, 0x1

    .line 6415
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const v8, 0xd800

    if-lt v13, v8, :cond_17

    and-int/lit16 v13, v13, 0x1fff

    move/from16 v8, v30

    const/16 v30, 0xd

    :goto_13
    add-int/lit8 v32, v8, 0x1

    .line 6419
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v33, v9

    const v9, 0xd800

    if-lt v8, v9, :cond_16

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v30

    or-int/2addr v13, v8

    add-int/lit8 v30, v30, 0xd

    move/from16 v8, v32

    move/from16 v9, v33

    goto :goto_13

    :cond_16
    shl-int v8, v8, v30

    or-int/2addr v13, v8

    move/from16 v8, v32

    goto :goto_14

    :cond_17
    move/from16 v33, v9

    move/from16 v8, v30

    :goto_14
    add-int/lit8 v9, v8, 0x1

    .line 6427
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v30, v9

    const v9, 0xd800

    if-lt v8, v9, :cond_19

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v9, v30

    const/16 v30, 0xd

    :goto_15
    add-int/lit8 v32, v9, 0x1

    .line 6431
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v34, v5

    const v5, 0xd800

    if-lt v9, v5, :cond_18

    and-int/lit16 v5, v9, 0x1fff

    shl-int v5, v5, v30

    or-int/2addr v8, v5

    add-int/lit8 v30, v30, 0xd

    move/from16 v9, v32

    move/from16 v5, v34

    goto :goto_15

    :cond_18
    shl-int v5, v9, v30

    or-int/2addr v8, v5

    move/from16 v9, v32

    goto :goto_16

    :cond_19
    move/from16 v34, v5

    move/from16 v9, v30

    :goto_16
    and-int/lit16 v5, v8, 0xff

    move/from16 v30, v14

    and-int/lit16 v14, v8, 0x400

    if-eqz v14, :cond_1a

    add-int/lit8 v14, v11, 0x1

    .line 6441
    aput v27, v6, v11

    move v11, v14

    :cond_1a
    const/16 v14, 0x33

    if-lt v5, v14, :cond_22

    add-int/lit8 v14, v9, 0x1

    .line 6450
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v37, v11

    const v11, 0xd800

    if-lt v9, v11, :cond_1c

    and-int/lit16 v9, v9, 0x1fff

    const/16 v38, 0xd

    :goto_17
    add-int/lit8 v39, v14, 0x1

    .line 6454
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v11, :cond_1b

    and-int/lit16 v11, v14, 0x1fff

    shl-int v11, v11, v38

    or-int/2addr v9, v11

    add-int/lit8 v38, v38, 0xd

    move/from16 v14, v39

    const v11, 0xd800

    goto :goto_17

    :cond_1b
    shl-int v11, v14, v38

    or-int/2addr v9, v11

    move/from16 v14, v39

    :cond_1c
    add-int/lit8 v11, v5, -0x33

    move/from16 v38, v14

    const/16 v14, 0x9

    if-eq v11, v14, :cond_1f

    const/16 v14, 0x11

    if-ne v11, v14, :cond_1d

    goto :goto_18

    :cond_1d
    const/16 v14, 0xc

    if-ne v11, v14, :cond_1e

    and-int/lit8 v11, v10, 0x1

    const/4 v14, 0x1

    if-ne v11, v14, :cond_1e

    .line 6469
    div-int/lit8 v11, v27, 0x3

    shl-int/2addr v11, v14

    add-int/2addr v11, v14

    add-int/lit8 v14, v24, 0x1

    aget-object v24, v23, v24

    aput-object v24, v3, v11

    move/from16 v24, v14

    :cond_1e
    const/4 v14, 0x1

    goto :goto_19

    .line 6465
    :cond_1f
    :goto_18
    div-int/lit8 v11, v27, 0x3

    const/4 v14, 0x1

    shl-int/2addr v11, v14

    add-int/2addr v11, v14

    add-int/lit8 v31, v24, 0x1

    aget-object v24, v23, v24

    aput-object v24, v3, v11

    move/from16 v24, v31

    :goto_19
    shl-int/2addr v9, v14

    .line 6475
    aget-object v11, v23, v9

    .line 6476
    instance-of v14, v11, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_20

    .line 6477
    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_1a

    .line 6479
    :cond_20
    check-cast v11, Ljava/lang/String;

    invoke-static {v12, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 6484
    aput-object v11, v23, v9

    :goto_1a
    move/from16 v39, v15

    .line 6487
    invoke-virtual {v4, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v11, v14

    add-int/lit8 v9, v9, 0x1

    .line 6491
    aget-object v14, v23, v9

    .line 6492
    instance-of v15, v14, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_21

    .line 6493
    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_1b

    .line 6495
    :cond_21
    check-cast v14, Ljava/lang/String;

    invoke-static {v12, v14}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 6496
    aput-object v14, v23, v9

    .line 6499
    :goto_1b
    invoke-virtual {v4, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v9, v14

    move-object/from16 v32, v0

    move-object/from16 v25, v1

    move/from16 v1, v24

    const/4 v0, 0x0

    goto/16 :goto_26

    :cond_22
    move/from16 v37, v11

    move/from16 v39, v15

    add-int/lit8 v11, v24, 0x1

    .line 6502
    aget-object v14, v23, v24

    check-cast v14, Ljava/lang/String;

    invoke-static {v12, v14}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    const/16 v15, 0x9

    if-eq v5, v15, :cond_2a

    const/16 v15, 0x11

    if-ne v5, v15, :cond_23

    goto/16 :goto_20

    :cond_23
    const/16 v15, 0x1b

    if-eq v5, v15, :cond_29

    const/16 v15, 0x31

    if-ne v5, v15, :cond_24

    goto :goto_1e

    :cond_24
    const/16 v15, 0xc

    if-eq v5, v15, :cond_28

    const/16 v15, 0x1e

    if-eq v5, v15, :cond_28

    const/16 v15, 0x2c

    if-ne v5, v15, :cond_25

    goto :goto_1d

    :cond_25
    const/16 v15, 0x32

    if-ne v5, v15, :cond_27

    add-int/lit8 v15, v28, 0x1

    .line 6515
    aput v27, v6, v28

    .line 6516
    div-int/lit8 v28, v27, 0x3

    const/16 v31, 0x1

    shl-int/lit8 v28, v28, 0x1

    add-int/lit8 v32, v24, 0x2

    aget-object v11, v23, v11

    aput-object v11, v3, v28

    and-int/lit16 v11, v8, 0x800

    if-eqz v11, :cond_26

    add-int/lit8 v28, v28, 0x1

    add-int/lit8 v11, v24, 0x3

    .line 6518
    aget-object v24, v23, v32

    aput-object v24, v3, v28

    move-object/from16 v32, v0

    move/from16 v28, v15

    goto :goto_1c

    :cond_26
    move/from16 v28, v15

    move/from16 v11, v32

    :cond_27
    move-object/from16 v32, v0

    :goto_1c
    const/4 v0, 0x1

    goto :goto_21

    :cond_28
    :goto_1d
    and-int/lit8 v15, v10, 0x1

    move-object/from16 v32, v0

    const/4 v0, 0x1

    if-ne v15, v0, :cond_2b

    .line 6512
    div-int/lit8 v15, v27, 0x3

    shl-int/2addr v15, v0

    add-int/2addr v15, v0

    add-int/lit8 v24, v24, 0x2

    aget-object v11, v23, v11

    aput-object v11, v3, v15

    goto :goto_1f

    :cond_29
    :goto_1e
    move-object/from16 v32, v0

    const/4 v0, 0x1

    .line 6507
    div-int/lit8 v15, v27, 0x3

    shl-int/2addr v15, v0

    add-int/2addr v15, v0

    add-int/lit8 v24, v24, 0x2

    aget-object v11, v23, v11

    aput-object v11, v3, v15

    :goto_1f
    move/from16 v11, v24

    goto :goto_21

    :cond_2a
    :goto_20
    move-object/from16 v32, v0

    const/4 v0, 0x1

    .line 6504
    div-int/lit8 v15, v27, 0x3

    shl-int/2addr v15, v0

    add-int/2addr v15, v0

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v3, v15

    .line 6522
    :cond_2b
    :goto_21
    invoke-virtual {v4, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v15, v14

    and-int/lit8 v14, v10, 0x1

    if-ne v14, v0, :cond_2f

    const/16 v0, 0x11

    if-gt v5, v0, :cond_2f

    add-int/lit8 v0, v9, 0x1

    .line 6524
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v14, 0xd800

    if-lt v9, v14, :cond_2d

    and-int/lit16 v9, v9, 0x1fff

    const/16 v24, 0xd

    :goto_22
    add-int/lit8 v25, v0, 0x1

    .line 6528
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v14, :cond_2c

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v24

    or-int/2addr v9, v0

    add-int/lit8 v24, v24, 0xd

    move/from16 v0, v25

    goto :goto_22

    :cond_2c
    shl-int v0, v0, v24

    or-int/2addr v9, v0

    move/from16 v0, v25

    :cond_2d
    const/16 v24, 0x1

    shl-int/lit8 v25, v7, 0x1

    .line 6537
    div-int/lit8 v24, v9, 0x20

    add-int v25, v25, v24

    .line 6538
    aget-object v14, v23, v25

    move/from16 v35, v0

    .line 6539
    instance-of v0, v14, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2e

    .line 6540
    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_23

    .line 6542
    :cond_2e
    check-cast v14, Ljava/lang/String;

    invoke-static {v12, v14}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 6543
    aput-object v14, v23, v25

    :goto_23
    move-object/from16 v25, v1

    .line 6546
    invoke-virtual {v4, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 6547
    rem-int/lit8 v0, v9, 0x20

    move/from16 v9, v35

    goto :goto_24

    :cond_2f
    move-object/from16 v25, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_24
    const/16 v14, 0x12

    if-lt v5, v14, :cond_30

    const/16 v14, 0x31

    if-gt v5, v14, :cond_30

    add-int/lit8 v14, v29, 0x1

    .line 6556
    aput v15, v6, v29

    move/from16 v38, v9

    move/from16 v29, v14

    goto :goto_25

    :cond_30
    move/from16 v38, v9

    :goto_25
    move v9, v1

    move v1, v11

    move v11, v15

    :goto_26
    add-int/lit8 v14, v27, 0x1

    .line 6560
    aput v13, v2, v27

    add-int/lit8 v13, v27, 0x2

    and-int/lit16 v15, v8, 0x200

    if-eqz v15, :cond_31

    const/high16 v15, 0x20000000

    goto :goto_27

    :cond_31
    const/4 v15, 0x0

    :goto_27
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_32

    const/high16 v8, 0x10000000

    goto :goto_28

    :cond_32
    const/4 v8, 0x0

    :goto_28
    or-int/2addr v8, v15

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v5, v8

    or-int/2addr v5, v11

    .line 6561
    aput v5, v2, v14

    add-int/lit8 v27, v27, 0x3

    shl-int/lit8 v0, v0, 0x14

    or-int/2addr v0, v9

    .line 6566
    aput v0, v2, v13

    move/from16 v24, v1

    move-object/from16 v1, v25

    move/from16 v14, v30

    move-object/from16 v0, v32

    move/from16 v9, v33

    move/from16 v5, v34

    move/from16 v11, v37

    move/from16 v13, v38

    move/from16 v15, v39

    const/4 v8, 0x1

    goto/16 :goto_12

    :cond_33
    move-object/from16 v32, v0

    move/from16 v34, v5

    move/from16 v30, v14

    move/from16 v39, v15

    .line 6569
    new-instance v0, Lcom/uqm/crashsight/protobuf/MessageSchema;

    .line 6574
    invoke-virtual/range {v32 .. v32}, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->c()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v15

    const/16 v17, 0x0

    move-object v10, v0

    move-object v11, v2

    move-object v12, v3

    move/from16 v13, v39

    move-object/from16 v18, v6

    move/from16 v19, v34

    move/from16 v20, v26

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move-object/from16 v24, p4

    move-object/from16 v25, p5

    invoke-direct/range {v10 .. v25}, Lcom/uqm/crashsight/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/uqm/crashsight/protobuf/MessageLite;ZZ[IIILcom/uqm/crashsight/protobuf/NewInstanceSchema;Lcom/uqm/crashsight/protobuf/ListFieldSchema;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MapFieldSchema;)V

    return-object v0

    .line 230
    :cond_34
    check-cast v0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;

    .line 6619
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->a()Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    move-result-object v1

    sget-object v2, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->b:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    if-ne v1, v2, :cond_35

    const/16 v38, 0x1

    goto :goto_29

    :cond_35
    const/16 v38, 0x0

    .line 6620
    :goto_29
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->e()[Lcom/uqm/crashsight/protobuf/FieldInfo;

    move-result-object v1

    .line 6623
    array-length v2, v1

    if-nez v2, :cond_36

    const/4 v4, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    goto :goto_2a

    :cond_36
    const/4 v2, 0x0

    .line 6627
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a()I

    move-result v2

    .line 6628
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a()I

    move-result v3

    move/from16 v35, v2

    move/from16 v36, v3

    .line 6631
    :goto_2a
    array-length v2, v1

    mul-int/lit8 v3, v2, 0x3

    .line 6633
    new-array v3, v3, [I

    shl-int/2addr v2, v4

    .line 6634
    new-array v2, v2, [Ljava/lang/Object;

    .line 6638
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2b
    if-ge v5, v4, :cond_39

    aget-object v8, v1, v5

    .line 6639
    invoke-virtual {v8}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v9

    sget-object v10, Lcom/uqm/crashsight/protobuf/FieldType;->Y:Lcom/uqm/crashsight/protobuf/FieldType;

    if-ne v9, v10, :cond_37

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 6641
    :cond_37
    invoke-virtual {v8}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v9

    const/16 v10, 0x12

    if-lt v9, v10, :cond_38

    invoke-virtual {v8}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v8

    const/16 v9, 0x31

    if-gt v8, v9, :cond_38

    add-int/lit8 v7, v7, 0x1

    :cond_38
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_39
    const/4 v4, 0x0

    if-lez v6, :cond_3a

    .line 6647
    new-array v5, v6, [I

    goto :goto_2d

    :cond_3a
    move-object v5, v4

    :goto_2d
    if-lez v7, :cond_3b

    .line 6648
    new-array v4, v7, [I

    .line 6652
    :cond_3b
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->d()[I

    move-result-object v6

    if-nez v6, :cond_3c

    .line 6654
    sget-object v6, Lcom/uqm/crashsight/protobuf/MessageSchema;->a:[I

    :cond_3c
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 6659
    :goto_2e
    array-length v12, v1

    if-ge v7, v12, :cond_4a

    .line 6660
    aget-object v12, v1, v7

    .line 6661
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a()I

    move-result v13

    .line 6728
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->d()Lcom/uqm/crashsight/protobuf/OneofInfo;

    move-result-object v14

    if-eqz v14, :cond_3d

    .line 6730
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v15

    const/16 v16, 0x33

    add-int/lit8 v15, v15, 0x33

    .line 6731
    invoke-virtual {v14}, Lcom/uqm/crashsight/protobuf/OneofInfo;->b()Ljava/lang/reflect/Field;

    move-result-object v17

    move-object/from16 p0, v0

    move-object/from16 v23, v1

    invoke-static/range {v17 .. v17}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 6732
    invoke-virtual {v14}, Lcom/uqm/crashsight/protobuf/OneofInfo;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    move v14, v1

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    :goto_2f
    long-to-int v1, v0

    const/4 v0, 0x0

    :goto_30
    move/from16 v48, v14

    move v14, v1

    move/from16 v1, v48

    goto :goto_31

    :cond_3d
    move-object/from16 p0, v0

    move-object/from16 v23, v1

    const/16 v16, 0x33

    .line 6735
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v0

    .line 6736
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->b()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v1, v14

    .line 6737
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v15

    if-nez v38, :cond_3e

    .line 6738
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldType;->d()Z

    move-result v14

    if-nez v14, :cond_3e

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldType;->e()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 6739
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->f()Ljava/lang/reflect/Field;

    move-result-object v0

    move v14, v1

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 6740
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    goto :goto_30

    :cond_3e
    move v14, v1

    .line 6742
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->k()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_3f

    move v1, v14

    const/4 v0, 0x0

    const/4 v14, 0x0

    goto :goto_31

    .line 6746
    :cond_3f
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->k()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_2f

    .line 6752
    :goto_31
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->a()I

    move-result v17

    aput v17, v3, v8

    add-int/lit8 v17, v8, 0x1

    .line 6754
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->j()Z

    move-result v24

    if-eqz v24, :cond_40

    const/high16 v24, 0x20000000

    goto :goto_32

    :cond_40
    const/16 v24, 0x0

    .line 6755
    :goto_32
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->i()Z

    move-result v25

    if-eqz v25, :cond_41

    const/high16 v25, 0x10000000

    goto :goto_33

    :cond_41
    const/16 v25, 0x0

    :goto_33
    or-int v24, v24, v25

    shl-int/lit8 v15, v15, 0x14

    or-int v15, v24, v15

    or-int/2addr v1, v15

    aput v1, v3, v17

    add-int/lit8 v1, v8, 0x2

    shl-int/lit8 v0, v0, 0x14

    or-int/2addr v0, v14

    .line 6758
    aput v0, v3, v1

    .line 6760
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->l()Ljava/lang/Class;

    move-result-object v0

    .line 6761
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->g()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 6762
    div-int/lit8 v1, v8, 0x3

    const/4 v14, 0x1

    shl-int/2addr v1, v14

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->g()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v2, v1

    if-eqz v0, :cond_42

    add-int/lit8 v1, v1, 0x1

    .line 6764
    aput-object v0, v2, v1

    goto :goto_34

    .line 6765
    :cond_42
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->e()Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v0

    if-eqz v0, :cond_43

    add-int/lit8 v1, v1, 0x1

    .line 6766
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->e()Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v0

    aput-object v0, v2, v1

    :cond_43
    :goto_34
    const/4 v14, 0x1

    goto :goto_35

    :cond_44
    if-eqz v0, :cond_45

    .line 6770
    div-int/lit8 v1, v8, 0x3

    const/4 v14, 0x1

    shl-int/2addr v1, v14

    add-int/2addr v1, v14

    aput-object v0, v2, v1

    goto :goto_35

    :cond_45
    const/4 v14, 0x1

    .line 6771
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->e()Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 6772
    div-int/lit8 v0, v8, 0x3

    shl-int/2addr v0, v14

    add-int/2addr v0, v14

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->e()Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v1

    aput-object v1, v2, v0

    .line 6668
    :cond_46
    :goto_35
    array-length v0, v6

    if-ge v9, v0, :cond_47

    aget v0, v6, v9

    if-ne v0, v13, :cond_47

    add-int/lit8 v0, v9, 0x1

    .line 6670
    aput v8, v6, v9

    move v9, v0

    .line 6673
    :cond_47
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/FieldType;->Y:Lcom/uqm/crashsight/protobuf/FieldType;

    if-ne v0, v1, :cond_48

    add-int/lit8 v0, v10, 0x1

    .line 6674
    aput v8, v5, v10

    move v10, v0

    const/16 v1, 0x12

    goto :goto_36

    .line 6675
    :cond_48
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_49

    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->c()Lcom/uqm/crashsight/protobuf/FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v0

    const/16 v13, 0x31

    if-gt v0, v13, :cond_49

    add-int/lit8 v0, v11, 0x1

    .line 6679
    invoke-virtual {v12}, Lcom/uqm/crashsight/protobuf/FieldInfo;->b()Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-static {v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v12, v13

    aput v12, v4, v11

    move v11, v0

    :cond_49
    :goto_36
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    goto/16 :goto_2e

    :cond_4a
    move-object/from16 p0, v0

    if-nez v5, :cond_4b

    .line 6686
    sget-object v5, Lcom/uqm/crashsight/protobuf/MessageSchema;->a:[I

    :cond_4b
    if-nez v4, :cond_4c

    .line 6689
    sget-object v4, Lcom/uqm/crashsight/protobuf/MessageSchema;->a:[I

    .line 6691
    :cond_4c
    array-length v0, v6

    array-length v1, v5

    add-int/2addr v0, v1

    array-length v1, v4

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 6693
    array-length v1, v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6694
    array-length v1, v6

    array-length v8, v5

    invoke-static {v5, v7, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6696
    array-length v1, v6

    array-length v8, v5

    add-int/2addr v1, v8

    array-length v8, v4

    invoke-static {v4, v7, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6703
    new-instance v1, Lcom/uqm/crashsight/protobuf/MessageSchema;

    .line 6708
    invoke-virtual/range {p0 .. p0}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->c()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v37

    array-length v4, v6

    array-length v6, v6

    array-length v5, v5

    add-int v42, v6, v5

    const/16 v39, 0x1

    move-object/from16 v32, v1

    move-object/from16 v33, v3

    move-object/from16 v34, v2

    move-object/from16 v40, v0

    move/from16 v41, v4

    move-object/from16 v43, p1

    move-object/from16 v44, p2

    move-object/from16 v45, p3

    move-object/from16 v46, p4

    move-object/from16 v47, p5

    invoke-direct/range {v32 .. v47}, Lcom/uqm/crashsight/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/uqm/crashsight/protobuf/MessageLite;ZZ[IIILcom/uqm/crashsight/protobuf/NewInstanceSchema;Lcom/uqm/crashsight/protobuf/ListFieldSchema;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Lcom/uqm/crashsight/protobuf/MapFieldSchema;)V

    return-object v1
.end method

.method private a(I)Lcom/uqm/crashsight/protobuf/Schema;
    .locals 3

    .line 4842
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 4843
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/Schema;

    if-eqz v0, :cond_0

    return-object v0

    .line 4847
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    .line 4848
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final a(IILjava/util/Map;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 5478
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    .line 5479
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->e(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;

    move-result-object p1

    .line 5480
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5481
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5482
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    .line 5484
    invoke-virtual {p6}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a()Ljava/lang/Object;

    move-result-object p5

    .line 5487
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/MapEntryLite;->a(Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 5488
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c(I)Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;

    move-result-object v1

    .line 5489
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;->b()Lcom/uqm/crashsight/protobuf/CodedOutputStream;

    move-result-object v2

    .line 5491
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/uqm/crashsight/protobuf/MapEntryLite;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5496
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;->a()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/ByteString;)V

    .line 5497
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5494
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method private final a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 51024
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget v3, v0, p2

    .line 5453
    invoke-direct {p0, p2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 5454
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 5458
    :cond_0
    invoke-direct {p0, p2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(I)Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-nez v5, :cond_1

    return-object p3

    .line 5462
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 5465
    invoke-direct/range {v1 .. v7}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(IILjava/util/Map;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 589
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 593
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 594
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 595
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 2520
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/uqm/crashsight/protobuf/Reader;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    move-object v8, v1

    .line 3862
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->b()I

    move-result v2

    .line 3863
    invoke-direct {p0, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->h(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v3, :cond_c

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_3

    .line 4322
    iget p2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_1
    iget p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge p2, p4, :cond_1

    .line 4323
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget p4, p4, p2

    .line 4324
    invoke-direct {p0, p3, p4, v8, p1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    .line 4327
    invoke-virtual {p1, p3, v8}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 3869
    :cond_3
    :try_start_1
    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    if-nez v3, :cond_4

    move-object v3, v0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->g:Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 3872
    invoke-virtual {p2, p5, v3, v2}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_6

    if-nez v1, :cond_5

    .line 3876
    invoke-virtual {p2, p3}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v1

    :cond_5
    move-object v9, v1

    move-object v1, p2

    move-object v2, p4

    move-object v4, p5

    move-object v5, v9

    move-object v6, v8

    move-object v7, p1

    .line 3879
    invoke-virtual/range {v1 .. v7}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Lcom/uqm/crashsight/protobuf/Reader;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/FieldSet;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v9

    goto :goto_0

    .line 3888
    :cond_6
    invoke-virtual {p1, p4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Lcom/uqm/crashsight/protobuf/Reader;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3889
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->d()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_7
    if-nez v8, :cond_8

    .line 3894
    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 3897
    :cond_8
    invoke-virtual {p1, v8, p4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 4322
    :cond_9
    iget p2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_3
    iget p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge p2, p4, :cond_a

    .line 4323
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget p4, p4, p2

    .line 4324
    invoke-direct {p0, p3, p4, v8, p1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_a
    if-eqz v8, :cond_b

    .line 4327
    invoke-virtual {p1, p3, v8}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    return-void

    .line 3904
    :cond_c
    :try_start_2
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(I)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3907
    :try_start_3
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->f(I)I

    move-result v5

    const v6, 0xfffff

    packed-switch v5, :pswitch_data_0

    if-nez v8, :cond_17

    .line 4297
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a()Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_9

    :pswitch_0
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4291
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v6

    invoke-interface {p4, v6, p5}, Lcom/uqm/crashsight/protobuf/Reader;->b(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v6

    .line 4288
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4292
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4284
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->u()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 4283
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4285
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4279
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->t()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4278
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4280
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4274
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->s()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 4273
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4275
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4269
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->r()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4268
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4270
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4255
    :pswitch_5
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->q()I

    move-result v5

    .line 4256
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(I)Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 4257
    invoke-interface {v7, v5}, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;->a(I)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_4

    .line 4262
    :cond_d
    invoke-static {v2, v5, v8, p1}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(IILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_7

    :cond_e
    :goto_4
    and-int/2addr v4, v6

    int-to-long v6, v4

    .line 4258
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3, v6, v7, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4259
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_6
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4250
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->p()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4249
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4251
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4245
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v6

    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4246
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4227
    :pswitch_8
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_f

    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4230
    invoke-static {p3, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 4232
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v7

    .line 4231
    invoke-interface {p4, v7, p5}, Lcom/uqm/crashsight/protobuf/Reader;->a(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v7

    .line 4229
    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 4233
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_f
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4239
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v6

    .line 4238
    invoke-interface {p4, v6, p5}, Lcom/uqm/crashsight/protobuf/Reader;->a(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v6

    .line 4235
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4240
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    .line 4242
    :goto_5
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4223
    :pswitch_9
    invoke-direct {p0, p3, v4, p4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/Reader;)V

    .line 4224
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4219
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->l()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 4218
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4220
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4214
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->k()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4213
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4215
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4209
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 4208
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4210
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4204
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4203
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4205
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4199
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 4198
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4200
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4194
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 4193
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4195
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4189
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->f()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 4188
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4190
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 4184
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->e()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 4183
    invoke-static {p3, v4, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4185
    invoke-direct {p0, p3, v2, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 4180
    :pswitch_12
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(I)Ljava/lang/Object;

    move-result-object v2

    .line 50721
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(I)I

    move-result v3

    and-int/2addr v3, v6

    int-to-long v3, v3

    .line 50722
    invoke-static {p3, v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_10

    .line 50728
    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v5, v2}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 50729
    invoke-static {p3, v3, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    .line 50730
    :cond_10
    iget-object v6, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v6, v5}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 50732
    iget-object v6, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v6, v2}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 50733
    iget-object v7, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v7, v6, v5}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50734
    invoke-static {p3, v3, v4, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v6

    .line 50736
    :cond_11
    :goto_6
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    .line 50737
    invoke-interface {v3, v5}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    .line 50738
    invoke-interface {v4, v2}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->e(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;

    move-result-object v2

    .line 50736
    invoke-interface {p4, v3, v2, p5}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/util/Map;Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    :pswitch_13
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 4175
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v2

    .line 50718
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    .line 50719
    invoke-virtual {v3, p3, v4, v5}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 50718
    invoke-interface {p4, v3, v2, p5}, Lcom/uqm/crashsight/protobuf/Reader;->b(Ljava/util/List;Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 4166
    :pswitch_14
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4167
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4166
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4162
    :pswitch_15
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4163
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4162
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->p(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4158
    :pswitch_16
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4159
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4158
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4154
    :pswitch_17
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4155
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4154
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4141
    :pswitch_18
    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int/2addr v4, v6

    int-to-long v6, v4

    .line 4142
    invoke-virtual {v5, p3, v6, v7}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 4143
    invoke-interface {p4, v4}, Lcom/uqm/crashsight/protobuf/Reader;->m(Ljava/util/List;)V

    .line 4148
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(I)Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 4145
    invoke-static {v2, v4, v3, v8, p1}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_7

    .line 4136
    :pswitch_19
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4137
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4136
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4132
    :pswitch_1a
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4133
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4132
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->h(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4128
    :pswitch_1b
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4129
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4128
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4124
    :pswitch_1c
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4125
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4124
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->f(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4120
    :pswitch_1d
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4121
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4120
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4116
    :pswitch_1e
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4117
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4116
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4112
    :pswitch_1f
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4113
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4112
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4108
    :pswitch_20
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4109
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4108
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4104
    :pswitch_21
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4105
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4104
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4100
    :pswitch_22
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4101
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4100
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4096
    :pswitch_23
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4097
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4096
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->p(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4092
    :pswitch_24
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4093
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4092
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4088
    :pswitch_25
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4089
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4088
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4075
    :pswitch_26
    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int/2addr v4, v6

    int-to-long v6, v4

    .line 4076
    invoke-virtual {v5, p3, v6, v7}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 4077
    invoke-interface {p4, v4}, Lcom/uqm/crashsight/protobuf/Reader;->m(Ljava/util/List;)V

    .line 4082
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(I)Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 4079
    invoke-static {v2, v4, v3, v8, p1}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    :goto_7
    move-object v8, v2

    goto/16 :goto_0

    .line 4070
    :pswitch_27
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4071
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4070
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4066
    :pswitch_28
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4067
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4066
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->k(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4061
    :pswitch_29
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v2

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 46659
    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    .line 46660
    invoke-virtual {v5, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 46659
    invoke-interface {p4, v3, v2, p5}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/util/List;Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 44643
    :pswitch_2a
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->g(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 44644
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 44645
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 44644
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->j(Ljava/util/List;)V

    goto/16 :goto_0

    .line 44647
    :cond_12
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->i(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4049
    :pswitch_2b
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4050
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4049
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->h(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4045
    :pswitch_2c
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4046
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4045
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4041
    :pswitch_2d
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4042
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4041
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->f(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4037
    :pswitch_2e
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4038
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4037
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4033
    :pswitch_2f
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4034
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4033
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4029
    :pswitch_30
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4030
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4029
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4025
    :pswitch_31
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4026
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4025
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4021
    :pswitch_32
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    and-int v3, v4, v6

    int-to-long v3, v3

    .line 4022
    invoke-virtual {v2, p3, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4021
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4003
    :pswitch_33
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_13

    and-int v2, v4, v6

    int-to-long v4, v2

    .line 4006
    invoke-static {p3, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4008
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v3

    .line 4007
    invoke-interface {p4, v3, p5}, Lcom/uqm/crashsight/protobuf/Reader;->b(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 4005
    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4009
    invoke-static {p3, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 4015
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v2

    .line 4014
    invoke-interface {p4, v2, p5}, Lcom/uqm/crashsight/protobuf/Reader;->b(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 4011
    invoke-static {p3, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4016
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3998
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->u()J

    move-result-wide v6

    invoke-static {p3, v4, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    .line 3999
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3994
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->t()I

    move-result v2

    invoke-static {p3, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    .line 3995
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3990
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->s()J

    move-result-wide v6

    invoke-static {p3, v4, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    .line 3991
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3986
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->r()I

    move-result v2

    invoke-static {p3, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    .line 3987
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3973
    :pswitch_38
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->q()I

    move-result v5

    .line 3974
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(I)Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v7

    if-eqz v7, :cond_15

    .line 3975
    invoke-interface {v7, v5}, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;->a(I)Z

    move-result v7

    if-eqz v7, :cond_14

    goto :goto_8

    .line 3980
    :cond_14
    invoke-static {v2, v5, v8, p1}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(IILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_7

    :cond_15
    :goto_8
    and-int v2, v4, v6

    int-to-long v6, v2

    .line 3976
    invoke-static {p3, v6, v7, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    .line 3977
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3968
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->p()I

    move-result v2

    invoke-static {p3, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    .line 3969
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3964
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v2

    invoke-static {p3, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3965
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3946
    :pswitch_3b
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_16

    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3949
    invoke-static {p3, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 3951
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v3

    .line 3950
    invoke-interface {p4, v3, p5}, Lcom/uqm/crashsight/protobuf/Reader;->a(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 3948
    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3952
    invoke-static {p3, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_16
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3958
    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v2

    .line 3957
    invoke-interface {p4, v2, p5}, Lcom/uqm/crashsight/protobuf/Reader;->a(Lcom/uqm/crashsight/protobuf/Schema;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 3954
    invoke-static {p3, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3959
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3941
    :pswitch_3c
    invoke-direct {p0, p3, v4, p4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/Reader;)V

    .line 3942
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3937
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->l()Z

    move-result v2

    invoke-static {p3, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JZ)V

    .line 3938
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3933
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->k()I

    move-result v2

    invoke-static {p3, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    .line 3934
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3929
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->j()J

    move-result-wide v6

    invoke-static {p3, v4, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    .line 3930
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3925
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->i()I

    move-result v2

    invoke-static {p3, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    .line 3926
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3921
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->g()J

    move-result-wide v6

    invoke-static {p3, v4, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    .line 3922
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3917
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->h()J

    move-result-wide v6

    invoke-static {p3, v4, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    .line 3918
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3913
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->f()F

    move-result v2

    invoke-static {p3, v4, v5, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JF)V

    .line 3914
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v2, v4, v6

    int-to-long v4, v2

    .line 3909
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->e()D

    move-result-wide v6

    invoke-static {p3, v4, v5, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JD)V

    .line 3910
    invoke-direct {p0, p3, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 4299
    :cond_17
    :goto_9
    invoke-virtual {p1, v8, p4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;)Z

    move-result v2
    :try_end_3
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_0

    .line 4322
    iget p2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_a
    iget p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge p2, p4, :cond_18

    .line 4323
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget p4, p4, p2

    .line 4324
    invoke-direct {p0, p3, p4, v8, p1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_18
    if-eqz v8, :cond_19

    .line 4327
    invoke-virtual {p1, p3, v8}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    return-void

    .line 4307
    :catch_0
    :try_start_4
    invoke-virtual {p1, p4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Lcom/uqm/crashsight/protobuf/Reader;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4308
    invoke-interface {p4}, Lcom/uqm/crashsight/protobuf/Reader;->d()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_0

    .line 4322
    iget p2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_b
    iget p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge p2, p4, :cond_1a

    .line 4323
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget p4, p4, p2

    .line 4324
    invoke-direct {p0, p3, p4, v8, p1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_1a
    if-eqz v8, :cond_1b

    .line 4327
    invoke-virtual {p1, p3, v8}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    return-void

    :cond_1c
    if-nez v8, :cond_1d

    .line 4313
    :try_start_5
    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    .line 4315
    :cond_1d
    invoke-virtual {p1, v8, p4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_0

    .line 4322
    iget p2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_c
    iget p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge p2, p4, :cond_1e

    .line 4323
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget p4, p4, p2

    .line 4324
    invoke-direct {p0, p3, p4, v8, p1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_1e
    if-eqz v8, :cond_1f

    .line 4327
    invoke-virtual {p1, p3, v8}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    return-void

    :catchall_0
    move-exception p2

    .line 4322
    iget p4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_d
    iget p5, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge p4, p5, :cond_20

    .line 4323
    iget-object p5, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget p5, p5, p4

    .line 4324
    invoke-direct {p0, p3, p5, v8, p1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 p4, p4, 0x1

    goto :goto_d

    :cond_20
    if-eqz v8, :cond_21

    .line 4327
    invoke-virtual {p1, p3, v8}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4329
    :cond_21
    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5628
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->g(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 5630
    invoke-interface {p3}, Lcom/uqm/crashsight/protobuf/Reader;->n()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 5631
    :cond_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->i:Z

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 5634
    invoke-interface {p3}, Lcom/uqm/crashsight/protobuf/Reader;->m()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 5638
    invoke-interface {p3}, Lcom/uqm/crashsight/protobuf/Reader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1367
    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 1370
    invoke-direct {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1374
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 1375
    invoke-static {p2, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 1377
    invoke-static {v2, p2}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1378
    invoke-static {p1, v0, v1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1379
    invoke-direct {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 1381
    invoke-static {p1, v0, v1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1382
    invoke-direct {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 5756
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->j:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 5757
    invoke-direct {p0, p2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    .line 5759
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->f(I)I

    move-result p2

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    .line 5804
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5802
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 5800
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2

    .line 5798
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 5796
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    .line 5794
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 5792
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    .line 5790
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    .line 5788
    :pswitch_7
    sget-object p2, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    .line 5786
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    .line 5777
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5778
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 5779
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    .line 5780
    :cond_a
    instance-of p2, p1, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz p2, :cond_c

    .line 5781
    sget-object p2, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    .line 5783
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5775
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 5773
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    .line 5771
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    return v3

    :cond_e
    return v2

    .line 5769
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    .line 5767
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2

    .line 5765
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_11

    return v3

    :cond_11
    return v2

    .line 5763
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    .line 5761
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_13

    return v3

    :cond_13
    return v2

    .line 5807
    :cond_14
    invoke-direct {p0, p2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->e(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 5809
    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 5828
    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->e(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 5829
    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(II)I
    .locals 4

    .line 5858
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 51030
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private static b(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5731
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private b(I)Ljava/lang/Object;
    .locals 1

    .line 4853
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private b(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 5814
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 5818
    :cond_0
    invoke-direct {p0, p2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->e(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 5824
    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 5821
    invoke-static {p1, v1, v2, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private b(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 5839
    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->e(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 5840
    invoke-static {p1, v0, v1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1387
    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(I)I

    move-result v0

    .line 11675
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 1391
    invoke-direct {p0, p2, v1, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1395
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1396
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1398
    invoke-static {v0, p2}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1399
    invoke-static {p1, v2, v3, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1400
    invoke-direct {p0, p1, v1, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 1402
    invoke-static {p1, v2, v3, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1403
    invoke-direct {p0, p1, v1, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private static c(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5735
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private c(I)Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 4857
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->d:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    return-object p1
.end method

.method static c(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;
    .locals 2

    .line 4334
    check-cast p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    .line 4335
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4336
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 4337
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    :cond_0
    return-object v0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 5744
    invoke-direct {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d(I)I
    .locals 1

    .line 5679
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private e(I)I
    .locals 1

    .line 5683
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static f(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method private static g(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private h(I)I
    .locals 1

    .line 5844
    iget v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->f:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 5845
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 941
    invoke-direct {p0, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(I)I

    move-result v3

    .line 8675
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    .line 946
    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->f(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 1146
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1147
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 1148
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 1141
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1142
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 1136
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1137
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 1131
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1132
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 1126
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1127
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 1121
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1122
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 1116
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1117
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 1111
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1112
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 1105
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1106
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 1107
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 1099
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1101
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 1094
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 8739
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1095
    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v3

    goto/16 :goto_2

    .line 1089
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1090
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 1084
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1085
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 1079
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1080
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 1074
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1075
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 1069
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 1070
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 1064
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 8727
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1065
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 1057
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 8723
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 1060
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 1054
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 1051
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 1012
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1014
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 1006
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 1003
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 1000
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 997
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 994
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 991
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 988
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 980
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 982
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 975
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 972
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 969
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 966
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 963
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 960
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 957
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 954
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 951
    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 950
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 1157
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 1159
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    .line 1160
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Ljava/lang/Object;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 4869
    sget-object v10, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_0
    if-ge v0, v13, :cond_1e

    add-int/lit8 v3, v0, 0x1

    .line 4876
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 4878
    invoke-static {v0, v12, v3, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4879
    iget v3, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    move v4, v0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v0, v5, 0x7

    const/4 v8, 0x3

    if-le v3, v1, :cond_1

    .line 4884
    div-int/2addr v2, v8

    invoke-direct {v15, v3, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(II)I

    move-result v1

    goto :goto_2

    .line 4886
    :cond_1
    invoke-direct {v15, v3}, Lcom/uqm/crashsight/protobuf/MessageSchema;->h(I)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_2

    move/from16 v17, v3

    move v2, v4

    move v8, v5

    move/from16 v21, v6

    move/from16 v20, v7

    move-object/from16 v28, v10

    move v0, v11

    const/16 v18, 0x0

    goto/16 :goto_18

    .line 4893
    :cond_2
    iget-object v1, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v18, v2, 0x1

    aget v1, v1, v18

    .line 4894
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->f(I)I

    move-result v8

    const v18, 0xfffff

    move/from16 v19, v5

    and-int v5, v1, v18

    int-to-long v11, v5

    const/16 v5, 0x11

    move/from16 v20, v1

    if-gt v8, v5, :cond_11

    .line 4898
    iget-object v5, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v21, v2, 0x2

    aget v5, v5, v21

    ushr-int/lit8 v21, v5, 0x14

    const/4 v1, 0x1

    shl-int v21, v1, v21

    and-int v5, v5, v18

    if-eq v5, v7, :cond_4

    const/4 v13, -0x1

    move/from16 v17, v2

    if-eq v7, v13, :cond_3

    int-to-long v1, v7

    .line 4905
    invoke-virtual {v10, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v1, v5

    .line 4908
    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v5

    goto :goto_3

    :cond_4
    move/from16 v17, v2

    const/4 v13, -0x1

    :goto_3
    const/4 v1, 0x5

    packed-switch v8, :pswitch_data_0

    move-object/from16 v12, p2

    move v11, v4

    move/from16 v8, v17

    move/from16 v13, v19

    const/16 v19, -0x1

    move/from16 v17, v3

    goto/16 :goto_11

    :pswitch_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v5, v0, 0x4

    move/from16 v2, v17

    .line 5048
    invoke-direct {v15, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    move-object/from16 v1, p2

    move v8, v2

    move v2, v4

    move/from16 v17, v3

    move/from16 v3, p4

    move v4, v5

    move/from16 v13, v19

    move-object/from16 v5, p6

    .line 5047
    invoke-static/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    and-int v1, v6, v21

    if-nez v1, :cond_5

    .line 5050
    iget-object v1, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    .line 5056
    :cond_5
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    .line 5055
    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5052
    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    or-int v6, v6, v21

    move-object/from16 v12, p2

    goto/16 :goto_10

    :cond_6
    move/from16 v8, v17

    move/from16 v13, v19

    move/from16 v17, v3

    goto :goto_5

    :pswitch_1
    move/from16 v8, v17

    move/from16 v13, v19

    move/from16 v17, v3

    if-nez v0, :cond_7

    move-wide v2, v11

    move-object/from16 v12, p2

    .line 5035
    invoke-static {v12, v4, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v11

    .line 5036
    iget-wide v0, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    .line 5037
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    .line 5036
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_c

    :cond_7
    :goto_5
    move-object/from16 v12, p2

    goto/16 :goto_7

    :pswitch_2
    move/from16 v8, v17

    move/from16 v13, v19

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-nez v0, :cond_a

    .line 5026
    invoke-static {v12, v4, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5027
    iget v1, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    .line 5028
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v1

    .line 5027
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_f

    :pswitch_3
    move/from16 v8, v17

    move/from16 v13, v19

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-nez v0, :cond_a

    .line 5011
    invoke-static {v12, v4, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5012
    iget v1, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    .line 5013
    invoke-direct {v15, v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(I)Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 5014
    invoke-interface {v4, v1}, Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;->a(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_6

    .line 5019
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    goto/16 :goto_10

    .line 5015
    :cond_9
    :goto_6
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_f

    :pswitch_4
    move/from16 v8, v17

    move/from16 v13, v19

    const/4 v1, 0x2

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_a

    .line 5003
    invoke-static {v12, v4, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5004
    iget-object v1, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_f

    :cond_a
    :goto_7
    move v11, v4

    const/16 v19, -0x1

    goto/16 :goto_11

    :pswitch_5
    move/from16 v8, v17

    move/from16 v13, v19

    const/4 v1, 0x2

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    if-ne v0, v1, :cond_c

    .line 4987
    invoke-direct {v15, v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    move/from16 v11, p4

    const/16 v19, -0x1

    .line 4986
    invoke-static {v0, v12, v4, v11, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    and-int v1, v6, v21

    if-nez v1, :cond_b

    .line 4989
    iget-object v1, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    .line 4995
    :cond_b
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    .line 4994
    invoke-static {v1, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4991
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :cond_c
    move/from16 v11, p4

    const/16 v19, -0x1

    goto/16 :goto_b

    :pswitch_6
    move/from16 v8, v17

    move/from16 v13, v19

    const/4 v1, 0x2

    const/16 v19, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move/from16 v11, p4

    if-ne v0, v1, :cond_f

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_d

    .line 4974
    invoke-static {v12, v4, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_8

    .line 4976
    :cond_d
    invoke-static {v12, v4, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4978
    :goto_8
    iget-object v1, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_7
    move/from16 v8, v17

    move/from16 v13, v19

    const/16 v19, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move/from16 v11, p4

    if-nez v0, :cond_f

    .line 4965
    invoke-static {v12, v4, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4966
    iget-wide v4, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 v22, 0x0

    cmp-long v1, v4, v22

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    invoke-static {v14, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JZ)V

    goto :goto_a

    :pswitch_8
    move/from16 v8, v17

    move/from16 v13, v19

    const/16 v19, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move/from16 v11, p4

    if-ne v0, v1, :cond_f

    .line 4957
    invoke-static {v12, v4}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_a
    or-int v6, v6, v21

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    move v13, v11

    goto/16 :goto_d

    :pswitch_9
    move/from16 v8, v17

    move/from16 v13, v19

    const/4 v1, 0x1

    const/16 v19, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move/from16 v11, p4

    if-ne v0, v1, :cond_f

    .line 4948
    invoke-static {v12, v4}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move v11, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_e

    :cond_f
    :goto_b
    move v11, v4

    goto/16 :goto_11

    :pswitch_a
    move/from16 v8, v17

    move/from16 v13, v19

    const/16 v19, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    if-nez v0, :cond_10

    .line 4939
    invoke-static {v12, v11, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4940
    iget v1, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_f

    :pswitch_b
    move/from16 v8, v17

    move/from16 v13, v19

    const/16 v19, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    if-nez v0, :cond_10

    .line 4930
    invoke-static {v12, v11, v9}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v11

    .line 4931
    iget-wide v4, v9, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_c
    or-int v6, v6, v21

    move v2, v8

    move v0, v11

    move v3, v13

    move/from16 v1, v17

    move/from16 v13, p4

    :goto_d
    move/from16 v11, p5

    goto/16 :goto_0

    :pswitch_c
    move/from16 v8, v17

    move/from16 v13, v19

    const/16 v19, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    if-ne v0, v1, :cond_10

    .line 4921
    invoke-static {v12, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v11, 0x4

    goto :goto_f

    :pswitch_d
    move/from16 v8, v17

    move/from16 v13, v19

    const/4 v1, 0x1

    const/16 v19, -0x1

    move/from16 v17, v3

    move-wide v2, v11

    move-object/from16 v12, p2

    move v11, v4

    if-ne v0, v1, :cond_10

    .line 4913
    invoke-static {v12, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JD)V

    :goto_e
    add-int/lit8 v0, v11, 0x8

    :goto_f
    or-int v6, v6, v21

    :goto_10
    move/from16 v11, p5

    move v2, v8

    move v3, v13

    move/from16 v1, v17

    goto/16 :goto_13

    :cond_10
    :goto_11
    move/from16 v0, p5

    move/from16 v21, v6

    move/from16 v20, v7

    move/from16 v18, v8

    move-object/from16 v28, v10

    move v2, v11

    move v8, v13

    goto/16 :goto_18

    :cond_11
    move v5, v2

    move/from16 v17, v3

    move-wide v2, v11

    move/from16 v13, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move v11, v4

    const/16 v1, 0x1b

    if-ne v8, v1, :cond_15

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 5069
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    .line 5070
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->a()Z

    move-result v1

    if-nez v1, :cond_13

    .line 5071
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0xa

    goto :goto_12

    :cond_12
    shl-int/lit8 v1, v1, 0x1

    .line 5073
    :goto_12
    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->b(I)Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 5075
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_13
    move-object v8, v0

    .line 5079
    invoke-direct {v15, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    move v1, v13

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move/from16 v18, v5

    move-object v5, v8

    move/from16 v21, v6

    move-object/from16 v6, p6

    .line 5078
    invoke-static/range {v0 .. v6}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v11, p5

    move v3, v13

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v6, v21

    :goto_13
    move/from16 v13, p4

    goto/16 :goto_0

    :cond_14
    move/from16 v18, v5

    move/from16 v21, v6

    move/from16 v20, v7

    move-object/from16 v28, v10

    move v15, v11

    move/from16 v19, v13

    goto/16 :goto_16

    :cond_15
    move/from16 v18, v5

    move/from16 v21, v6

    const/16 v1, 0x31

    if-gt v8, v1, :cond_17

    move/from16 v1, v20

    int-to-long v5, v1

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-object/from16 v2, p2

    move v3, v11

    move/from16 p3, v4

    move/from16 v4, p4

    move-wide/from16 v25, v5

    move v5, v13

    move/from16 v6, v17

    move/from16 v20, v7

    move/from16 v7, p3

    move/from16 v27, v8

    move/from16 v8, v18

    move-object/from16 v28, v10

    move-wide/from16 v9, v25

    move v15, v11

    move/from16 v11, v27

    move/from16 v19, v13

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 5086
    invoke-direct/range {v0 .. v14}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-ne v0, v15, :cond_16

    goto/16 :goto_17

    :cond_16
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    :goto_14
    move/from16 v7, v20

    move/from16 v6, v21

    :goto_15
    move-object/from16 v10, v28

    goto/16 :goto_0

    :cond_17
    move/from16 p3, v0

    move-wide/from16 v23, v2

    move/from16 v27, v8

    move-object/from16 v28, v10

    move v15, v11

    move/from16 v19, v13

    move/from16 v1, v20

    move/from16 v20, v7

    const/16 v0, 0x32

    move/from16 v9, v27

    if-ne v9, v0, :cond_19

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 5105
    invoke-direct/range {v0 .. v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIIJLcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-ne v0, v15, :cond_16

    goto :goto_17

    :cond_18
    :goto_16
    move/from16 v0, p5

    move v2, v15

    move/from16 v8, v19

    goto :goto_18

    :cond_19
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move/from16 v6, v17

    move-wide/from16 v10, v23

    move/from16 v12, v18

    move-object/from16 v13, p6

    .line 5113
    invoke-direct/range {v0 .. v13}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIIIIIIJILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-ne v0, v15, :cond_1d

    :goto_17
    move v2, v0

    move/from16 v8, v19

    move/from16 v0, p5

    :goto_18
    if-ne v8, v0, :cond_1b

    if-nez v0, :cond_1a

    goto :goto_19

    :cond_1a
    move-object/from16 v9, p0

    move v10, v0

    move v0, v2

    move v3, v8

    move/from16 v7, v20

    move/from16 v6, v21

    goto/16 :goto_1b

    :cond_1b
    :goto_19
    move-object/from16 v9, p0

    move v10, v0

    .line 5135
    iget-boolean v0, v9, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    move-object/from16 v11, p6

    if-eqz v0, :cond_1c

    iget-object v0, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->d:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    .line 5136
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->c()Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 5137
    iget-object v5, v9, Lcom/uqm/crashsight/protobuf/MessageSchema;->g:Lcom/uqm/crashsight/protobuf/MessageLite;

    iget-object v6, v9, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILjava/lang/Object;Lcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_1a

    .line 5143
    :cond_1c
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 5142
    invoke-static/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/UnknownFieldSetLite;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_1a
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move-object v15, v9

    move-object v9, v11

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v7, v20

    move/from16 v6, v21

    move v11, v10

    goto/16 :goto_15

    :cond_1d
    move/from16 v8, v19

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move v3, v8

    move/from16 v1, v17

    move/from16 v2, v18

    goto/16 :goto_14

    :cond_1e
    move/from16 v21, v6

    move/from16 v20, v7

    move-object/from16 v28, v10

    move v10, v11

    move-object v9, v15

    :goto_1b
    const/4 v1, -0x1

    if-eq v7, v1, :cond_1f

    int-to-long v1, v7

    move-object/from16 v4, p1

    move-object/from16 v5, v28

    .line 5147
    invoke-virtual {v5, v4, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1c

    :cond_1f
    move-object/from16 v4, p1

    .line 5150
    :goto_1c
    iget v1, v9, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    const/4 v2, 0x0

    :goto_1d
    iget v5, v9, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge v1, v5, :cond_20

    .line 5151
    iget-object v5, v9, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget v5, v5, v1

    iget-object v6, v9, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    .line 5152
    invoke-direct {v9, v4, v5, v2, v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_20
    if-eqz v2, :cond_21

    .line 5159
    iget-object v1, v9, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    .line 5160
    invoke-virtual {v1, v4, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    if-nez v10, :cond_23

    move/from16 v1, p4

    if-ne v0, v1, :cond_22

    goto :goto_1e

    .line 5164
    :cond_22
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_23
    move/from16 v1, p4

    if-gt v0, v1, :cond_24

    if-ne v3, v10, :cond_24

    :goto_1e
    return v0

    .line 5168
    :cond_24
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->o:Lcom/uqm/crashsight/protobuf/NewInstanceSchema;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->g:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/NewInstanceSchema;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/uqm/crashsight/protobuf/Reader;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3842
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3844
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 5393
    iget-boolean v0, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->j:Z

    if-eqz v0, :cond_12

    .line 50811
    sget-object v9, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v13, :cond_10

    add-int/lit8 v3, v0, 0x1

    .line 50816
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 50818
    invoke-static {v0, v12, v3, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 50819
    iget v3, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    move v8, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v8, v3

    :goto_1
    ushr-int/lit8 v7, v17, 0x3

    and-int/lit8 v6, v17, 0x7

    if-le v7, v1, :cond_1

    .line 50824
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v7, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(II)I

    move-result v0

    goto :goto_2

    .line 50826
    :cond_1
    invoke-direct {v15, v7}, Lcom/uqm/crashsight/protobuf/MessageSchema;->h(I)I

    move-result v0

    :goto_2
    move v4, v0

    if-ne v4, v10, :cond_2

    move/from16 v24, v7

    move v2, v8

    move-object/from16 v18, v9

    const/16 v19, 0x0

    const/16 v26, -0x1

    goto/16 :goto_e

    .line 50833
    :cond_2
    iget-object v0, v15, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v1, v4, 0x1

    aget v5, v0, v1

    .line 50834
    invoke-static {v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->f(I)I

    move-result v3

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v1, v0

    const/16 v0, 0x11

    const/4 v10, 0x2

    if-gt v3, v0, :cond_7

    const/4 v0, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    if-nez v6, :cond_a

    .line 50941
    invoke-static {v12, v8, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    move-wide/from16 v19, v1

    .line 50942
    iget-wide v0, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    .line 50943
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v21

    move-object v0, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v21

    .line 50942
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_6

    :pswitch_1
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 50933
    invoke-static {v12, v8, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 50934
    iget v1, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    .line 50935
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v1

    .line 50934
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 50926
    invoke-static {v12, v8, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 50927
    iget v1, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_3
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 50919
    invoke-static {v12, v8, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 50920
    iget-object v1, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    .line 50906
    invoke-direct {v15, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    .line 50905
    invoke-static {v0, v12, v8, v13, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 50907
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 50909
    iget-object v1, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 50911
    :cond_3
    iget-object v5, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    .line 50912
    invoke-static {v1, v5}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 50911
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move-wide v2, v1

    if-ne v6, v10, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_4

    .line 50894
    invoke-static {v12, v8, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_3

    .line 50896
    :cond_4
    invoke-static {v12, v8, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 50898
    :goto_3
    iget-object v1, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_6
    move-wide v2, v1

    if-nez v6, :cond_a

    .line 50886
    invoke-static {v12, v8, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 50887
    iget-wide v5, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 v19, 0x0

    cmp-long v8, v5, v19

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {v14, v2, v3, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_5

    :pswitch_7
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_a

    .line 50879
    invoke-static {v12, v8}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    :goto_5
    move v2, v4

    move v1, v7

    goto/16 :goto_f

    :pswitch_8
    move-wide v2, v1

    if-ne v6, v0, :cond_a

    .line 50871
    invoke-static {v12, v8}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_7

    :pswitch_9
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 50863
    invoke-static {v12, v8, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 50864
    iget v1, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_a
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_6

    .line 50855
    invoke-static {v12, v8, v11}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    .line 50856
    iget-wide v4, v11, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_6
    move v0, v6

    goto :goto_8

    :pswitch_b
    move-wide v2, v1

    move v10, v4

    const/4 v0, 0x5

    if-ne v6, v0, :cond_6

    .line 50847
    invoke-static {v12, v8}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto :goto_8

    :pswitch_c
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_6

    .line 50840
    invoke-static {v12, v8}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JD)V

    :goto_7
    add-int/lit8 v0, v8, 0x8

    :goto_8
    move v1, v7

    move v2, v10

    goto/16 :goto_f

    :cond_6
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    goto :goto_b

    :cond_7
    const/16 v0, 0x1b

    if-ne v3, v0, :cond_b

    if-ne v6, v10, :cond_a

    .line 50953
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    .line 50954
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->a()Z

    move-result v3

    if-nez v3, :cond_9

    .line 50955
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0xa

    goto :goto_9

    :cond_8
    shl-int/lit8 v3, v3, 0x1

    .line 50957
    :goto_9
    invoke-interface {v0, v3}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->b(I)Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 50959
    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_9
    move-object v5, v0

    .line 50963
    invoke-direct {v15, v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 50962
    invoke-static/range {v0 .. v6}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v1, v7

    move/from16 v2, v19

    goto/16 :goto_f

    :cond_a
    :goto_a
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    :goto_b
    const/16 v26, -0x1

    goto/16 :goto_c

    :cond_b
    move/from16 v19, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_c

    int-to-long v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v8

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 p3, v6

    move v6, v7

    move/from16 v24, v7

    move/from16 v7, p3

    move v15, v8

    move/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    .line 50970
    invoke-direct/range {v0 .. v14}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_d

    :cond_c
    move-wide/from16 v20, v1

    move/from16 v25, v3

    move/from16 p3, v6

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_e

    move/from16 v7, p3

    if-ne v7, v10, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    .line 50989
    invoke-direct/range {v0 .. v8}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIIJLcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-ne v0, v15, :cond_f

    goto :goto_d

    :cond_d
    :goto_c
    move v2, v15

    goto :goto_e

    :cond_e
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v17

    move/from16 v6, v24

    move-wide/from16 v10, v20

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 50997
    invoke-direct/range {v0 .. v13}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIIIIIIJILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-ne v0, v15, :cond_f

    :goto_d
    move v2, v0

    .line 51016
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 51015
    invoke-static/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/UnknownFieldSetLite;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :cond_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    :goto_f
    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_10
    move v4, v13

    if-ne v0, v4, :cond_11

    return-void

    .line 51019
    :cond_11
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_12
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 5396
    invoke-virtual/range {v0 .. v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 6807
    invoke-direct {p0, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    .line 6810
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->f(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 7833
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->e(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 7834
    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 7835
    invoke-static {p2, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 6929
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 6928
    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 6908
    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 6907
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 6905
    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 6904
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 6868
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6870
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 6869
    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 6865
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6866
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto/16 :goto_2

    .line 6862
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6863
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 6859
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6860
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto/16 :goto_2

    .line 6856
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6857
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 6853
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6854
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 6850
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6851
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 6846
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6848
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 6847
    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 6842
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6844
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 6843
    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 6838
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6840
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 6839
    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 6835
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6836
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;J)Z

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 6832
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6833
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 6829
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6830
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto/16 :goto_2

    .line 6826
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6827
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 6823
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6824
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto :goto_2

    .line 6820
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6821
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto :goto_2

    .line 6816
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6817
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 6818
    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 6812
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6813
    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 6814
    invoke-static {p2, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 792
    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 793
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v2, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 794
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 798
    :cond_4
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    if-eqz v0, :cond_5

    .line 799
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p1

    .line 800
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v0, p2}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p2

    .line 801
    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1409
    iget-boolean v2, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->j:Z

    const/4 v3, 0x0

    const/4 v6, 0x1

    const v7, 0xfffff

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-eqz v2, :cond_13

    .line 11982
    sget-object v2, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 11984
    :goto_0
    iget-object v13, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    array-length v13, v13

    if-ge v11, v13, :cond_12

    .line 11985
    invoke-direct {v0, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(I)I

    move-result v13

    .line 11986
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/MessageSchema;->f(I)I

    move-result v14

    .line 12675
    iget-object v15, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget v15, v15, v11

    and-int/2addr v13, v7

    int-to-long v4, v13

    .line 11990
    sget-object v13, Lcom/uqm/crashsight/protobuf/FieldType;->J:Lcom/uqm/crashsight/protobuf/FieldType;

    .line 11991
    invoke-virtual {v13}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v13

    if-lt v14, v13, :cond_0

    sget-object v13, Lcom/uqm/crashsight/protobuf/FieldType;->W:Lcom/uqm/crashsight/protobuf/FieldType;

    .line 11992
    invoke-virtual {v13}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v13

    if-gt v14, v13, :cond_0

    iget-object v13, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v16, v11, 0x2

    aget v13, v13, v16

    and-int/2addr v13, v7

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    packed-switch v14, :pswitch_data_0

    goto/16 :goto_5

    .line 12495
    :pswitch_0
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12499
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 12500
    invoke-direct {v0, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v5

    .line 12497
    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v4

    goto/16 :goto_3

    .line 12490
    :pswitch_1
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12491
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 12485
    :pswitch_2
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12486
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(II)I

    move-result v4

    goto/16 :goto_3

    .line 12480
    :pswitch_3
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 12481
    invoke-static {v15, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 12475
    :pswitch_4
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 12476
    invoke-static {v15, v10}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(II)I

    move-result v4

    goto/16 :goto_3

    .line 12470
    :pswitch_5
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12471
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v4

    goto/16 :goto_3

    .line 12465
    :pswitch_6
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12466
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(II)I

    move-result v4

    goto/16 :goto_3

    .line 12458
    :pswitch_7
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12461
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 12460
    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v4

    goto/16 :goto_3

    .line 12452
    :pswitch_8
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12453
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 12454
    invoke-direct {v0, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v5

    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v4

    goto/16 :goto_3

    .line 12442
    :pswitch_9
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12443
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 12444
    instance-of v5, v4, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v5, :cond_1

    .line 12445
    check-cast v4, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v4

    goto/16 :goto_3

    .line 12447
    :cond_1
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    .line 12437
    :pswitch_a
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 12438
    invoke-static {v15, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v4

    goto/16 :goto_3

    .line 12432
    :pswitch_b
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 12433
    invoke-static {v15, v10}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(II)I

    move-result v4

    goto/16 :goto_3

    .line 12427
    :pswitch_c
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 12428
    invoke-static {v15, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 12422
    :pswitch_d
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12423
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v4

    goto/16 :goto_3

    .line 12417
    :pswitch_e
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12418
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 12412
    :pswitch_f
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12413
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 12407
    :pswitch_10
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 12408
    invoke-static {v15, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IF)I

    move-result v4

    goto/16 :goto_3

    .line 12402
    :pswitch_11
    invoke-direct {v0, v1, v15, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    const-wide/16 v4, 0x0

    .line 12403
    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ID)I

    move-result v13

    goto/16 :goto_4

    .line 12397
    :pswitch_12
    iget-object v13, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    .line 12399
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(I)Ljava/lang/Object;

    move-result-object v5

    .line 12398
    invoke-interface {v13, v15, v4, v5}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    .line 12393
    :pswitch_13
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v5

    .line 12392
    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v4

    goto/16 :goto_3

    .line 12378
    :pswitch_14
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12377
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->c(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12380
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_2

    int-to-long v13, v13

    .line 12381
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12384
    :cond_2
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12385
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto/16 :goto_2

    .line 12362
    :pswitch_15
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12361
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12364
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_3

    int-to-long v13, v13

    .line 12365
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12368
    :cond_3
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12369
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto/16 :goto_2

    .line 12346
    :pswitch_16
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12345
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12348
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_4

    int-to-long v13, v13

    .line 12349
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12352
    :cond_4
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12353
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto/16 :goto_2

    .line 12330
    :pswitch_17
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12329
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12332
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_5

    int-to-long v13, v13

    .line 12333
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12336
    :cond_5
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12337
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto/16 :goto_2

    .line 12314
    :pswitch_18
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12313
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->d(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12316
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_6

    int-to-long v13, v13

    .line 12317
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12320
    :cond_6
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12321
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto/16 :goto_2

    .line 12298
    :pswitch_19
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12297
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->f(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12300
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_7

    int-to-long v13, v13

    .line 12301
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12304
    :cond_7
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12305
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto/16 :goto_2

    .line 12282
    :pswitch_1a
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12281
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->j(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12284
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_8

    int-to-long v13, v13

    .line 12285
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12288
    :cond_8
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12289
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto/16 :goto_2

    .line 12266
    :pswitch_1b
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12265
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12268
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_9

    int-to-long v13, v13

    .line 12269
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12272
    :cond_9
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12273
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto/16 :goto_2

    .line 12250
    :pswitch_1c
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12249
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12252
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_a

    int-to-long v13, v13

    .line 12253
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12256
    :cond_a
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12257
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto/16 :goto_2

    .line 12234
    :pswitch_1d
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12233
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12236
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_b

    int-to-long v13, v13

    .line 12237
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12240
    :cond_b
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12241
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto/16 :goto_2

    .line 12218
    :pswitch_1e
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12217
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12220
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_c

    int-to-long v13, v13

    .line 12221
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12224
    :cond_c
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12225
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto :goto_2

    .line 12202
    :pswitch_1f
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12201
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12204
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_d

    int-to-long v13, v13

    .line 12205
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12208
    :cond_d
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12209
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto :goto_2

    .line 12186
    :pswitch_20
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12185
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12188
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_e

    int-to-long v13, v13

    .line 12189
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12192
    :cond_e
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12193
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    goto :goto_2

    .line 12170
    :pswitch_21
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12169
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_11

    .line 12172
    iget-boolean v5, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v5, :cond_f

    int-to-long v13, v13

    .line 12173
    invoke-virtual {v2, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 12176
    :cond_f
    invoke-static {v15}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    .line 12177
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v13

    :goto_2
    add-int/2addr v5, v13

    add-int/2addr v5, v4

    add-int/2addr v12, v5

    goto/16 :goto_5

    .line 12164
    :pswitch_22
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->c(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 12160
    :pswitch_23
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 12159
    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->g(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 12155
    :pswitch_24
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 12152
    :pswitch_25
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 12149
    :pswitch_26
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 12148
    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->d(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_3

    .line 12144
    :pswitch_27
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 12143
    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->f(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3

    .line 12139
    :pswitch_28
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 12138
    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(ILjava/util/List;)I

    move-result v4

    goto :goto_3

    .line 12134
    :pswitch_29
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v5

    .line 12133
    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v4

    goto :goto_3

    .line 12129
    :pswitch_2a
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;)I

    move-result v4

    goto :goto_3

    .line 12126
    :pswitch_2b
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->j(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3

    .line 12123
    :pswitch_2c
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3

    .line 12120
    :pswitch_2d
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3

    .line 12117
    :pswitch_2e
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 12116
    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->e(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3

    .line 12112
    :pswitch_2f
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3

    .line 12108
    :pswitch_30
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3

    .line 12104
    :pswitch_31
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    move-result v4

    goto :goto_3

    .line 12101
    :pswitch_32
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v15, v4, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(ILjava/util/List;Z)I

    move-result v4

    :goto_3
    add-int/2addr v12, v4

    goto/16 :goto_5

    .line 12092
    :pswitch_33
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12096
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 12097
    invoke-direct {v0, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v5

    .line 12094
    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v4

    goto :goto_3

    .line 12086
    :pswitch_34
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12088
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(IJ)I

    move-result v4

    goto :goto_3

    .line 12081
    :pswitch_35
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12082
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(II)I

    move-result v4

    goto :goto_3

    .line 12076
    :pswitch_36
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 12077
    invoke-static {v15, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(IJ)I

    move-result v4

    goto :goto_3

    .line 12071
    :pswitch_37
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 12072
    invoke-static {v15, v10}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(II)I

    move-result v4

    goto :goto_3

    .line 12066
    :pswitch_38
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12067
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v4

    goto :goto_3

    .line 12061
    :pswitch_39
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12062
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(II)I

    move-result v4

    goto :goto_3

    .line 12055
    :pswitch_3a
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12056
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 12057
    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v4

    goto :goto_3

    .line 12049
    :pswitch_3b
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12050
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 12051
    invoke-direct {v0, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v5

    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v4

    goto/16 :goto_3

    .line 12039
    :pswitch_3c
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12040
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 12041
    instance-of v5, v4, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v5, :cond_10

    .line 12042
    check-cast v4, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v4

    goto/16 :goto_3

    .line 12044
    :cond_10
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    .line 12034
    :pswitch_3d
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 12035
    invoke-static {v15, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v4

    goto/16 :goto_3

    .line 12029
    :pswitch_3e
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 12030
    invoke-static {v15, v10}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(II)I

    move-result v4

    goto/16 :goto_3

    .line 12024
    :pswitch_3f
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 12025
    invoke-static {v15, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 12019
    :pswitch_40
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12020
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v4

    goto/16 :goto_3

    .line 12013
    :pswitch_41
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12015
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 12008
    :pswitch_42
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 12009
    invoke-static {v1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v4

    goto/16 :goto_3

    .line 12003
    :pswitch_43
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 12004
    invoke-static {v15, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IF)I

    move-result v4

    goto/16 :goto_3

    .line 11998
    :pswitch_44
    invoke-direct {v0, v1, v11}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    const-wide/16 v4, 0x0

    .line 11999
    invoke-static {v15, v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ID)I

    move-result v13

    :goto_4
    add-int/2addr v12, v13

    :cond_11
    :goto_5
    add-int/lit8 v11, v11, 0x3

    goto/16 :goto_0

    .line 12508
    :cond_12
    iget-object v2, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v12, v1

    return v12

    .line 13416
    :cond_13
    sget-object v2, Lcom/uqm/crashsight/protobuf/MessageSchema;->b:Lsun/misc/Unsafe;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 13419
    :goto_6
    iget-object v13, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    array-length v13, v13

    if-ge v5, v13, :cond_2b

    .line 13420
    invoke-direct {v0, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(I)I

    move-result v13

    .line 14675
    iget-object v14, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget v14, v14, v5

    .line 13423
    invoke-static {v13}, Lcom/uqm/crashsight/protobuf/MessageSchema;->f(I)I

    move-result v15

    const/16 v3, 0x11

    if-gt v15, v3, :cond_14

    .line 13427
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v17, v5, 0x2

    aget v3, v3, v17

    and-int v10, v3, v7

    ushr-int/lit8 v18, v3, 0x14

    shl-int v18, v6, v18

    if-eq v10, v4, :cond_16

    int-to-long v8, v10

    .line 13432
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v4, v10

    goto :goto_8

    .line 13434
    :cond_14
    iget-boolean v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v3, :cond_15

    sget-object v3, Lcom/uqm/crashsight/protobuf/FieldType;->J:Lcom/uqm/crashsight/protobuf/FieldType;

    .line 13435
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v3

    if-lt v15, v3, :cond_15

    sget-object v3, Lcom/uqm/crashsight/protobuf/FieldType;->W:Lcom/uqm/crashsight/protobuf/FieldType;

    .line 13436
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/FieldType;->a()I

    move-result v3

    if-gt v15, v3, :cond_15

    .line 13437
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    add-int/lit8 v8, v5, 0x2

    aget v3, v3, v8

    and-int/2addr v3, v7

    goto :goto_7

    :cond_15
    const/4 v3, 0x0

    :goto_7
    const/16 v18, 0x0

    :cond_16
    :goto_8
    and-int v8, v13, v7

    int-to-long v8, v8

    packed-switch v15, :pswitch_data_1

    goto/16 :goto_b

    .line 13959
    :pswitch_45
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 13963
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 13964
    invoke-direct {v0, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v8

    .line 13961
    invoke-static {v14, v3, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_a

    .line 13954
    :pswitch_46
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 13955
    invoke-static {v1, v8, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(IJ)I

    move-result v3

    goto/16 :goto_a

    .line 13949
    :pswitch_47
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 13950
    invoke-static {v1, v8, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(II)I

    move-result v3

    goto/16 :goto_a

    .line 13944
    :pswitch_48
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const-wide/16 v8, 0x0

    .line 13945
    invoke-static {v14, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(IJ)I

    move-result v3

    goto/16 :goto_a

    .line 13939
    :pswitch_49
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    .line 13940
    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(II)I

    move-result v8

    goto/16 :goto_d

    .line 13934
    :pswitch_4a
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 13935
    invoke-static {v1, v8, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v3

    goto/16 :goto_a

    .line 13929
    :pswitch_4b
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 13930
    invoke-static {v1, v8, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(II)I

    move-result v3

    goto/16 :goto_a

    .line 13922
    :pswitch_4c
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 13925
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 13924
    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_a

    .line 13916
    :pswitch_4d
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 13917
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13918
    invoke-direct {v0, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v8

    invoke-static {v14, v3, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_a

    .line 13906
    :pswitch_4e
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 13907
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13908
    instance-of v8, v3, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v8, :cond_17

    .line 13909
    check-cast v3, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_a

    .line 13911
    :cond_17
    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_a

    .line 13901
    :pswitch_4f
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 13902
    invoke-static {v14, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v3

    goto/16 :goto_a

    .line 13896
    :pswitch_50
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    .line 13897
    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(II)I

    move-result v8

    goto/16 :goto_d

    .line 13891
    :pswitch_51
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const-wide/16 v8, 0x0

    .line 13892
    invoke-static {v14, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(IJ)I

    move-result v3

    goto/16 :goto_a

    .line 13886
    :pswitch_52
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 13887
    invoke-static {v1, v8, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v3

    goto/16 :goto_a

    .line 13881
    :pswitch_53
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 13882
    invoke-static {v1, v8, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(IJ)I

    move-result v3

    goto/16 :goto_a

    .line 13876
    :pswitch_54
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 13877
    invoke-static {v1, v8, v9}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v3

    goto/16 :goto_a

    .line 13871
    :pswitch_55
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    .line 13872
    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IF)I

    move-result v8

    goto/16 :goto_d

    .line 13866
    :pswitch_56
    invoke-direct {v0, v1, v14, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_26

    const-wide/16 v8, 0x0

    .line 13867
    invoke-static {v14, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ID)I

    move-result v3

    goto/16 :goto_a

    .line 13861
    :pswitch_57
    iget-object v3, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    .line 13863
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(I)Ljava/lang/Object;

    move-result-object v9

    .line 13862
    invoke-interface {v3, v14, v8, v9}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_a

    .line 13856
    :pswitch_58
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13857
    invoke-direct {v0, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v8

    .line 13854
    invoke-static {v14, v3, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_a

    .line 13840
    :pswitch_59
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13839
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->c(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13842
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_18

    int-to-long v9, v3

    .line 13843
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13846
    :cond_18
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13847
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto/16 :goto_9

    .line 13824
    :pswitch_5a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13823
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13826
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_19

    int-to-long v9, v3

    .line 13827
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13830
    :cond_19
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13831
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto/16 :goto_9

    .line 13808
    :pswitch_5b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13807
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13810
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_1a

    int-to-long v9, v3

    .line 13811
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13814
    :cond_1a
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13815
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto/16 :goto_9

    .line 13792
    :pswitch_5c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13791
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13794
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_1b

    int-to-long v9, v3

    .line 13795
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13798
    :cond_1b
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13799
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto/16 :goto_9

    .line 13776
    :pswitch_5d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13775
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->d(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13778
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_1c

    int-to-long v9, v3

    .line 13779
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13782
    :cond_1c
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13783
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto/16 :goto_9

    .line 13760
    :pswitch_5e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13759
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->f(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13762
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_1d

    int-to-long v9, v3

    .line 13763
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13766
    :cond_1d
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13767
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto/16 :goto_9

    .line 13744
    :pswitch_5f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13743
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->j(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13746
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_1e

    int-to-long v9, v3

    .line 13747
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13750
    :cond_1e
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13751
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto/16 :goto_9

    .line 13728
    :pswitch_60
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13727
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13730
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_1f

    int-to-long v9, v3

    .line 13731
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13734
    :cond_1f
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13735
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto/16 :goto_9

    .line 13712
    :pswitch_61
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13711
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13714
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_20

    int-to-long v9, v3

    .line 13715
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13718
    :cond_20
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13719
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto/16 :goto_9

    .line 13696
    :pswitch_62
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13695
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13698
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_21

    int-to-long v9, v3

    .line 13699
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13702
    :cond_21
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13703
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto/16 :goto_9

    .line 13680
    :pswitch_63
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13679
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13682
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_22

    int-to-long v9, v3

    .line 13683
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13686
    :cond_22
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13687
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto :goto_9

    .line 13664
    :pswitch_64
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13663
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13666
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_23

    int-to-long v9, v3

    .line 13667
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13670
    :cond_23
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13671
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto :goto_9

    .line 13648
    :pswitch_65
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13647
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13650
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_24

    int-to-long v9, v3

    .line 13651
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13654
    :cond_24
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13655
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    goto :goto_9

    .line 13632
    :pswitch_66
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 13631
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_26

    .line 13634
    iget-boolean v9, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->k:Z

    if-eqz v9, :cond_25

    int-to-long v9, v3

    .line 13635
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 13638
    :cond_25
    invoke-static {v14}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    .line 13639
    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v9

    :goto_9
    add-int/2addr v3, v9

    add-int/2addr v3, v8

    goto/16 :goto_a

    .line 13626
    :pswitch_67
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v10, 0x0

    .line 13625
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->c(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_a

    :pswitch_68
    const/4 v10, 0x0

    .line 13621
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13620
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->g(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_a

    :pswitch_69
    const/4 v10, 0x0

    .line 13616
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13615
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_a

    :pswitch_6a
    const/4 v10, 0x0

    .line 13611
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13610
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_a

    :pswitch_6b
    const/4 v10, 0x0

    .line 13606
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13605
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->d(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_a

    :pswitch_6c
    const/4 v10, 0x0

    .line 13601
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13600
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->f(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_a

    .line 13596
    :pswitch_6d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13595
    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_a

    .line 13591
    :pswitch_6e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v8

    .line 13590
    invoke-static {v14, v3, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v3

    goto :goto_a

    .line 13586
    :pswitch_6f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;)I

    move-result v3

    goto :goto_a

    .line 13582
    :pswitch_70
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v10, 0x0

    .line 13581
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->j(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_71
    const/4 v10, 0x0

    .line 13577
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13576
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_72
    const/4 v10, 0x0

    .line 13572
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13571
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_73
    const/4 v10, 0x0

    .line 13567
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13566
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->e(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_74
    const/4 v10, 0x0

    .line 13562
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13561
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->b(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_75
    const/4 v10, 0x0

    .line 13557
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13556
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_76
    const/4 v10, 0x0

    .line 13552
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13551
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_77
    const/4 v10, 0x0

    .line 13547
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13546
    invoke-static {v14, v3, v10}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->i(ILjava/util/List;Z)I

    move-result v3

    :goto_a
    add-int/2addr v11, v3

    :cond_26
    :goto_b
    const/4 v3, 0x0

    :cond_27
    :goto_c
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v19, 0x0

    goto/16 :goto_11

    :pswitch_78
    and-int v3, v12, v18

    if-eqz v3, :cond_26

    .line 13540
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 13541
    invoke-direct {v0, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v8

    .line 13538
    invoke-static {v14, v3, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v3

    goto :goto_a

    :pswitch_79
    and-int v3, v12, v18

    if-eqz v3, :cond_26

    .line 13532
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(IJ)I

    move-result v3

    goto :goto_a

    :pswitch_7a
    and-int v3, v12, v18

    if-eqz v3, :cond_26

    .line 13527
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(II)I

    move-result v3

    goto :goto_a

    :pswitch_7b
    and-int v3, v12, v18

    if-eqz v3, :cond_26

    const-wide/16 v8, 0x0

    .line 13522
    invoke-static {v14, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(IJ)I

    move-result v3

    goto :goto_a

    :pswitch_7c
    and-int v3, v12, v18

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    .line 13517
    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(II)I

    move-result v8

    :goto_d
    add-int/2addr v11, v8

    goto :goto_b

    :pswitch_7d
    and-int v3, v12, v18

    if-eqz v3, :cond_26

    .line 13512
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(II)I

    move-result v3

    goto :goto_a

    :pswitch_7e
    and-int v3, v12, v18

    if-eqz v3, :cond_26

    .line 13507
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(II)I

    move-result v3

    goto :goto_a

    :pswitch_7f
    and-int v3, v12, v18

    if-eqz v3, :cond_26

    .line 13501
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 13502
    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v3

    goto :goto_a

    :pswitch_80
    and-int v3, v12, v18

    if-eqz v3, :cond_26

    .line 13495
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13496
    invoke-direct {v0, v5}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(I)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v8

    invoke-static {v14, v3, v8}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/lang/Object;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_a

    :pswitch_81
    and-int v3, v12, v18

    if-eqz v3, :cond_26

    .line 13485
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13486
    instance-of v8, v3, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v8, :cond_28

    .line 13487
    check-cast v3, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_a

    .line 13489
    :cond_28
    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_a

    :pswitch_82
    and-int v3, v12, v18

    if-eqz v3, :cond_26

    .line 13480
    invoke-static {v14, v6}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v3

    goto/16 :goto_a

    :pswitch_83
    and-int v3, v12, v18

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    .line 13475
    invoke-static {v14, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(II)I

    move-result v8

    add-int/2addr v11, v8

    goto/16 :goto_c

    :pswitch_84
    const/4 v3, 0x0

    and-int v8, v12, v18

    if-eqz v8, :cond_27

    const-wide/16 v8, 0x0

    .line 13470
    invoke-static {v14, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(IJ)I

    move-result v10

    add-int/2addr v11, v10

    move-wide/from16 v19, v8

    goto :goto_f

    :pswitch_85
    const/4 v3, 0x0

    const-wide/16 v19, 0x0

    and-int v10, v12, v18

    if-eqz v10, :cond_29

    .line 13465
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v14, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v8

    goto :goto_e

    :pswitch_86
    const/4 v3, 0x0

    const-wide/16 v19, 0x0

    and-int v10, v12, v18

    if-eqz v10, :cond_29

    .line 13460
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(IJ)I

    move-result v8

    goto :goto_e

    :pswitch_87
    const/4 v3, 0x0

    const-wide/16 v19, 0x0

    and-int v10, v12, v18

    if-eqz v10, :cond_29

    .line 13455
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v8

    :goto_e
    add-int/2addr v11, v8

    :cond_29
    :goto_f
    const/4 v8, 0x0

    goto :goto_10

    :pswitch_88
    const/4 v3, 0x0

    const-wide/16 v19, 0x0

    and-int v8, v12, v18

    if-eqz v8, :cond_29

    const/4 v8, 0x0

    .line 13450
    invoke-static {v14, v8}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IF)I

    move-result v9

    add-int/2addr v11, v9

    :cond_2a
    :goto_10
    const-wide/16 v9, 0x0

    goto :goto_11

    :pswitch_89
    const/4 v3, 0x0

    const/4 v8, 0x0

    const-wide/16 v19, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_2a

    const-wide/16 v9, 0x0

    .line 13445
    invoke-static {v14, v9, v10}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ID)I

    move-result v13

    add-int/2addr v11, v13

    :goto_11
    add-int/lit8 v5, v5, 0x3

    move-wide/from16 v8, v19

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto/16 :goto_6

    .line 13972
    :cond_2b
    iget-object v2, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v11, v2

    .line 13974
    iget-boolean v2, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    if-eqz v2, :cond_2c

    .line 13975
    iget-object v2, v0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->l()I

    move-result v1

    add-int/2addr v11, v1

    :cond_2c
    return v11

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1169
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1171
    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 9184
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 10675
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->c:[I

    aget v4, v4, v0

    .line 9188
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->f(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 9359
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9353
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9354
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9355
    invoke-direct {p0, p1, v4, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 9344
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9337
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9338
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9339
    invoke-direct {p0, p1, v4, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 9326
    :pswitch_4
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Lcom/uqm/crashsight/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 9323
    :pswitch_5
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 9289
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9283
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9284
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    .line 9285
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9277
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9278
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    .line 9279
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9271
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9272
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    .line 9273
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9265
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9266
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    .line 9267
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9259
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9260
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    .line 9261
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9253
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9254
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    .line 9255
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9247
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9248
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9249
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9244
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9238
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9239
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9240
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9232
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9233
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JZ)V

    .line 9234
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9226
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9227
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    .line 9228
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 9220
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9221
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    .line 9222
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 9214
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9215
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JI)V

    .line 9216
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 9208
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9209
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    .line 9210
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 9202
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9203
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JJ)V

    .line 9204
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 9196
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9197
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JF)V

    .line 9198
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 9190
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9191
    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JD)V

    .line 9192
    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->b(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1178
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    if-eqz v0, :cond_2

    .line 1179
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(Lcom/uqm/crashsight/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5403
    iget v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->m:I

    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->n:I

    if-ge v0, v1, :cond_1

    .line 5404
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 5405
    invoke-static {p1, v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5409
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->s:Lcom/uqm/crashsight/protobuf/MapFieldSchema;

    invoke-interface {v4, v3}, Lcom/uqm/crashsight/protobuf/MapFieldSchema;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5411
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 5413
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->p:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->l:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->b(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5415
    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->q:Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;->d(Ljava/lang/Object;)V

    .line 5416
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->h:Z

    if-eqz v0, :cond_3

    .line 5417
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MessageSchema;->r:Lcom/uqm/crashsight/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
