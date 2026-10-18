.class public final Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;
.super Ljava/lang/Object;
.source "ZipEocdCommentTool.java"


# static fields
.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final EOCD_SIG:Lcom/gsdk/gcloud/newapkchannel/v2/ZipLong;

.field private static final MIN_EOCD_SIZE:I = 0x16


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/gsdk/gcloud/newapkchannel/v2/ZipLong;

    const-wide/32 v1, 0x6054b50

    invoke-direct {v0, v1, v2}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipLong;-><init>(J)V

    sput-object v0, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->EOCD_SIG:Lcom/gsdk/gcloud/newapkchannel/v2/ZipLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static readComment(Ljava/io/RandomAccessFile;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    .line 63
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 64
    sget-object v2, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->EOCD_SIG:Lcom/gsdk/gcloud/newapkchannel/v2/ZipLong;

    invoke-virtual {v2}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipLong;->getBytes()[B

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2

    .line 70
    aget-byte v4, v2, v6

    if-ne v3, v4, :cond_0

    .line 71
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    const/4 v4, 0x1

    .line 72
    aget-byte v7, v2, v4

    if-ne v3, v7, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    .line 74
    aget-byte v7, v2, v5

    if-ne v3, v7, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    const/4 v7, 0x3

    .line 76
    aget-byte v7, v2, v7

    if-ne v3, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v7, v0, v3

    if-gez v7, :cond_1

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 87
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v6, :cond_4

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    .line 94
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 96
    new-array v0, v5, [B

    .line 97
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 99
    new-instance v1, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;

    invoke-direct {v1, v0}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;-><init>([B)V

    invoke-virtual {v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;->getValue()I

    move-result v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_3
    new-array v0, v0, [B

    .line 104
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    return-object v0

    .line 90
    :cond_4
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "archive is not a ZIP archive"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readComment(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    .line 45
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 46
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR:[ZipEocdCommentTool]Your file length is zero!"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    .line 49
    :cond_1
    invoke-static {v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->readComment(Ljava/io/RandomAccessFile;)[B

    move-result-object p0

    .line 50
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static updateComment(Ljava/lang/String;[B)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 122
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-eqz p0, :cond_2

    .line 129
    invoke-static {v2}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->readComment(Ljava/io/RandomAccessFile;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 131
    array-length v0, p0

    .line 135
    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    int-to-long v0, v0

    sub-long/2addr v3, v0

    array-length p0, p1

    int-to-long v5, p0

    add-long/2addr v3, v5

    .line 136
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    sub-long/2addr v5, v7

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 137
    new-instance p0, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;-><init>(I)V

    invoke-virtual {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipShort;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 138
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 139
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    const/4 p0, 0x1

    return p0

    .line 124
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 125
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Your file length is zero !!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v1, :cond_3

    .line 143
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 145
    :cond_3
    throw p0

    :cond_4
    :goto_1
    return v0
.end method
