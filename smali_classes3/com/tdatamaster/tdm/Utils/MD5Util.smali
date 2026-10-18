.class public Lcom/tdatamaster/tdm/Utils/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field private static TAG:Ljava/lang/String; = "TUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Encode([B)[B
    .locals 1

    .line 22
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 24
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static Encode2Base64([B)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/tdatamaster/tdm/Utils/MD5Util;->Encode([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/tdatamaster/tdm/Utils/Base64Util;->Encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Encode2HexStr([B)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/tdatamaster/tdm/Utils/MD5Util;->Encode([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/tdatamaster/tdm/Utils/HexUtil;->Bytes2HexStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static EncodeAssets2HexStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 145
    invoke-static {p0, p1}, Lcom/tdatamaster/tdm/Utils/MD5Util;->EncodeAssetsFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/tdatamaster/tdm/Utils/HexUtil;->Bytes2HexStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static EncodeAssetsFile(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 6

    .line 96
    const-string v0, "IOEXCeption"

    const-string v1, "IOEXCeption: "

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    const/16 v4, 0x400

    .line 98
    new-array v4, v4, [B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8

    .line 103
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_0
    :try_start_2
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    const/4 v5, 0x0

    .line 105
    invoke-virtual {v3, v4, v5, p1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    .line 116
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_1

    :catch_0
    move-exception p0

    .line 119
    :try_start_4
    sget-object v3, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object p0, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_1
    :goto_1
    move-object v2, p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p0, v2

    goto/16 :goto_5

    :catch_2
    move-exception p1

    move-object p0, v2

    .line 111
    :goto_2
    :try_start_5
    sget-object v3, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object p1, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_2

    .line 116
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_4

    :catch_3
    move-exception p0

    .line 119
    :try_start_7
    sget-object p1, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object p0, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    :goto_3
    invoke-static {p0, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_4

    :catch_4
    move-object p0, v2

    .line 109
    :catch_5
    :try_start_8
    sget-object p1, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    const-string v3, "FileNotFoundException\uff0cmay not be noticed if not using the encrypt function"

    invoke-static {p1, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz p0, :cond_2

    .line 116
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_4

    :catch_6
    move-exception p0

    .line 119
    :try_start_a
    sget-object p1, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object p0, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_3

    :cond_2
    :goto_4
    return-object v2

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz p0, :cond_3

    .line 116
    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_6

    :catch_7
    move-exception p0

    .line 119
    :try_start_c
    sget-object v3, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object p0, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_3
    :goto_6
    throw p1
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_8

    :catch_8
    move-exception p0

    .line 125
    sget-object p1, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NoSuchAlgorithmException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object p0, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    const-string p1, "NoSuchAlgorithmException"

    invoke-static {p0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static EncodeFile(Ljava/lang/String;)[B
    .locals 6

    .line 56
    const-string v0, "IOException: "

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 57
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x400

    .line 58
    new-array p0, p0, [B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4

    .line 62
    :goto_0
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    .line 63
    invoke-virtual {v2, p0, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_0
    move-exception v2

    .line 73
    :try_start_3
    sget-object v3, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_1
    move-object v1, p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 67
    :try_start_4
    sget-object v2, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOEXCeption: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_2
    move-exception p0

    .line 73
    :try_start_6
    sget-object v2, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_2
    return-object v1

    .line 71
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_3
    move-exception v2

    .line 73
    :try_start_8
    sget-object v3, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception p0

    .line 83
    sget-object v0, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoSuchAlgorithmException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_5
    move-exception p0

    .line 79
    sget-object v0, Lcom/tdatamaster/tdm/Utils/MD5Util;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FileNotFoundException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->Debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static EncodeFile2Base64(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 154
    invoke-static {p0}, Lcom/tdatamaster/tdm/Utils/MD5Util;->EncodeFile(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 158
    :cond_0
    invoke-static {p0}, Lcom/tdatamaster/tdm/Utils/Base64Util;->Encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static EncodeFile2HexStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 136
    invoke-static {p0}, Lcom/tdatamaster/tdm/Utils/MD5Util;->EncodeFile(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/tdatamaster/tdm/Utils/HexUtil;->Bytes2HexStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
