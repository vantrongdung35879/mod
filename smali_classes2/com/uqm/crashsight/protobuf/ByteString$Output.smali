.class public final Lcom/uqm/crashsight/protobuf/ByteString$Output;
.super Ljava/io/OutputStream;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/uqm/crashsight/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:[B

.field private e:I


# direct methods
.method private declared-synchronized a()I
    .locals 2

    monitor-enter p0

    .line 1094
    :try_start_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(I)V
    .locals 3

    .line 1119
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->d:[B

    invoke-direct {v1, v2}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    iget v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->c:I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->d:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->c:I

    .line 1124
    iget v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->a:I

    ushr-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1125
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->d:[B

    const/4 p1, 0x0

    .line 1126
    iput p1, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->e:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1111
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ByteString$Output;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 1109
    const-string v0, "<ByteString.Output@%s size=%d>"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    .line 1019
    :try_start_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->e:I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->d:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1020
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/ByteString$Output;->a(I)V

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->d:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->e:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized write([BII)V
    .locals 3

    monitor-enter p0

    .line 1027
    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->d:[B

    array-length v1, v0

    iget v2, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->e:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_0

    .line 1029
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1030
    iget p1, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1033
    :cond_0
    :try_start_1
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 1034
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 1039
    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/ByteString$Output;->a(I)V

    .line 1040
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->d:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1041
    iput p3, p0, Lcom/uqm/crashsight/protobuf/ByteString$Output;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1043
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
