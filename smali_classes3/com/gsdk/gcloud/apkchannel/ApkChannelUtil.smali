.class public final Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;
.super Ljava/lang/Object;
.source "ApkChannelUtil.java"


# static fields
.field public static final CHANNELID:Ljava/lang/String; = "channelId"

.field public static final CHANNEL_ID_WHITE_LIST_END:I = 0x55d4a7f

.field public static final CHANNEL_ID_WHITE_LIST_START:I = 0x55bc3e0

.field public static final OFFICIAL_CHANNEL_ID_WHITE_LIST_END:I = 0x4c4b3ff

.field public static final OFFICIAL_CHANNEL_ID_WHITE_LIST_START:I = 0x4c32d60

.field public static final TAG:Ljava/lang/String; = "ApkChannelUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearChannel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 444
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->clearKeyValuePair(Ljava/lang/String;)V

    return-void
.end method

.method private static clearKeyValuePair(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 558
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->clearComment(Ljava/lang/String;)Z

    return-void
.end method

.method public static getCDFHOffset(Ljava/lang/String;)J
    .locals 4

    const-string v0, "getCDFHOffset offset:"

    const-wide/16 v1, 0x0

    .line 112
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->readCDFHOffset(Ljava/lang/String;)J

    move-result-wide v1

    .line 113
    const-string p0, "ApkChannelUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    return-wide v1

    :catch_1
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-wide v1
.end method

.method public static getCDFHSize(Ljava/lang/String;)J
    .locals 4

    const-string v0, "getCDFHSize size:"

    const-wide/16 v1, 0x0

    .line 132
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->readCDFHSize(Ljava/lang/String;)J

    move-result-wide v1

    .line 133
    const-string p0, "ApkChannelUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception p0

    .line 138
    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    return-wide v1

    :catch_1
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-wide v1
.end method

.method public static getEOCDOffset(Ljava/lang/String;)J
    .locals 4

    const-string v0, "getEOCDOffset offset:"

    const-wide/16 v1, 0x0

    .line 151
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->readEOCDOffset(Ljava/lang/String;)J

    move-result-wide v1

    .line 152
    const-string p0, "ApkChannelUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    return-wide v1

    :catch_1
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-wide v1
.end method

.method public static getEOCDSize(Ljava/lang/String;)J
    .locals 4

    const-string v0, "getEOCDSize size:"

    const-wide/16 v1, 0x0

    .line 167
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->readEOCDSize(Ljava/lang/String;)J

    move-result-wide v1

    .line 168
    const-string p0, "ApkChannelUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception p0

    .line 173
    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    return-wide v1

    :catch_1
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-wide v1
.end method

.method private static getV2ChannelBlockId(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->getApkCurChannelId(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 452
    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private static getV2ChannelBlockValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "apollo0511 getV2ChannelBlockValue apkFilePath:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApkChannelUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 465
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->getApkCurChannelValue(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 467
    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    return-object v0

    .line 474
    :cond_0
    new-instance v1, Lcom/gsdk/gcloud/apkchannel/ChannelComment;

    invoke-direct {v1}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;-><init>()V

    .line 476
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->getValue([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 478
    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V

    return-object v0
.end method

.method public static getV2ChannelId(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const-string v0, "ApkChannelUtil"

    .line 0
    const-string v1, "getV2ChannelId apkFilePath:"

    .line 203
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->getV2ChannelBlockId(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    const-string p0, "getV2ChannelId exception!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getV2ChannelOffset(Ljava/lang/String;)J
    .locals 4

    const-string v0, "getV2ChannelOffset offset:"

    const-wide/16 v1, 0x0

    .line 44
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->readCommentOffset(Ljava/lang/String;)J

    move-result-wide v1

    .line 45
    const-string p0, "ApkChannelUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    return-wide v1

    :catch_1
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-wide v1
.end method

.method public static getV2ChannelSize(Ljava/lang/String;)J
    .locals 4

    const-string v0, "getV2ChannelSize size:"

    const-wide/16 v1, 0x0

    .line 60
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->readCommentSize(Ljava/lang/String;)J

    move-result-wide v1

    .line 61
    const-string p0, "ApkChannelUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    return-wide v1

    :catch_1
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-wide v1
.end method

.method public static getV2ChannelValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    const-string v0, "ApkChannelUtil"

    .line 0
    const-string v1, "getV2ChannelValue apkFilePath:"

    .line 219
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->getV2ChannelBlockValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    const-string p0, "getV2ChannelValue exception!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getV2SignBlockOffset(Ljava/lang/String;)J
    .locals 4

    const-string v0, "getV2SignBlockOffset offset:"

    const-wide/16 v1, 0x0

    .line 79
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->getSignBlockOffset(Ljava/lang/String;)J

    move-result-wide v1

    .line 80
    const-string p0, "ApkChannelUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    return-wide v1

    :catch_1
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-wide v1
.end method

.method public static getV2SignBlockSize(Ljava/lang/String;)J
    .locals 4

    const-string v0, "getV2SignBlockSize size:"

    const-wide/16 v1, 0x0

    .line 95
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->getSignBlockSize(Ljava/lang/String;)J

    move-result-wide v1

    .line 96
    const-string p0, "ApkChannelUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    return-wide v1

    :catch_1
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-wide v1
.end method

.method public static isSignatureV2Apk(Ljava/lang/String;)I
    .locals 3

    const-string v0, "isSignatureV2Apk ret:"

    .line 27
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    .line 28
    const-string v1, "ApkChannelUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static readChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 233
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->readChannelComment(Ljava/lang/String;)Lcom/gsdk/gcloud/apkchannel/ChannelComment;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 238
    :cond_0
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->p:Ljava/util/Properties;

    const-string v1, "channelId"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static readChannelComment(Ljava/lang/String;)Lcom/gsdk/gcloud/apkchannel/ChannelComment;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->readYYBComment(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->readComment(Ljava/lang/String;)[B

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 498
    :cond_0
    new-instance v1, Lcom/gsdk/gcloud/apkchannel/ChannelComment;

    invoke-direct {v1}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;-><init>()V

    .line 500
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->decode([B)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception p0

    .line 502
    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V

    return-object v0
.end method

.method public static updateChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    const-string v0, "channelId"

    invoke-static {p0, v0, p1}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->updateKeyValuePair(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static updateKeyValueBlock(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    .line 543
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 547
    :cond_1
    new-instance v0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;

    invoke-direct {v0}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;-><init>()V

    .line 550
    invoke-static {p2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    invoke-virtual {v0, p1}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->updateChannInfoBlock(Ljava/lang/String;I[B)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static updateKeyValuePair(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 518
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->readChannelComment(Ljava/lang/String;)Lcom/gsdk/gcloud/apkchannel/ChannelComment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;

    invoke-direct {v0}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;-><init>()V

    .line 522
    :cond_0
    iget-object v1, v0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->p:Ljava/util/Properties;

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 523
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 524
    invoke-virtual {v0}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->updateYYBComment(Ljava/lang/String;[B)V

    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {v0}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    :goto_0
    return-void
.end method

.method public static updateV2ChannelInfo(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    const-string v0, "ApkChannelUtil"

    .line 0
    const-string/jumbo v1, "updateV2ChannelInfo channelId:"

    .line 186
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",channelInfo:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",apkFilePath:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {p0, p1, p2}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->updateKeyValueBlock(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    const-string/jumbo p0, "updateV2ChannelInfo exception!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static writeOldCommentToNewFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->readChannelComment(Ljava/lang/String;)Lcom/gsdk/gcloud/apkchannel/ChannelComment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 252
    invoke-static {p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->updateYYBComment(Ljava/lang/String;[B)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static writeOldCommentToNewFileWithWhiteList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    const-string v0, "ApkChannelUtil"

    .line 0
    const-string v1, "final_apk_channel_value="

    const-string/jumbo v2, "value="

    .line 261
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->readChannelComment(Ljava/lang/String;)Lcom/gsdk/gcloud/apkchannel/ChannelComment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 263
    const-string p0, "Comment is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 266
    :cond_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 269
    const-string p0, "old_apk_channel_value is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 272
    :cond_1
    invoke-static {p1}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 276
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 280
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v6, 0x4c32d60

    .line 281
    const-string/jumbo v7, "use v2 signature"

    const-string/jumbo v8, "use v1 signature"

    if-lt p0, v6, :cond_7

    const v9, 0x55d4a7f

    if-gt p0, v9, :cond_7

    .line 283
    const-string v2, "old channel="

    if-nez v4, :cond_4

    .line 285
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " new channel value is null"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 288
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->updateYYBComment(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 293
    :cond_3
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 297
    :cond_4
    const-string v4, " new channel="

    if-lt p0, v6, :cond_6

    const v6, 0x4c4b3ff

    if-gt p0, v6, :cond_6

    const v6, 0x55bc3e0

    if-lt v5, v6, :cond_6

    if-gt v5, v9, :cond_6

    .line 299
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 302
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->updateYYBComment(Ljava/lang/String;[B)V

    goto :goto_1

    .line 307
    :cond_5
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    goto :goto_1

    .line 313
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string p0, "Don\'t need reWrite channel Value"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 322
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->updateYYBComment(Ljava/lang/String;[B)V

    goto :goto_1

    .line 325
    :cond_8
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    .line 330
    :goto_1
    invoke-static {p1}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    const-string/jumbo p0, "writeOldCommentToNewFileWithWhiteList exception!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static writeOldCommentToNewFileWithWhiteListRetunReWriteRes(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 342
    const-string v0, "ApkChannelUtil"

    .line 0
    const-string v1, "final_apk_channel_value="

    const-string/jumbo v2, "value="

    .line 342
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->readChannelComment(Ljava/lang/String;)Lcom/gsdk/gcloud/apkchannel/ChannelComment;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 344
    const-string p0, "Comment is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 347
    :cond_0
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 350
    const-string p0, "old_apk_channel_value is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 353
    :cond_1
    invoke-static {p1}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 357
    const-string/jumbo v6, "use v2 signature"

    const-string/jumbo v7, "use v1 signature"

    if-eqz v5, :cond_2

    .line 358
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 361
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const v9, 0x4c32d60

    if-lt p0, v9, :cond_7

    const v10, 0x55d4a7f

    if-gt p0, v10, :cond_7

    .line 384
    const-string v2, "old channel="

    if-nez v5, :cond_4

    .line 386
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " new channel value is null"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 389
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->updateYYBComment(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 394
    :cond_3
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 398
    :cond_4
    const-string v5, " new channel="

    if-lt p0, v9, :cond_6

    const v9, 0x4c4b3ff

    if-gt p0, v9, :cond_6

    const v9, 0x55bc3e0

    if-lt v8, v9, :cond_6

    if-gt v8, v10, :cond_6

    .line 400
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 403
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->updateYYBComment(Ljava/lang/String;[B)V

    goto :goto_1

    .line 408
    :cond_5
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    goto :goto_1

    .line 414
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string p0, "Don\'t need reWrite channel Value"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 423
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->updateYYBComment(Ljava/lang/String;[B)V

    goto :goto_1

    .line 426
    :cond_8
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    .line 431
    :goto_1
    invoke-static {p1}, Lcom/gsdk/gcloud/apkchannel/ApkChannelUtil;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 364
    :catch_0
    const-string p0, "old_channelValue or new_channelValue is character\uff0c rewrite old channel directly."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 367
    :try_start_4
    invoke-static {p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 368
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->updateYYBComment(Ljava/lang/String;[B)V

    goto :goto_2

    .line 371
    :cond_9
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/apkchannel/v1/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    const/16 p0, 0x7d0

    return p0

    :catch_1
    move-exception p0

    .line 375
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    const-string/jumbo p0, "writeOldCommentToNewFileWithWhiteListReturnReWriteRes exception!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/16 p0, 0x7d1

    return p0

    :catch_2
    move-exception p0

    .line 436
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    const-string/jumbo p0, "writeOldCommentToNewFileWithWhiteListRetunReWriteRes exception!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x3e9

    return p0
.end method
