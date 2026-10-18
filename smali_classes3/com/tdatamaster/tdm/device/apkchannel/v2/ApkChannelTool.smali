.class public final Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool;
.super Ljava/lang/Object;
.source "ApkChannelTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;
    }
.end annotation


# static fields
.field public static final ADJUST_TRACKER_TOKEN:Ljava/lang/String; = "adjustTrackerToken"

.field public static final CHANNEL_ID:Ljava/lang/String; = "channelId"

.field private static final TAG:Ljava/lang/String; = "ApkChannelTool"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAdjustTrackerToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const-string v0, "ApkChannelTool"

    const-string v1, "read apk adjust traker token"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool;->readMsdkComment(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    const-string v0, "adjustTrackerToken"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const-string v0, "ApkChannelTool"

    const-string v1, "read apk Channel"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool;->readMsdkComment(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    const-string v0, "channelId"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readMsdkComment(Ljava/lang/String;)Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "is v2 signature : "

    .line 60
    invoke-static {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV3Apk(Ljava/lang/String;)Z

    move-result v1

    .line 61
    invoke-static {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result v2

    .line 63
    const-string v3, "ApkChannelTool"

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    const-string v0, "is v1 signature"

    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", is v3 signature : "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkSignatureV2ChannelTool;->readMsdkComment(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_1
    move-object v0, v4

    :goto_2
    if-nez v0, :cond_3

    .line 77
    invoke-static {p0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ZipEocdCommentTool;->readComment(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 79
    const-string/jumbo p0, "you are use v2 signature but use v1 channel modle"

    invoke-static {v3, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo p0, "this apk will can\'t install in 7.0 system"

    invoke-static {v3, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 82
    const-string/jumbo p0, "you are use v3 signature but use v1 channel modle"

    invoke-static {v3, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo p0, "this apk will can\'t install in 9.0 system"

    invoke-static {v3, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    if-nez v0, :cond_4

    return-object v4

    .line 89
    :cond_4
    new-instance p0, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;

    invoke-direct {p0, v4}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;-><init>(Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$1;)V

    .line 91
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/tdatamaster/tdm/device/apkchannel/v2/ApkChannelTool$MSDKComment;->decode([B)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method
