.class public final Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool;
.super Ljava/lang/Object;
.source "ApkChannelTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool$MSDKComment;
    }
.end annotation


# static fields
.field public static final ADJUST_TRACKER_TOKEN:Ljava/lang/String; = "adjustTrackerToken"

.field public static final CHANNEL_ID:Ljava/lang/String; = "channelId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAdjustTrackerToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkFilePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const-string v0, "read apk adjust traker token"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool;->readMsdkComment(Ljava/lang/String;)Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool$MSDKComment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    const-string v0, "adjustTrackerToken"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkFilePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    const-string v0, "read apk Channel"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool;->readMsdkComment(Ljava/lang/String;)Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool$MSDKComment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    const-string v0, "channelId"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readMsdkComment(Ljava/lang/String;)Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool$MSDKComment;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkFilePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "is v2 signature : "

    .line 59
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result v1

    .line 60
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    const-string v0, "is v1 signature"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", is v3 signature : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkSignatureV2ChannelTool;->readMsdkComment(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_1
    move-object v0, v3

    :goto_2
    if-nez v0, :cond_3

    .line 76
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ZipEocdCommentTool;->readComment(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 78
    const-string/jumbo p0, "you are use v2 signature but use v1 channel modle"

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 79
    const-string/jumbo p0, "this apk will can\'t install in 7.0 system"

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 81
    const-string/jumbo p0, "you are use v3 signature but use v1 channel modle"

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 82
    const-string/jumbo p0, "this apk will can\'t install in 9.0 system"

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    :cond_3
    :goto_3
    if-nez v0, :cond_4

    return-object v3

    .line 88
    :cond_4
    new-instance p0, Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool$MSDKComment;

    invoke-direct {p0, v3}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool$MSDKComment;-><init>(Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool$1;)V

    .line 90
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/tools/apkchannel/v2/ApkChannelTool$MSDKComment;->decode([B)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V

    return-object v3
.end method
