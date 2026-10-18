.class public Lcom/ngame/resources/RD_FileIntegrityChecker;
.super Ljava/lang/Object;
.source "RD_FileIntegrityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Resources"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckAllExtractorFilesCorrect(Z)Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkMd5"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/ngame/resources/RD_FileIntegrityChecker;->readAssetsConfig()Lorg/json/JSONArray;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;

    invoke-direct {v1}, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;-><init>()V

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 37
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 39
    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 40
    const-string v5, "path"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ngame/resources/RD_Path;->getResourcesOutputPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-static {v6}, Lcom/ngame/resources/RD_FileHelper;->isExists(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 47
    iput-boolean v2, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->result:Z

    .line 48
    iput-object v5, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileName:Ljava/lang/String;

    .line 49
    const-string p0, "file not exist"

    iput-object p0, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->exceptionMsg:Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    .line 55
    const-string v7, "md5"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-static {v6}, Lcom/ngame/resources/RD_FileHelper;->file2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 59
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 60
    const-string p0, "Resources"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "md5 fails\uff0cpath="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\uff0cconfig md5="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\uff0cfile md5="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-boolean v2, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->result:Z

    .line 62
    iput-object v5, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileName:Ljava/lang/String;

    .line 63
    iput-object v4, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileMD5:Ljava/lang/String;

    .line 64
    iput-object v7, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->errorMD5:Ljava/lang/String;

    .line 65
    const-string p0, "md5 not match"

    iput-object p0, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->exceptionMsg:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 71
    iput-boolean v2, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->result:Z

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileName:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileMD5:Ljava/lang/String;

    .line 74
    iput-object v2, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->errorMD5:Ljava/lang/String;

    .line 75
    const-string/jumbo p0, "unkonw exception"

    iput-object p0, v1, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->exceptionMsg:Ljava/lang/String;

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static readAssetsConfig()Lorg/json/JSONArray;
    .locals 3

    .line 88
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 89
    invoke-static {}, Lcom/ngame/resources/RD_FileIntegrityChecker;->readStringFromAssets()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 94
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/ngame/resources/RD_Path;->getABIString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 98
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static readStringFromAssets()Ljava/lang/String;
    .locals 8

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 111
    :try_start_0
    sget-object v2, Lcom/ngame/resources/RD_Path;->context:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "res.data"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 112
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 122
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 123
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 129
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 132
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v4

    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_5

    :catch_2
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    move-object v3, v4

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    move-object v1, v2

    move-object v2, v4

    .line 125
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_1

    .line 129
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 132
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_2
    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 138
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :cond_3
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_3
    move-exception v0

    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_4

    .line 129
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_7

    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 132
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    :cond_5
    if-eqz v2, :cond_6

    .line 135
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    .line 138
    :goto_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    :cond_6
    :goto_8
    throw v0
.end method
