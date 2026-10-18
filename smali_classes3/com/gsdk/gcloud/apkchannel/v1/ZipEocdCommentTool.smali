.class public final Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;
.super Ljava/lang/Object;
.source "ZipEocdCommentTool.java"


# static fields
.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final EOCD_SIG:Lcom/gsdk/gcloud/apkchannel/v1/ZipLong;

.field private static final MIN_EOCD_SIZE:I = 0x16

.field private static final TAG:Ljava/lang/String; = "ZipEocdCommentTool"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/gsdk/gcloud/apkchannel/v1/ZipLong;

    const-wide/32 v1, 0x6054b50

    invoke-direct {v0, v1, v2}, Lcom/gsdk/gcloud/apkchannel/v1/ZipLong;-><init>(J)V

    sput-object v0, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->EOCD_SIG:Lcom/gsdk/gcloud/apkchannel/v1/ZipLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearComment(Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 109
    new-array v2, v1, [B

    aput-byte v0, v2, v0

    .line 111
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-eqz p0, :cond_2

    .line 118
    invoke-static {v3}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->readComment(Ljava/io/RandomAccessFile;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 120
    array-length p0, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 124
    :goto_0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    int-to-long v6, p0

    sub-long/2addr v4, v6

    int-to-long v8, v1

    add-long/2addr v4, v8

    .line 125
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    sub-long/2addr v8, v10

    sub-long/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 126
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 127
    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 128
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 131
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    return v1

    .line 113
    :cond_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 114
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Your file length is zero !!"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return v0
.end method

.method private static readComment(Ljava/io/RandomAccessFile;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    .line 147
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 148
    sget-object v2, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->EOCD_SIG:Lcom/gsdk/gcloud/apkchannel/v1/ZipLong;

    invoke-virtual {v2}, Lcom/gsdk/gcloud/apkchannel/v1/ZipLong;->getBytes()[B

    move-result-object v2

    .line 149
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2

    .line 154
    aget-byte v4, v2, v6

    if-ne v3, v4, :cond_0

    .line 155
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    const/4 v4, 0x1

    .line 156
    aget-byte v7, v2, v4

    if-ne v3, v7, :cond_0

    .line 157
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    .line 158
    aget-byte v7, v2, v5

    if-ne v3, v7, :cond_0

    .line 159
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    const/4 v7, 0x3

    .line 160
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

    .line 170
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 171
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v6, :cond_4

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    .line 178
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 180
    new-array v0, v5, [B

    .line 181
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 183
    new-instance v1, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    invoke-direct {v1, v0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;-><init>([B)V

    invoke-virtual {v1}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;->getValue()I

    move-result v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 187
    :cond_3
    new-array v0, v0, [B

    .line 188
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    return-object v0

    .line 174
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

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    .line 57
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 58
    const-string p0, "ZipEocdCommentTool"

    const-string v1, "apollo0511 readComment ERROR:[ZipEocdCommentTool]Your file length is zero!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 61
    :cond_1
    invoke-static {v1}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->readComment(Ljava/io/RandomAccessFile;)[B

    move-result-object p0

    .line 62
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static updateComment(Ljava/lang/String;[B)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_2

    .line 86
    invoke-static {v1}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->readComment(Ljava/io/RandomAccessFile;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 88
    array-length v0, p0

    .line 92
    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    array-length p0, p1

    int-to-long v6, p0

    add-long/2addr v2, v6

    .line 93
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    sub-long/2addr v6, v8

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 94
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;-><init>(I)V

    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipShort;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 95
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 96
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 99
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const/4 p0, 0x1

    return p0

    .line 81
    :cond_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 82
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Your file length is zero !!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return v0
.end method
