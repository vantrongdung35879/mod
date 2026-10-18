.class final Lcom/uqm/crashsight/protobuf/ArrayDecoders;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1043
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    .line 1046
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1073
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    .line 1061
    invoke-static {p1, p2, p4}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1062
    iget v0, p4, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, p0, :cond_2

    .line 1066
    invoke-static {v0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_0

    :cond_2
    if-gt p2, p3, :cond_3

    if-ne v0, p0, :cond_3

    return p2

    .line 1069
    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1055
    :cond_4
    invoke-static {p1, p2, p4}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 1056
    iget p1, p4, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr p0, p1

    return p0

    :cond_5
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 1048
    :cond_6
    invoke-static {p1, p2, p4}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    return p0

    .line 1044
    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static a(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 272
    check-cast p4, Lcom/uqm/crashsight/protobuf/IntArrayList;

    .line 273
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 274
    iget v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {p4, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    :goto_0
    if-ge p2, p3, :cond_0

    .line 276
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 277
    iget v1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p0, v1, :cond_0

    .line 280
    invoke-static {p1, v0, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 281
    iget v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {p4, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    goto :goto_0

    :cond_0
    return p2
.end method

.method static a(I[BIILcom/uqm/crashsight/protobuf/UnknownFieldSetLite;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 991
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_b

    .line 994
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    .line 1000
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1036
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1019
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v6

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 1023
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 1024
    iget p2, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    move v0, p2

    if-eq p2, v7, :cond_2

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    .line 1028
    invoke-static/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/UnknownFieldSetLite;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_0

    :cond_2
    move p2, v2

    :cond_3
    if-gt p2, p3, :cond_4

    if-ne v0, v7, :cond_4

    .line 1033
    invoke-virtual {p4, p0, v6}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    return p2

    .line 1031
    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1006
    :cond_5
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1007
    iget p3, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz p3, :cond_8

    .line 1010
    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-nez p3, :cond_6

    .line 1013
    sget-object p1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p4, p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 1015
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/ByteString;->a([BII)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    :goto_1
    add-int/2addr p2, p3

    return p2

    .line 1011
    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1009
    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1003
    :cond_9
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 996
    :cond_a
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 997
    iget-wide p2, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    return p1

    .line 992
    :cond_b
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static a(I[BIILjava/lang/Object;Lcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/lang/Object;",
            "Lcom/uqm/crashsight/protobuf/MessageLite;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    .line 755
    iget-object v1, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->d:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    .line 756
    invoke-virtual {v1, p5, v0}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->a(Lcom/uqm/crashsight/protobuf/MessageLite;I)Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p5

    if-nez p5, :cond_0

    .line 759
    invoke-static {p4}, Lcom/uqm/crashsight/protobuf/MessageSchema;->c(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v5

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p7

    .line 758
    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BIILcom/uqm/crashsight/protobuf/UnknownFieldSetLite;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    return p0

    .line 761
    :cond_0
    check-cast p4, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {p4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->d()Lcom/uqm/crashsight/protobuf/FieldSet;

    .line 2778
    iget-object p0, p4, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->b:Lcom/uqm/crashsight/protobuf/FieldSet;

    .line 2780
    iget-object v1, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->o()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2781
    sget-object p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$1;->a:[I

    .line 3290
    iget-object v1, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v1

    .line 2781
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget p3, p3, v1

    packed-switch p3, :pswitch_data_0

    .line 2871
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Type cannot be packed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 2872
    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2851
    :pswitch_0
    new-instance p3, Lcom/uqm/crashsight/protobuf/IntArrayList;

    invoke-direct {p3}, Lcom/uqm/crashsight/protobuf/IntArrayList;-><init>()V

    .line 2852
    invoke-static {p1, p2, p3, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 2853
    iget-object p2, p4, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    .line 2854
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object p7

    if-ne p2, p7, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p2

    .line 2857
    :goto_0
    iget-object p2, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 4125
    iget-object p2, p2, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->a:Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;

    .line 2858
    invoke-static {v0, p3, p2, v2, p6}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(ILjava/util/List;Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    if-eqz p2, :cond_2

    .line 2865
    iput-object p2, p4, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtendableMessage;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    .line 2867
    :cond_2
    iget-object p2, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2844
    :pswitch_1
    new-instance p3, Lcom/uqm/crashsight/protobuf/LongArrayList;

    invoke-direct {p3}, Lcom/uqm/crashsight/protobuf/LongArrayList;-><init>()V

    .line 2845
    invoke-static {p1, p2, p3, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->i([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    goto/16 :goto_7

    .line 2837
    :pswitch_2
    new-instance p3, Lcom/uqm/crashsight/protobuf/IntArrayList;

    invoke-direct {p3}, Lcom/uqm/crashsight/protobuf/IntArrayList;-><init>()V

    .line 2838
    invoke-static {p1, p2, p3, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->h([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    goto/16 :goto_7

    .line 2830
    :pswitch_3
    new-instance p3, Lcom/uqm/crashsight/protobuf/BooleanArrayList;

    invoke-direct {p3}, Lcom/uqm/crashsight/protobuf/BooleanArrayList;-><init>()V

    .line 2831
    invoke-static {p1, p2, p3, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->g([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    goto/16 :goto_7

    .line 2823
    :pswitch_4
    new-instance p3, Lcom/uqm/crashsight/protobuf/IntArrayList;

    invoke-direct {p3}, Lcom/uqm/crashsight/protobuf/IntArrayList;-><init>()V

    .line 2824
    invoke-static {p1, p2, p3, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    goto/16 :goto_7

    .line 2815
    :pswitch_5
    new-instance p3, Lcom/uqm/crashsight/protobuf/LongArrayList;

    invoke-direct {p3}, Lcom/uqm/crashsight/protobuf/LongArrayList;-><init>()V

    .line 2816
    invoke-static {p1, p2, p3, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    goto/16 :goto_7

    .line 2807
    :pswitch_6
    new-instance p3, Lcom/uqm/crashsight/protobuf/IntArrayList;

    invoke-direct {p3}, Lcom/uqm/crashsight/protobuf/IntArrayList;-><init>()V

    .line 2808
    invoke-static {p1, p2, p3, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    goto/16 :goto_7

    .line 2799
    :pswitch_7
    new-instance p3, Lcom/uqm/crashsight/protobuf/LongArrayList;

    invoke-direct {p3}, Lcom/uqm/crashsight/protobuf/LongArrayList;-><init>()V

    .line 2800
    invoke-static {p1, p2, p3, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    goto/16 :goto_7

    .line 2791
    :pswitch_8
    new-instance p3, Lcom/uqm/crashsight/protobuf/FloatArrayList;

    invoke-direct {p3}, Lcom/uqm/crashsight/protobuf/FloatArrayList;-><init>()V

    .line 2792
    invoke-static {p1, p2, p3, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    goto/16 :goto_7

    .line 2784
    :pswitch_9
    new-instance p3, Lcom/uqm/crashsight/protobuf/DoubleArrayList;

    invoke-direct {p3}, Lcom/uqm/crashsight/protobuf/DoubleArrayList;-><init>()V

    .line 2785
    invoke-static {p1, p2, p3, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->f([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    goto/16 :goto_7

    .line 4290
    :cond_3
    iget-object v1, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v1

    .line 2877
    sget-object v3, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->n:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    if-ne v1, v3, :cond_6

    .line 2878
    invoke-static {p1, p2, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 2879
    iget-object p1, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 5125
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->a:Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;

    .line 2879
    iget p3, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;->a(I)Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    move-result-object p1

    if-nez p1, :cond_5

    .line 2881
    iget-object p0, p4, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    .line 2882
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object p1

    if-ne p0, p1, :cond_4

    .line 2883
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object p0

    .line 2884
    iput-object p0, p4, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    .line 2886
    :cond_4
    iget p1, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v0, p1, p0, p6}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(IILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 2892
    :cond_5
    iget p1, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_4

    .line 2894
    :cond_6
    sget-object p4, Lcom/uqm/crashsight/protobuf/ArrayDecoders$1;->a:[I

    .line 5290
    iget-object p6, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p6}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object p6

    .line 2894
    invoke-virtual {p6}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p6

    aget p4, p4, p6

    packed-switch p4, :pswitch_data_1

    goto/16 :goto_4

    .line 2953
    :pswitch_a
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object p4

    .line 7235
    iget-object p6, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 2953
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p4, p6}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object p4

    .line 2952
    invoke-static {p4, p1, p2, p3, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 2955
    iget-object v2, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_b
    shl-int/lit8 p4, v0, 0x3

    or-int/lit8 v4, p4, 0x4

    .line 2946
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object p4

    .line 6235
    iget-object p6, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 2946
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p4, p6}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    .line 2945
    invoke-static/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 2948
    iget-object v2, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto/16 :goto_4

    .line 2940
    :pswitch_c
    invoke-static {p1, p2, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 2941
    iget-object v2, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto/16 :goto_4

    .line 2928
    :pswitch_d
    invoke-static {p1, p2, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->e([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 2929
    iget-object v2, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto/16 :goto_4

    .line 2959
    :pswitch_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t reach here."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2936
    :pswitch_f
    invoke-static {p1, p2, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 2937
    iget-wide p3, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {p3, p4}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_4

    .line 2932
    :pswitch_10
    invoke-static {p1, p2, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 2933
    iget p1, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    .line 2924
    :pswitch_11
    invoke-static {p1, p2, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 2925
    iget-wide p3, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 p6, 0x0

    cmp-long p1, p3, p6

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_4

    .line 2920
    :pswitch_12
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 2915
    :pswitch_13
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    .line 2910
    :pswitch_14
    invoke-static {p1, p2, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 2911
    iget p1, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    .line 2905
    :pswitch_15
    invoke-static {p1, p2, p7}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 2906
    iget-wide p3, p7, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_4

    .line 2900
    :pswitch_16
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BI)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_2
    add-int/lit8 p2, p2, 0x4

    goto :goto_4

    .line 2896
    :pswitch_17
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BI)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_3
    add-int/lit8 p2, p2, 0x8

    .line 7295
    :goto_4
    iget-object p1, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->b:Z

    if-eqz p1, :cond_8

    .line 2963
    iget-object p1, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_5
    move p1, p2

    goto :goto_8

    .line 2965
    :cond_8
    sget-object p1, Lcom/uqm/crashsight/protobuf/ArrayDecoders$1;->a:[I

    .line 8290
    iget-object p3, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object p3

    .line 2965
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/16 p3, 0x11

    if-eq p1, p3, :cond_9

    const/16 p3, 0x12

    if-eq p1, p3, :cond_9

    goto :goto_6

    .line 2968
    :cond_9
    iget-object p1, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2970
    invoke-static {p1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move p1, p2

    goto :goto_7

    :cond_a
    :goto_6
    move p1, p2

    move-object p3, v2

    .line 2976
    :goto_7
    iget-object p2, p5, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_8
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method static a(I[BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    .line 90
    aget-byte v1, p1, p2

    if-ltz v1, :cond_0

    shl-int/lit8 p1, v1, 0x7

    or-int/2addr p0, p1

    .line 92
    iput p0, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    return v0

    :cond_0
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    add-int/lit8 v1, p2, 0x2

    .line 97
    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    .line 99
    iput p0, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    return v1

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x3

    .line 104
    aget-byte v1, p1, v1

    if-ltz v1, :cond_2

    shl-int/lit8 p1, v1, 0x15

    or-int/2addr p0, p1

    .line 106
    iput p0, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    return v0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr p0, v1

    add-int/lit8 p2, p2, 0x4

    .line 111
    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    .line 113
    iput p0, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 118
    aget-byte p2, p1, p2

    if-ltz p2, :cond_4

    .line 120
    iput p0, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    return v0

    :cond_4
    move p2, v0

    goto :goto_0
.end method

.method static a(Lcom/uqm/crashsight/protobuf/Schema;I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Schema<",
            "*>;I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
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

    .line 704
    invoke-static {p0, p2, p3, p4, p6}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 705
    iget-object v0, p6, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_0

    .line 707
    invoke-static {p2, p3, p6}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 708
    iget v1, p6, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p1, v1, :cond_0

    .line 711
    invoke-static {p0, p2, v0, p4, p6}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 712
    iget-object v0, p6, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return p3
.end method

.method static a(Lcom/uqm/crashsight/protobuf/Schema;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    check-cast p0, Lcom/uqm/crashsight/protobuf/MessageSchema;

    .line 260
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 263
    invoke-virtual/range {v0 .. v6}, Lcom/uqm/crashsight/protobuf/MessageSchema;->a(Ljava/lang/Object;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 264
    invoke-virtual {p0, v7}, Lcom/uqm/crashsight/protobuf/MessageSchema;->d(Ljava/lang/Object;)V

    .line 265
    iput-object v7, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    return p1
.end method

.method static a(Lcom/uqm/crashsight/protobuf/Schema;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 237
    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    .line 239
    invoke-static {p2, p1, v0, p4}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 240
    iget p2, p4, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    .line 245
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    .line 246
    invoke-interface/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/Schema;->a(Ljava/lang/Object;[BIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)V

    .line 247
    invoke-interface {p0, p3}, Lcom/uqm/crashsight/protobuf/Schema;->d(Ljava/lang/Object;)V

    .line 248
    iput-object p3, p4, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    return p2

    .line 243
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static a([BI)I
    .locals 2

    .line 155
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 79
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 81
    iput p1, p2, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    return v0

    .line 84
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(I[BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    return p0
.end method

.method static a([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
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

    .line 425
    check-cast p2, Lcom/uqm/crashsight/protobuf/IntArrayList;

    .line 426
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 427
    iget v0, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 429
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 430
    iget v1, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {p2, v1}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 433
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static b(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 289
    check-cast p4, Lcom/uqm/crashsight/protobuf/LongArrayList;

    .line 290
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 291
    iget-wide v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-virtual {p4, v0, v1}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    :goto_0
    if-ge p2, p3, :cond_0

    .line 293
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 294
    iget v1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p0, v1, :cond_0

    .line 297
    invoke-static {p1, v0, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 298
    iget-wide v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-virtual {p4, v0, v1}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    goto :goto_0

    :cond_0
    return p2
.end method

.method static b(Lcom/uqm/crashsight/protobuf/Schema;I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Schema;",
            "I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
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

    and-int/lit8 v0, p1, -0x8

    or-int/lit8 v0, v0, 0x4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v0

    move-object v6, p6

    .line 734
    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 735
    iget-object v1, p6, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_0

    .line 737
    invoke-static {p2, p3, p6}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 738
    iget v1, p6, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p1, v1, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v4, p4

    move v5, v0

    move-object v6, p6

    .line 741
    invoke-static/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a(Lcom/uqm/crashsight/protobuf/Schema;[BIIILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 742
    iget-object v1, p6, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return p3
.end method

.method static b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 129
    aget-byte v1, p0, p1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 131
    iput-wide v1, p2, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    return v0

    :cond_0
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    add-int/lit8 p1, p1, 0x2

    .line 2141
    aget-byte v0, p0, v0

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x7

    :goto_0
    if-gez v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 2145
    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    .line 2149
    :cond_1
    iput-wide v1, p2, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    return p1
.end method

.method static b([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
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

    .line 441
    check-cast p2, Lcom/uqm/crashsight/protobuf/LongArrayList;

    .line 442
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 443
    iget v0, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 445
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 446
    iget-wide v1, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-virtual {p2, v1, v2}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 449
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static b([BI)J
    .locals 7

    .line 163
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static c([BI)D
    .locals 0

    .line 175
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static c(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 306
    check-cast p4, Lcom/uqm/crashsight/protobuf/IntArrayList;

    .line 307
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_0

    .line 310
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 311
    iget v1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p0, v1, :cond_0

    .line 314
    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_0
    return p2
.end method

.method static c([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 187
    iget v0, p2, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    .line 191
    const-string p0, ""

    iput-object p0, p2, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    return p1

    .line 194
    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 189
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static c([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
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

    .line 457
    check-cast p2, Lcom/uqm/crashsight/protobuf/IntArrayList;

    .line 458
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 459
    iget p3, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 461
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    .line 465
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static d([BI)F
    .locals 0

    .line 180
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method static d(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 323
    check-cast p4, Lcom/uqm/crashsight/protobuf/LongArrayList;

    .line 324
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_0

    .line 327
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 328
    iget v1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p0, v1, :cond_0

    .line 331
    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_0
    return p2
.end method

.method static d([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 202
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 203
    iget v0, p2, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    .line 207
    const-string p0, ""

    iput-object p0, p2, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    return p1

    .line 210
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->b([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 205
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static d([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
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

    .line 473
    check-cast p2, Lcom/uqm/crashsight/protobuf/LongArrayList;

    .line 474
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 475
    iget p3, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 477
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BI)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    .line 481
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static e(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 340
    check-cast p4, Lcom/uqm/crashsight/protobuf/FloatArrayList;

    .line 341
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BI)F

    move-result v0

    invoke-virtual {p4, v0}, Lcom/uqm/crashsight/protobuf/FloatArrayList;->a(F)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_0

    .line 344
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 345
    iget v1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p0, v1, :cond_0

    .line 348
    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BI)F

    move-result p2

    invoke-virtual {p4, p2}, Lcom/uqm/crashsight/protobuf/FloatArrayList;->a(F)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_0
    return p2
.end method

.method static e([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 218
    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 219
    iget v0, p2, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v0, :cond_2

    .line 222
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 225
    sget-object p0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object p0, p2, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    return p1

    .line 228
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a([BII)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p0

    iput-object p0, p2, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 223
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 221
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static e([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
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

    .line 489
    check-cast p2, Lcom/uqm/crashsight/protobuf/FloatArrayList;

    .line 490
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 491
    iget p3, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 493
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->d([BI)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/uqm/crashsight/protobuf/FloatArrayList;->a(F)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    .line 497
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static f(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 357
    check-cast p4, Lcom/uqm/crashsight/protobuf/DoubleArrayList;

    .line 358
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BI)D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/uqm/crashsight/protobuf/DoubleArrayList;->a(D)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_0

    .line 361
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 362
    iget v1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p0, v1, :cond_0

    .line 365
    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BI)D

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/uqm/crashsight/protobuf/DoubleArrayList;->a(D)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_0
    return p2
.end method

.method static f([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
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

    .line 505
    check-cast p2, Lcom/uqm/crashsight/protobuf/DoubleArrayList;

    .line 506
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 507
    iget p3, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 509
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->c([BI)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/uqm/crashsight/protobuf/DoubleArrayList;->a(D)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    .line 513
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static g(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 374
    check-cast p4, Lcom/uqm/crashsight/protobuf/BooleanArrayList;

    .line 375
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 376
    iget-wide v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p4, v0}, Lcom/uqm/crashsight/protobuf/BooleanArrayList;->a(Z)V

    :goto_1
    if-ge p2, p3, :cond_2

    .line 378
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 379
    iget v1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p0, v1, :cond_2

    .line 382
    invoke-static {p1, v0, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 383
    iget-wide v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p4, v0}, Lcom/uqm/crashsight/protobuf/BooleanArrayList;->a(Z)V

    goto :goto_1

    :cond_2
    return p2
.end method

.method static g([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
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

    .line 521
    check-cast p2, Lcom/uqm/crashsight/protobuf/BooleanArrayList;

    .line 522
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 523
    iget v0, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 525
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 526
    iget-wide v1, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Lcom/uqm/crashsight/protobuf/BooleanArrayList;->a(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    return p1

    .line 529
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static h(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 391
    check-cast p4, Lcom/uqm/crashsight/protobuf/IntArrayList;

    .line 392
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 393
    iget v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    :goto_0
    if-ge p2, p3, :cond_0

    .line 395
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 396
    iget v1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p0, v1, :cond_0

    .line 399
    invoke-static {p1, v0, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 400
    iget v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    goto :goto_0

    :cond_0
    return p2
.end method

.method static h([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
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

    .line 537
    check-cast p2, Lcom/uqm/crashsight/protobuf/IntArrayList;

    .line 538
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 539
    iget v0, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 541
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 542
    iget v1, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/uqm/crashsight/protobuf/IntArrayList;->d(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 545
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static i(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 408
    check-cast p4, Lcom/uqm/crashsight/protobuf/LongArrayList;

    .line 409
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 410
    iget-wide v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    :goto_0
    if-ge p2, p3, :cond_0

    .line 412
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 413
    iget v1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p0, v1, :cond_0

    .line 416
    invoke-static {p1, v0, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 417
    iget-wide v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    goto :goto_0

    :cond_0
    return p2
.end method

.method static i([BILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
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

    .line 554
    check-cast p2, Lcom/uqm/crashsight/protobuf/LongArrayList;

    .line 555
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 556
    iget v0, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 558
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->b([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 559
    iget-wide v1, p3, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 562
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static j(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 573
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 574
    iget v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v0, :cond_4

    .line 577
    const-string v1, ""

    if-nez v0, :cond_0

    .line 578
    invoke-interface {p4, v1}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 580
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 581
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_3

    .line 585
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 586
    iget v2, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p0, v2, :cond_3

    .line 589
    invoke-static {p1, v0, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 590
    iget v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v0, :cond_2

    if-nez v0, :cond_1

    .line 594
    invoke-interface {p4, v1}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 596
    :cond_1
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 597
    invoke-interface {p4, v2}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_3
    return p2

    .line 576
    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static k(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 612
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 613
    iget v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v0, :cond_6

    .line 616
    const-string v1, ""

    if-nez v0, :cond_0

    .line 617
    invoke-interface {p4, v1}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int v2, p2, v0

    .line 619
    invoke-static {p1, p2, v2}, Lcom/uqm/crashsight/protobuf/Utf8;->a([BII)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 622
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 623
    invoke-interface {p4, v3}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    :goto_0
    move p2, v2

    :goto_1
    if-ge p2, p3, :cond_4

    .line 627
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 628
    iget v2, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p0, v2, :cond_4

    .line 631
    invoke-static {p1, v0, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 632
    iget v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v0, :cond_3

    if-nez v0, :cond_1

    .line 636
    invoke-interface {p4, v1}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int v2, p2, v0

    .line 638
    invoke-static {p1, p2, v2}, Lcom/uqm/crashsight/protobuf/Utf8;->a([BII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 641
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 642
    invoke-interface {p4, v3}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 639
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->l()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 634
    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    return p2

    .line 620
    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->l()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 615
    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static l(I[BIILcom/uqm/crashsight/protobuf/Internal$ProtobufList;Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/uqm/crashsight/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 655
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 656
    iget v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v0, :cond_6

    .line 659
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_5

    if-nez v0, :cond_0

    .line 662
    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-interface {p4, v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 664
    :cond_0
    invoke-static {p1, p2, v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a([BII)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_4

    .line 668
    invoke-static {p1, p2, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 669
    iget v1, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ne p0, v1, :cond_4

    .line 672
    invoke-static {p1, v0, p5}, Lcom/uqm/crashsight/protobuf/ArrayDecoders;->a([BILcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 673
    iget v0, p5, Lcom/uqm/crashsight/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v0, :cond_3

    .line 676
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_2

    if-nez v0, :cond_1

    .line 679
    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-interface {p4, v0}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 681
    :cond_1
    invoke-static {p1, p2, v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a([BII)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 677
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 675
    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    return p2

    .line 660
    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 658
    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method
