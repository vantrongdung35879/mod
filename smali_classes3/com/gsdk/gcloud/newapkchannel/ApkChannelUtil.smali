.class public final Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;
.super Ljava/lang/Object;
.source "ApkChannelUtil.java"


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "channelId"

.field public static final CHANNEL_ID_WHITE_LIST_END:I = 0x55d4a7f

.field public static final CHANNEL_ID_WHITE_LIST_START:I = 0x55bc3e0

.field public static final OFFICIAL_CHANNEL_ID_WHITE_LIST_END:I = 0x4c4b3ff

.field public static final OFFICIAL_CHANNEL_ID_WHITE_LIST_START:I = 0x4c32d60

.field public static final TAG:Ljava/lang/String; = "ApkChannelUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetSignatureSize(Ljava/lang/String;)I
    .locals 1

    .line 79
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->readMsdkComment(Ljava/lang/String;)Lcom/gsdk/gcloud/newapkchannel/MSDKComment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;

    invoke-direct {v0}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;-><init>()V

    .line 83
    :cond_0
    invoke-static {p0, v0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->GetApkSignatureSize(Ljava/lang/String;Lcom/gsdk/gcloud/newapkchannel/MSDKComment;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const-string p0, "ApkChannelUtil"

    const-string v0, "GetSignatureSize Exception."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static isSignatureV2Apk(Ljava/lang/String;)I
    .locals 4

    .line 21
    const-string v0, "ApkChannelUtil"

    .line 0
    const-string v1, "isSignatureV2Apk ret:"

    const/4 v2, 0x0

    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 p0, 0x0

    .line 28
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    const-string v1, "judge isSignatureV2Apk exception failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public static isSignatureV2PlusApk(Ljava/lang/String;)I
    .locals 13

    .line 57
    const-string v0, "ApkChannelUtil"

    .line 0
    const-string v1, "isSignV2Plus ret:"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->GetSignatureSize(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    .line 60
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->getSignaturOffset(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x1000

    .line 61
    rem-long/2addr v4, v8

    const-wide/16 v10, 0x0

    cmp-long p0, v4, v10

    if-nez p0, :cond_0

    rem-long/2addr v6, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long p0, v6, v10

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 64
    :goto_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v12, v1

    move v1, p0

    move-object p0, v12

    goto :goto_1

    :catch_1
    move-exception p0

    const/4 v1, 0x0

    .line 67
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    const-string p0, "judge isSignV2Plus exception failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v1

    :goto_2
    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public static isSignatureV3Apk(Ljava/lang/String;)I
    .locals 4

    .line 39
    const-string v0, "ApkChannelUtil"

    .line 0
    const-string v1, "isSignatureV3Apk ret:"

    const/4 v2, 0x0

    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 p0, 0x0

    .line 46
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    const-string v1, "judge isSignatureV3Apk exception failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public static readChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 99
    const-string v0, "channelId"

    const-string v1, "ApkChannelUtil"

    .line 0
    const-string v2, "readChannel success, channel="

    const/4 v3, 0x0

    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->readMsdkComment(Ljava/lang/String;)Lcom/gsdk/gcloud/newapkchannel/MSDKComment;

    move-result-object p0

    if-nez p0, :cond_0

    .line 101
    const-string p0, "readChannel, Comment is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 104
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->getP()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->getP()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const-string p0, "readChannel exception failed!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static readMsdkComment(Ljava/lang/String;)Lcom/gsdk/gcloud/newapkchannel/MSDKComment;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result v0

    .line 344
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 349
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->readYYBComment(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 351
    invoke-virtual {v3}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    :cond_1
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_3

    .line 357
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->readComment(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 359
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v0, "you are use v2 signature but use v1 channel modle"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 361
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v0, "you are use v3 signature but use v1 channel modle"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    return-object v2

    .line 367
    :cond_4
    new-instance p0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;

    invoke-direct {p0}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;-><init>()V

    .line 369
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->decode([B)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 371
    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V

    return-object v2
.end method

.method public static updateChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    const-string v0, "channelId"

    invoke-static {p0, v0, p1}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->updateKeyValuePair(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static updateKeyValuePair(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->readMsdkComment(Ljava/lang/String;)Lcom/gsdk/gcloud/newapkchannel/MSDKComment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;

    invoke-direct {v0}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;-><init>()V

    .line 389
    :cond_0
    invoke-virtual {v0}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->getP()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p1

    .line 391
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result p2

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {v0}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->encode()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    goto :goto_1

    .line 393
    :cond_2
    :goto_0
    invoke-static {p0, v0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->updateYYBComment(Ljava/lang/String;Lcom/gsdk/gcloud/newapkchannel/MSDKComment;)V

    :goto_1
    return-void
.end method

.method public static writeOldCommentToNewFileWithWhiteList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "final_apk_channel_value="

    .line 119
    const-string v1, "start writeOldCommentToNewFileWithWhiteList."

    const-string v2, "ApkChannelUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->readMsdkComment(Ljava/lang/String;)Lcom/gsdk/gcloud/newapkchannel/MSDKComment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 123
    const-string p0, "old apk Comment is null, writeOldCommentToNewFileWithWhiteList end."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 129
    const-string p0, "old_apk_channel_value is null, writeOldCommentToNewFileWithWhiteList end."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_1
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 138
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const-string v6, "old channel="

    if-nez v3, :cond_3

    .line 142
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " new channel = null;"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " new channel="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const p0, 0x4c32d60

    .line 147
    const-string/jumbo v7, "use v1 way rewrite channel"

    const-string/jumbo v8, "use v2 way rewrite channel"

    const-string/jumbo v9, "use v3 way rewrite channel"

    if-lt v5, p0, :cond_c

    const v10, 0x55d4a7f

    if-gt v5, v10, :cond_c

    if-nez v3, :cond_7

    .line 151
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new channel value is null"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    .line 153
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result v3

    if-nez p0, :cond_5

    if-eqz v3, :cond_4

    goto :goto_2

    .line 162
    :cond_4
    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v1}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    goto/16 :goto_8

    :cond_5
    :goto_2
    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move-object v8, v9

    .line 157
    :goto_3
    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {p1, v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->updateYYBComment(Ljava/lang/String;Lcom/gsdk/gcloud/newapkchannel/MSDKComment;)V

    goto :goto_8

    :cond_7
    if-lt v5, p0, :cond_b

    const p0, 0x4c4b3ff

    if-gt v5, p0, :cond_b

    const p0, 0x55bc3e0

    if-lt v4, p0, :cond_b

    if-gt v4, v10, :cond_b

    .line 169
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    .line 170
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result v3

    if-nez p0, :cond_9

    if-eqz v3, :cond_8

    goto :goto_4

    .line 179
    :cond_8
    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v1}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    goto :goto_8

    :cond_9
    :goto_4
    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    move-object v8, v9

    .line 174
    :goto_5
    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p1, v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->updateYYBComment(Ljava/lang/String;Lcom/gsdk/gcloud/newapkchannel/MSDKComment;)V

    goto :goto_8

    .line 185
    :cond_b
    const-string p0, "Don\'t need reWrite channel Value"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 190
    :cond_c
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    .line 191
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result v3

    if-nez p0, :cond_e

    if-eqz v3, :cond_d

    goto :goto_6

    .line 200
    :cond_d
    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v1}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    goto :goto_8

    :cond_e
    :goto_6
    if-eqz p0, :cond_f

    goto :goto_7

    :cond_f
    move-object v8, v9

    .line 195
    :goto_7
    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {p1, v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->updateYYBComment(Ljava/lang/String;Lcom/gsdk/gcloud/newapkchannel/MSDKComment;)V

    .line 205
    :goto_8
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string/jumbo p0, "writeOldCommentToNewFileWithWhiteList end."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    const-string/jumbo p0, "writeOldCommentToNewFileWithWhiteList exception failed!"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static writeOldCommentToNewFileWithWhiteListRetunReWriteRes(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    const-string v0, "final_apk_channel_value="

    const-string v1, "old channel="

    .line 219
    const-string v2, "start writeOldCommentToNewFileWithWhiteList."

    const-string v3, "ApkChannelUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_0
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->readMsdkComment(Ljava/lang/String;)Lcom/gsdk/gcloud/newapkchannel/MSDKComment;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 223
    const-string p0, "old apk Comment is null, writeOldCommentToNewFileWithWhiteList end."

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 226
    :cond_0
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 229
    const-string p0, "old_apk_channel_value is null, writeOldCommentToNewFileWithWhiteList end."

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 232
    :cond_1
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 236
    const-string/jumbo v6, "use v1 way rewrite channel"

    const-string/jumbo v7, "use v2 way rewrite channel"

    const-string/jumbo v8, "use v3 way rewrite channel"

    if-eqz v5, :cond_2

    .line 237
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .line 240
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const v10, 0x4c32d60

    if-lt p0, v10, :cond_b

    const v11, 0x55d4a7f

    if-gt p0, v11, :cond_b

    if-nez v5, :cond_6

    .line 270
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " new channel value is null"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    .line 272
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result v1

    if-nez p0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    .line 281
    :cond_3
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v2}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    goto/16 :goto_7

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v7, v8

    .line 276
    :goto_2
    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {p1, v2}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->updateYYBComment(Ljava/lang/String;Lcom/gsdk/gcloud/newapkchannel/MSDKComment;)V

    goto :goto_7

    :cond_6
    if-lt p0, v10, :cond_a

    const v1, 0x4c4b3ff

    if-gt p0, v1, :cond_a

    const p0, 0x55bc3e0

    if-lt v9, p0, :cond_a

    if-gt v9, v11, :cond_a

    .line 288
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    .line 289
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result v1

    if-nez p0, :cond_8

    if-eqz v1, :cond_7

    goto :goto_3

    .line 298
    :cond_7
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {v2}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    goto :goto_7

    :cond_8
    :goto_3
    if-eqz p0, :cond_9

    goto :goto_4

    :cond_9
    move-object v7, v8

    .line 293
    :goto_4
    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {p1, v2}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->updateYYBComment(Ljava/lang/String;Lcom/gsdk/gcloud/newapkchannel/MSDKComment;)V

    goto :goto_7

    .line 304
    :cond_a
    const-string p0, "Don\'t need reWrite channel Value"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 309
    :cond_b
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    .line 310
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result v1

    if-nez p0, :cond_d

    if-eqz v1, :cond_c

    goto :goto_5

    .line 319
    :cond_c
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v2}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    goto :goto_7

    :cond_d
    :goto_5
    if-eqz p0, :cond_e

    goto :goto_6

    :cond_e
    move-object v7, v8

    .line 314
    :goto_6
    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {p1, v2}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->updateYYBComment(Ljava/lang/String;Lcom/gsdk/gcloud/newapkchannel/MSDKComment;)V

    .line 324
    :goto_7
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/ApkChannelUtil;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string/jumbo p0, "writeOldCommentToNewFileWithWhiteList end."

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 243
    :catch_0
    const-string p0, "old_channelValue or new_channelValue is character\uff0c rewrite old channel directly."

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 246
    :try_start_3
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result p0

    .line 247
    invoke-static {p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result v0

    if-nez p0, :cond_10

    if-eqz v0, :cond_f

    goto :goto_8

    .line 256
    :cond_f
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v2}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->encode()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipEocdCommentTool;->updateComment(Ljava/lang/String;[B)Z

    goto :goto_a

    :cond_10
    :goto_8
    if-eqz p0, :cond_11

    goto :goto_9

    :cond_11
    move-object v7, v8

    .line 251
    :goto_9
    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {p1, v2}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->updateYYBComment(Ljava/lang/String;Lcom/gsdk/gcloud/newapkchannel/MSDKComment;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_a
    const/16 p0, 0x7d0

    return p0

    :catch_1
    move-exception p0

    .line 260
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    const-string/jumbo p0, "writeOldCommentToNewFileWithWhiteListReturnReWriteRes exception!"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/16 p0, 0x7d1

    return p0

    :catch_2
    move-exception p0

    .line 331
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    const-string/jumbo p0, "writeOldCommentToNewFileWithWhiteListRetunReWriteRes exception failed!"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x3e9

    return p0
.end method
