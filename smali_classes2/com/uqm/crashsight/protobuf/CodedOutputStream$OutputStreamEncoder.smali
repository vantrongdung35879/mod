.class final Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;
.super Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputStreamEncoder"
.end annotation


# instance fields
.field private final e:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 2712
    invoke-direct {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    if-eqz p1, :cond_0

    .line 2716
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    return-void

    .line 2714
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private k(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x14

    .line 2733
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->p(I)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 2734
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->j(II)V

    .line 2735
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->n(I)V

    return-void
.end method

.method private l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3062
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 3063
    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    return-void
.end method

.method private p(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3056
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 3057
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2866
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    if-ne v0, v1, :cond_0

    .line 2867
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l()V

    .line 2870
    :cond_0
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b(B)V

    return-void
.end method

.method public final a(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2721
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 2747
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->p(I)V

    const/4 v0, 0x0

    .line 2748
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->j(II)V

    .line 2749
    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->g(J)V

    return-void
.end method

.method public final a(ILcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2774
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    .line 2775
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method public final a(ILcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2823
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    .line 2824
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2768
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    .line 2769
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 2761
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->p(I)V

    const/4 v0, 0x0

    .line 2762
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->j(II)V

    int-to-byte p1, p2

    .line 2763
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b(B)V

    return-void
.end method

.method public final a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 2897
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->p(I)V

    .line 2898
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->g(J)V

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2800
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c(I)V

    .line 2801
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Lcom/uqm/crashsight/protobuf/ByteOutput;)V

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2854
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c(I)V

    .line 2855
    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2912
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2913
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->h(I)I

    move-result v1

    add-int v2, v1, v0

    .line 2917
    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    if-le v2, v3, :cond_0

    .line 2922
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2923
    invoke-static {p1, v1, v2, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 2924
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c(I)V

    .line 4013
    invoke-virtual {p0, v1, v2, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a([BII)V

    return-void

    .line 2930
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_1

    .line 2932
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l()V

    .line 2937
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->h(I)I

    move-result v0

    .line 2938
    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    .line 2942
    :try_start_1
    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    .line 2943
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    iget v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v5, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 2946
    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 2948
    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->n(I)V

    .line 2949
    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    goto :goto_0

    .line 2951
    :cond_2
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;)I

    move-result v3

    .line 2952
    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->n(I)V

    .line 2953
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-static {p1, v0, v1, v3}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    .line 2955
    :goto_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I
    :try_end_1
    .catch Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2963
    :try_start_2
    new-instance v1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 2959
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    .line 2960
    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    .line 2961
    throw v0
    :try_end_2
    .catch Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 2966
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;)V

    :goto_1
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4018
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 4019
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    .line 4021
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 4022
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    .line 4023
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    return-void

    .line 4027
    :cond_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v1, v2

    .line 4028
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    .line 4030
    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    .line 4031
    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    .line 4032
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l()V

    .line 4037
    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 4039
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 4040
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 4041
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    sub-int/2addr v0, v1

    .line 4042
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    goto :goto_0

    .line 4044
    :cond_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 4045
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    .line 4046
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    return-void
.end method

.method public final a([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2980
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 2982
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2983
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    goto :goto_0

    .line 2988
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    .line 2989
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 2992
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    .line 2993
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    .line 2994
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l()V

    .line 2999
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    if-gt p3, v0, :cond_1

    .line 3001
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3002
    iput p3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    goto :goto_0

    .line 3005
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 3007
    :goto_0
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    return-void
.end method

.method public final b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 2876
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 2879
    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(J)V

    return-void
.end method

.method public final b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 2726
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->p(I)V

    const/4 v0, 0x0

    .line 2727
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->j(II)V

    .line 2728
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->m(I)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 2754
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->p(I)V

    const/4 v0, 0x1

    .line 2755
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->j(II)V

    .line 2756
    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->h(J)V

    return-void
.end method

.method public final b(ILcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 2846
    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    const/4 v2, 0x2

    .line 2847
    invoke-direct {p0, v2, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->k(II)V

    .line 2848
    invoke-virtual {p0, v1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    const/4 p1, 0x4

    .line 2849
    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    return-void
.end method

.method public final b(ILcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 2837
    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    const/4 v2, 0x2

    .line 2838
    invoke-direct {p0, v2, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->k(II)V

    .line 2839
    invoke-virtual {p0, v1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    const/4 p1, 0x4

    .line 2840
    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    return-void
.end method

.method public final b([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3013
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a([BII)V

    return-void
.end method

.method public final c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 2885
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->p(I)V

    .line 2886
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->n(I)V

    return-void
.end method

.method public final c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 2740
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->p(I)V

    const/4 v0, 0x5

    .line 2741
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->j(II)V

    .line 2742
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->o(I)V

    return-void
.end method

.method public final c(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 2903
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->p(I)V

    .line 2904
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->h(J)V

    return-void
.end method

.method public final c([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2806
    invoke-virtual {p0, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c(I)V

    const/4 p2, 0x0

    .line 2807
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a([BII)V

    return-void
.end method

.method public final e(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 2891
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->p(I)V

    .line 2892
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->o(I)V

    return-void
.end method

.method public final h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2972
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    if-lez v0, :cond_0

    .line 2974
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l()V

    :cond_0
    return-void
.end method
