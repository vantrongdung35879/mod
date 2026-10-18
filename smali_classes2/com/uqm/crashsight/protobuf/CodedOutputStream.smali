.class public abstract Lcom/uqm/crashsight/protobuf/CodedOutputStream;
.super Lcom/uqm/crashsight/protobuf/ByteOutput;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$SafeDirectNioEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$HeapNioEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a:Ljava/util/logging/Logger;

    .line 61
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a()Z

    move-result v0

    sput-boolean v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ByteOutput;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static a(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static a(ID)I
    .locals 0

    .line 597
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static a(IF)I
    .locals 0

    .line 589
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static a(ILcom/uqm/crashsight/protobuf/LazyFieldLite;)I
    .locals 1

    .line 653
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    .line 2857
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->b()I

    move-result p1

    .line 2886
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method static a(ILcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I
    .locals 0

    .line 670
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(Lcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/LazyFieldLite;)I
    .locals 1

    .line 857
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->b()I

    move-result p0

    .line 4886
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static a(Lcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I
    .locals 0

    .line 882
    check-cast p0, Lcom/uqm/crashsight/protobuf/AbstractMessageLite;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result p0

    .line 8886
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/uqm/crashsight/protobuf/CodedOutputStream;
    .locals 1

    .line 105
    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;

    invoke-direct {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static a([B)Lcom/uqm/crashsight/protobuf/CodedOutputStream;
    .locals 3

    .line 115
    array-length v0, p0

    .line 1126
    new-instance v1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;-><init>([BII)V

    return-object v1
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static b(ILcom/uqm/crashsight/protobuf/LazyFieldLite;)I
    .locals 2

    const/4 v0, 0x1

    .line 701
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 702
    invoke-static {v1, p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 703
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/LazyFieldLite;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static b(ILcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1070
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 9082
    check-cast p1, Lcom/uqm/crashsight/protobuf/AbstractMessageLite;

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 0

    .line 621
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IZ)I
    .locals 0

    .line 604
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Lcom/uqm/crashsight/protobuf/ByteString;)I
    .locals 1

    .line 862
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p0

    .line 5886
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Lcom/uqm/crashsight/protobuf/MessageLite;)I
    .locals 1

    .line 877
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result p0

    .line 7886
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .line 842
    :try_start_0
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 845
    :catch_0
    sget-object v0, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 846
    array-length p0, p0

    .line 3886
    :goto_0
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static c()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static c(IJ)I
    .locals 0

    .line 549
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    .line 1763
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(ILcom/uqm/crashsight/protobuf/ByteString;)I
    .locals 1

    .line 629
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    .line 1862
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p1

    .line 1886
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static c(ILcom/uqm/crashsight/protobuf/MessageLite;)I
    .locals 0

    .line 661
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(Lcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(Lcom/uqm/crashsight/protobuf/MessageLite;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1076
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method public static c([B)I
    .locals 1

    .line 867
    array-length p0, p0

    .line 6886
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static d()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static d(II)I
    .locals 0

    .line 509
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(IJ)I
    .locals 0

    .line 557
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(ILcom/uqm/crashsight/protobuf/ByteString;)I
    .locals 2

    const/4 v0, 0x1

    .line 689
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 690
    invoke-static {v1, p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 691
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/ByteString;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(ILcom/uqm/crashsight/protobuf/MessageLite;)I
    .locals 2

    const/4 v0, 0x1

    .line 678
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 679
    invoke-static {v1, p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 680
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(J)I
    .locals 0

    .line 763
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(J)I

    move-result p0

    return p0
.end method

.method public static e()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static e(II)I
    .locals 0

    .line 517
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(IJ)I
    .locals 0

    .line 565
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    .line 1796
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static f()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static f(I)I
    .locals 1

    const/4 v0, 0x0

    .line 710
    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result p0

    return p0
.end method

.method public static f(II)I
    .locals 0

    .line 525
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    .line 1745
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->m(I)I

    move-result p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(IJ)I
    .locals 0

    .line 573
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static f(ILcom/uqm/crashsight/protobuf/MessageLite;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1059
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 9076
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(J)I
    .locals 0

    .line 796
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(J)I

    move-result p0

    return p0
.end method

.method public static g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static g(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 719
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static g(II)I
    .locals 0

    .line 533
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static g(IJ)I
    .locals 0

    .line 581
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private static g(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static h(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static h(II)I
    .locals 0

    .line 541
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static i(I)I
    .locals 0

    .line 745
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->m(I)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result p0

    return p0
.end method

.method public static i(II)I
    .locals 0

    .line 613
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    .line 1835
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static j(I)I
    .locals 0

    .line 835
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    return p0
.end method

.method static k(I)I
    .locals 1

    .line 886
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic k()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b:Z

    return v0
.end method

.method public static l(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1114
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->h(I)I

    move-result p0

    return p0
.end method

.method private static m(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract a(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(J)V

    return-void
.end method

.method public final a(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->e(I)V

    return-void
.end method

.method public abstract a(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILcom/uqm/crashsight/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILcom/uqm/crashsight/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/uqm/crashsight/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    sget-object v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 993
    sget-object p2, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 995
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(I)V

    .line 996
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1000
    throw p1

    :catch_1
    move-exception p1

    .line 998
    new-instance p2, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 447
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(B)V

    return-void
.end method

.method public abstract b(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(ILcom/uqm/crashsight/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(ILcom/uqm/crashsight/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(J)V

    return-void
.end method

.method public final b([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 469
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c([BII)V

    return-void
.end method

.method public abstract b([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract c([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->m(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(I)V

    return-void
.end method

.method public abstract e(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final e(ILcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 1013
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(II)V

    .line 9038
    invoke-interface {p2, p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    const/4 p2, 0x4

    .line 1015
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(II)V

    return-void
.end method

.method public abstract h()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i()I
.end method

.method public final j()V
    .locals 2

    .line 938
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 939
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
