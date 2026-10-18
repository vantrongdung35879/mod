.class public final Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool;
.super Ljava/lang/Object;
.source "ApkExternalInfoTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;
    }
.end annotation


# static fields
.field private static final ADJUST_TRACKER_TOKEN:Ljava/lang/String; = "adjustTrackerToken"

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CHANNEL_ID:Ljava/lang/String; = "channelId"

.field protected static final EOCD_SIG:Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipLong;

.field private static final MIN_EOCD_SIZE:I = 0x16

.field private static protoHead:Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipLong;

    const-wide/32 v1, 0x6054b50

    invoke-direct {v0, v1, v2}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipLong;-><init>(J)V

    sput-object v0, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool;->EOCD_SIG:Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipLong;

    .line 92
    new-instance v0, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipShort;

    const v1, 0x96fa

    invoke-direct {v0, v1}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipShort;-><init>(I)V

    sput-object v0, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool;->protoHead:Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipShort;
    .locals 1

    .line 13
    sget-object v0, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool;->protoHead:Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipShort;

    return-object v0
.end method

.method public static read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "apkFile",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool;->readComment(Ljava/io/RandomAccessFile;)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    .line 115
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    .line 110
    :cond_0
    :try_start_2
    new-instance v2, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;

    invoke-direct {v2, v0}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;-><init>(Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool$1;)V

    .line 111
    invoke-virtual {v2, p0}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;->decode([B)V

    .line 112
    iget-object p0, v2, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool$ApkExternalInfo;->p:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 117
    :cond_1
    throw p0
.end method

.method public static readAdjustTrackerToken(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const-string v0, "adjustTrackerToken"

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readChannelId(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const-string v0, "channelId"

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readComment(Ljava/io/RandomAccessFile;)[B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    .line 153
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 154
    sget-object v2, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ApkExternalInfoTool;->EOCD_SIG:Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipLong;

    invoke-virtual {v2}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipLong;->getBytes()[B

    move-result-object v2

    .line 155
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x0

    .line 160
    aget-byte v4, v2, v4

    if-ne v3, v4, :cond_1

    .line 161
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    const/4 v4, 0x1

    .line 162
    aget-byte v4, v2, v4

    if-ne v3, v4, :cond_1

    .line 163
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    const/4 v4, 0x2

    .line 164
    aget-byte v5, v2, v4

    if-ne v3, v5, :cond_1

    .line 165
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    const/4 v5, 0x3

    .line 166
    aget-byte v5, v2, v5

    if-ne v3, v5, :cond_1

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    .line 181
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 183
    new-array v0, v4, [B

    .line 184
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 186
    new-instance v1, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipShort;

    invoke-direct {v1, v0}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipShort;-><init>([B)V

    invoke-virtual {v1}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v1/ZipShort;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_0
    new-array v0, v0, [B

    .line 191
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    return-object v0

    :cond_1
    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    .line 173
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 174
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    goto :goto_0

    .line 177
    :cond_2
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "archive is not a ZIP archive"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
