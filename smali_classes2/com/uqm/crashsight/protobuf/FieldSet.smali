.class final Lcom/uqm/crashsight/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/FieldSet$Builder;,
        Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lcom/uqm/crashsight/protobuf/FieldSet;


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 114
    new-instance v0, Lcom/uqm/crashsight/protobuf/FieldSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;-><init>(B)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/FieldSet;->d:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 82
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(I)Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    const/4 p1, 0x0

    .line 88
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(I)Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;-><init>(Lcom/uqm/crashsight/protobuf/SmallSortedMap;)V

    .line 89
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/FieldSet;->e()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/SmallSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    .line 94
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/FieldSet;->e()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/SmallSortedMap;B)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;-><init>(Lcom/uqm/crashsight/protobuf/SmallSortedMap;)V

    return-void
.end method

.method static a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 1

    .line 811
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p1

    .line 812
    sget-object v0, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->j:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    if-ne p0, v0, :cond_0

    shl-int/lit8 p1, p1, 0x1

    .line 817
    :cond_0
    invoke-static {p0, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->d(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->b()I

    move-result p0

    return p0
.end method

.method public static a()Lcom/uqm/crashsight/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/SmallSortedMap;Z)Lcom/uqm/crashsight/protobuf/SmallSortedMap;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/SmallSortedMap;Z)Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    sget-object p2, Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;->b:Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Lcom/uqm/crashsight/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    sget-object v0, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->j:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_0

    .line 631
    check-cast p3, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 633
    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(II)V

    .line 634
    invoke-static {p0, p1, p3}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    sget-object v0, Lcom/uqm/crashsight/protobuf/FieldSet$1;->b:[I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 711
    :pswitch_0
    instance-of p1, p2, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    if-eqz p1, :cond_0

    .line 712
    check-cast p2, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;->a()I

    move-result p1

    .line 2455
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(I)V

    return-void

    .line 714
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3455
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(I)V

    goto/16 :goto_0

    .line 707
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(J)V

    return-void

    .line 704
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(I)V

    return-void

    .line 701
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 2432
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(J)V

    return-void

    .line 698
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2409
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)V

    return-void

    .line 695
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(I)V

    return-void

    .line 688
    :pswitch_6
    instance-of p1, p2, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz p1, :cond_1

    .line 689
    check-cast p2, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void

    .line 691
    :cond_1
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b([B)V

    return-void

    .line 681
    :pswitch_7
    instance-of p1, p2, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz p1, :cond_2

    .line 682
    check-cast p2, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void

    .line 684
    :cond_2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(Ljava/lang/String;)V

    return-void

    .line 678
    :pswitch_8
    check-cast p2, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)V

    return-void

    .line 675
    :pswitch_9
    check-cast p2, Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 2038
    invoke-interface {p2, p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void

    .line 672
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(Z)V

    return-void

    .line 669
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)V

    return-void

    .line 666
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(J)V

    return-void

    .line 663
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(I)V

    return-void

    .line 660
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(J)V

    return-void

    .line 657
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1414
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(J)V

    return-void

    .line 654
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(F)V

    return-void

    .line 651
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(D)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/uqm/crashsight/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 725
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->e()I

    move-result v1

    .line 726
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 727
    check-cast p1, Ljava/util/List;

    .line 728
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->p()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 729
    invoke-virtual {p2, v1, p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(II)V

    .line 732
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 733
    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->d(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 4093
    :cond_0
    invoke-virtual {p2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(I)V

    .line 737
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 738
    invoke-static {p2, v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_1

    .line 741
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 742
    invoke-static {p2, v0, v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    return-void

    .line 746
    :cond_3
    instance-of p0, p1, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz p0, :cond_4

    .line 747
    check-cast p1, Lcom/uqm/crashsight/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/LazyField;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p0

    invoke-static {p2, v0, v1, p0}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void

    .line 749
    :cond_4
    invoke-static {p2, v0, v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private static a(Ljava/util/Map$Entry;Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/uqm/crashsight/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    .line 600
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->g()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;->i:Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_1

    .line 601
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 602
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 604
    instance-of v1, v0, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz v1, :cond_0

    .line 605
    check-cast v0, Lcom/uqm/crashsight/protobuf/LazyField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/LazyField;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v0

    .line 607
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->e()I

    move-result p0

    check-cast v0, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    return-void

    .line 609
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map$Entry;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 217
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    .line 218
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 219
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz v1, :cond_0

    .line 220
    check-cast p1, Lcom/uqm/crashsight/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/LazyField;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 221
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 222
    new-instance p2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 224
    :cond_1
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/FieldSet;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->c:Z

    return p1
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcom/uqm/crashsight/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/uqm/crashsight/protobuf/FieldSet;->d:Lcom/uqm/crashsight/protobuf/FieldSet;

    return-object v0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/FieldSet;)Lcom/uqm/crashsight/protobuf/SmallSortedMap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    return-object p0
.end method

.method private static b(Lcom/uqm/crashsight/protobuf/SmallSortedMap;Z)Lcom/uqm/crashsight/protobuf/SmallSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Lcom/uqm/crashsight/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/uqm/crashsight/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 205
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(I)Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->c()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 207
    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->d()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    invoke-static {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 508
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 509
    check-cast p0, [B

    .line 510
    array-length v0, p0

    new-array v0, v0, [B

    .line 511
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private static b(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 0

    .line 394
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 402
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 459
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    .line 460
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->g()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;->i:Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 461
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 462
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 463
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/MessageLite;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 468
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 469
    instance-of v0, p0, Lcom/uqm/crashsight/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 470
    check-cast p0, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 473
    :cond_2
    instance-of p0, p0, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz p0, :cond_3

    return v3

    .line 476
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method public static c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 893
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 894
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->e()I

    move-result v1

    .line 895
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 896
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->p()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 898
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 899
    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->d(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 902
    :cond_0
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 903
    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->l(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 906
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 907
    invoke-static {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    .line 912
    :cond_3
    invoke-static {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static c()Lcom/uqm/crashsight/protobuf/FieldSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/uqm/crashsight/protobuf/FieldSet$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;-><init>(B)V

    return-object v0
.end method

.method private c(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 520
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    .line 521
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 522
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz v1, :cond_0

    .line 523
    check-cast p1, Lcom/uqm/crashsight/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/LazyField;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p1

    .line 526
    :cond_0
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 527
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 529
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 531
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 532
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    :cond_2
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 535
    :cond_3
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->g()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;->i:Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_5

    .line 536
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 538
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 541
    :cond_4
    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 543
    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/MessageLite;->toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    move-result-object v1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    move-result-object p1

    .line 544
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->build()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p1

    .line 545
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 548
    :cond_5
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private static c(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .locals 2

    .line 408
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/uqm/crashsight/protobuf/FieldSet$1;->a:[I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->a()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    return v1

    .line 429
    :pswitch_0
    instance-of p0, p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0

    .line 426
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_3

    instance-of p0, p1, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0

    .line 423
    :pswitch_2
    instance-of p0, p1, Lcom/uqm/crashsight/protobuf/ByteString;

    if-nez p0, :cond_5

    instance-of p0, p1, [B

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v0

    .line 421
    :pswitch_3
    instance-of p0, p1, Ljava/lang/String;

    return p0

    .line 419
    :pswitch_4
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    .line 417
    :pswitch_5
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    .line 415
    :pswitch_6
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    .line 413
    :pswitch_7
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    .line 411
    :pswitch_8
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static d(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .locals 1

    .line 829
    sget-object v0, Lcom/uqm/crashsight/protobuf/FieldSet$1;->b:[I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 888
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 881
    :pswitch_0
    instance-of p0, p1, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    if-eqz p0, :cond_0

    .line 882
    check-cast p1, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;->a()I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->j(I)I

    move-result p0

    return p0

    .line 884
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->j(I)I

    move-result p0

    return p0

    .line 871
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(J)I

    move-result p0

    return p0

    .line 869
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i(I)I

    move-result p0

    return p0

    .line 867
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d()I

    move-result p0

    return p0

    .line 865
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b()I

    move-result p0

    return p0

    .line 863
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result p0

    return p0

    .line 851
    :pswitch_6
    instance-of p0, p1, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz p0, :cond_1

    .line 852
    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(Lcom/uqm/crashsight/protobuf/ByteString;)I

    move-result p0

    return p0

    .line 854
    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c([B)I

    move-result p0

    return p0

    .line 857
    :pswitch_7
    instance-of p0, p1, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz p0, :cond_2

    .line 858
    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(Lcom/uqm/crashsight/protobuf/ByteString;)I

    move-result p0

    return p0

    .line 860
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 874
    :pswitch_8
    instance-of p0, p1, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz p0, :cond_3

    .line 875
    check-cast p1, Lcom/uqm/crashsight/protobuf/LazyField;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(Lcom/uqm/crashsight/protobuf/LazyFieldLite;)I

    move-result p0

    return p0

    .line 877
    :cond_3
    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(Lcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 849
    :pswitch_9
    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(Lcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 847
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g()I

    move-result p0

    return p0

    .line 845
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a()I

    move-result p0

    return p0

    .line 843
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c()I

    move-result p0

    return p0

    .line 841
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    return p0

    .line 839
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(J)I

    move-result p0

    return p0

    .line 837
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(J)I

    move-result p0

    return p0

    .line 835
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    invoke-static {}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e()I

    move-result p0

    return p0

    .line 833
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    invoke-static {}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static d(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 783
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    .line 784
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 785
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->g()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;->i:Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_1

    .line 786
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v2

    if-nez v2, :cond_1

    .line 787
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->p()Z

    move-result v2

    if-nez v2, :cond_1

    .line 788
    instance-of v0, v1, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz v0, :cond_0

    .line 790
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->e()I

    move-result p0

    check-cast v1, Lcom/uqm/crashsight/protobuf/LazyField;

    .line 789
    invoke-static {p0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(ILcom/uqm/crashsight/protobuf/LazyFieldLite;)I

    move-result p0

    return p0

    .line 793
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->e()I

    move-result p0

    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 792
    invoke-static {p0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 796
    :cond_1
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 327
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 337
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 335
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 328
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 578
    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 580
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 583
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 278
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 289
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 280
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_2
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 296
    :goto_1
    instance-of v0, p2, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->c:Z

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/FieldSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 499
    :goto_0
    iget-object v1, p1, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 500
    iget-object v1, p1, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_0
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->d()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 503
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 253
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 267
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz v0, :cond_0

    .line 268
    check-cast p1, Lcom/uqm/crashsight/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/LazyField;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 589
    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Ljava/util/Map$Entry;Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 593
    invoke-static {v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Ljava/util/Map$Entry;Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 367
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1, v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 380
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 383
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 368
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 306
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->c:Z

    :cond_0
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/FieldSet;->g()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 312
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 321
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 313
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final d()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a()V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->b:Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 147
    :cond_0
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/FieldSet;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 151
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/FieldSet;

    .line 152
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->b:Z

    return v0
.end method

.method public final g()Lcom/uqm/crashsight/protobuf/FieldSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 1099
    new-instance v0, Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;-><init>()V

    const/4 v1, 0x0

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->c()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    .line 178
    :cond_1
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->c:Z

    iput-boolean v1, v0, Lcom/uqm/crashsight/protobuf/FieldSet;->c:Z

    return-object v0
.end method

.method public final h()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->clear()V

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->c:Z

    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 193
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->c:Z

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/SmallSortedMap;Z)Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a()V

    :cond_0
    return-object v0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 233
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->c:Z

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lcom/uqm/crashsight/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 443
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->c()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 444
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 449
    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final l()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 760
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->c()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 761
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v2, v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 762
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 765
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final m()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 773
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->c()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 774
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v2, v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->d(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 777
    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->d(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method
