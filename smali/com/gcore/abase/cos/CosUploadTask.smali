.class public Lcom/gcore/abase/cos/CosUploadTask;
.super Ljava/lang/Object;
.source "CosUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "GCloud.CosUploadTask"


# instance fields
.field private mComParams:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mNextPos:J

.field private mNextUrl:Ljava/lang/String;

.field private mPartSize:J

.field private mResultListener:Lcom/gcore/abase/cos/CosResultListener;

.field private mUploadUrl:Ljava/lang/String;

.field private mUploadid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/gcore/abase/cos/CosUploadTask;->mResultListener:Lcom/gcore/abase/cos/CosResultListener;

    .line 28
    iput-object v0, p0, Lcom/gcore/abase/cos/CosUploadTask;->mUploadid:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/gcore/abase/cos/CosUploadTask;->mFilePath:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 30
    iput-wide v1, p0, Lcom/gcore/abase/cos/CosUploadTask;->mPartSize:J

    .line 31
    iput-object v0, p0, Lcom/gcore/abase/cos/CosUploadTask;->mComParams:Ljava/lang/String;

    .line 32
    iput-wide v1, p0, Lcom/gcore/abase/cos/CosUploadTask;->mNextPos:J

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/gcore/abase/cos/CosUploadTask;->mNextUrl:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/gcore/abase/cos/CosUploadTask;->mUploadUrl:Ljava/lang/String;

    return-void
.end method

.method private prepareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gcore/abase/cos/Credential;)I
    .locals 11

    .line 96
    const-string v0, "prepareFile excepiton "

    const-string v1, "UTF-8"

    const-string v2, "GCloud.CosUploadTask"

    .line 0
    const-string v3, "preparefile url is "

    const-string v4, "http error code "

    const-string v5, "com_params="

    .line 96
    invoke-static {p1}, Lcom/gcore/abase/utils/FileUtils;->fileToSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 p1, 0x0

    .line 103
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 104
    const-string/jumbo v10, "upload_id"

    invoke-virtual {v9, v10, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo p3, "total_size"

    invoke-virtual {v9, p3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo p3, "total_sha1"

    invoke-virtual {v9, p3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&biz_params="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 108
    iget-object p3, p0, Lcom/gcore/abase/cos/CosUploadTask;->mUploadUrl:Ljava/lang/String;

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/upload/prepareFile?"

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 110
    const-string p3, "GCloud"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance p3, Ljava/net/URL;

    invoke-direct {p3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 115
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p1

    :goto_0
    const/4 p3, -0x1

    if-nez p2, :cond_0

    return p3

    :cond_0
    const/16 v1, 0x2710

    .line 125
    :try_start_1
    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 126
    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 127
    const-string v1, "PUT"

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    .line 129
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_3

    .line 131
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 132
    invoke-static {p1}, Lcom/gcore/abase/utils/FileUtils;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v2, v1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    const-string v1, "ret"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 136
    const-string v4, "err"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_1

    .line 138
    const-string v1, "biz_data"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 139
    const-string/jumbo v3, "upload_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    const-string v4, "next_pos"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 141
    iput-object v3, p4, Lcom/gcore/abase/cos/Credential;->uploadUrl:Ljava/lang/String;

    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v4, p4, Lcom/gcore/abase/cos/Credential;->nextPos:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p3, 0x0

    goto :goto_1

    .line 144
    :cond_1
    const-string p4, ",err:"

    const-string v3, "prepareFile failed ret:"

    if-lez v1, :cond_2

    .line 145
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    goto :goto_1

    .line 148
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p4

    .line 156
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz p2, :cond_4

    .line 163
    :try_start_3
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 166
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 169
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    return p3
.end method

.method private uploadInner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 54
    new-instance v0, Lcom/gcore/abase/cos/Credential;

    invoke-direct {v0}, Lcom/gcore/abase/cos/Credential;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/gcore/abase/cos/CosUploadTask;->mComParams:Ljava/lang/String;

    invoke-direct {p0, p2, v1, p1, v0}, Lcom/gcore/abase/cos/CosUploadTask;->prepareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gcore/abase/cos/Credential;)I

    move-result p1

    if-nez p1, :cond_4

    .line 60
    iget-wide p1, v0, Lcom/gcore/abase/cos/Credential;->nextPos:J

    .line 61
    iget-object v0, v0, Lcom/gcore/abase/cos/Credential;->uploadUrl:Ljava/lang/String;

    .line 63
    iput-wide p1, p0, Lcom/gcore/abase/cos/CosUploadTask;->mNextPos:J

    .line 64
    iput-object v0, p0, Lcom/gcore/abase/cos/CosUploadTask;->mNextUrl:Ljava/lang/String;

    .line 65
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/gcore/abase/cos/CosUploadTask;->mFilePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    .line 67
    :cond_0
    iget-wide v0, p0, Lcom/gcore/abase/cos/CosUploadTask;->mNextPos:J

    const/4 v2, 0x0

    cmp-long v3, v0, p1

    if-gez v3, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x3

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/gcore/abase/cos/CosUploadTask;->mNextUrl:Ljava/lang/String;

    iget-wide v4, p0, Lcom/gcore/abase/cos/CosUploadTask;->mNextPos:J

    invoke-direct {p0, v1, v4, v5}, Lcom/gcore/abase/cos/CosUploadTask;->uploadPart(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_0

    const/4 v2, 0x3

    .line 79
    :cond_3
    iget-wide v0, p0, Lcom/gcore/abase/cos/CosUploadTask;->mNextPos:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_6

    .line 80
    const-string p1, "GCloud.CosUploadTask"

    const-string/jumbo p2, "upload file success!"

    invoke-static {p1, p2}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    .line 88
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/gcore/abase/cos/CosUploadTask;->mResultListener:Lcom/gcore/abase/cos/CosResultListener;

    if-eqz p1, :cond_7

    .line 89
    invoke-interface {p1, v2}, Lcom/gcore/abase/cos/CosResultListener;->onFinished(I)V

    :cond_7
    return-void
.end method

.method private uploadPart(Ljava/lang/String;J)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    .line 176
    const-string v4, "GCloud.CosUploadTask"

    .line 0
    const-string v5, "Content-Type: application/octet-stream\r\n\r\n"

    const-string v6, "\"\r\n"

    const-string v7, "Content-Disposition: form-data; name=\"myfile\"; filename=\""

    const-string v8, "--"

    const-string v9, "Content-Disposition: form-data; name=\"part_sha1\"\r\n\r\n"

    const-string v10, "multipart/form-data; boundary="

    const-string/jumbo v11, "url is "

    .line 177
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    .line 179
    const-string v13, "\r\n"

    .line 184
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "prepareFile excepiton "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_0
    const/4 v15, 0x0

    if-nez v11, :cond_0

    return v15

    :cond_0
    const v0, 0x186a0

    .line 198
    :try_start_1
    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v0, 0x4e20

    .line 199
    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 200
    const-string v0, "POST"

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 201
    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 202
    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 203
    invoke-virtual {v11, v15}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 204
    const-string v0, "connection"

    const-string v14, "keep-alive"

    invoke-virtual {v11, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "Accept"

    const-string v14, "*/*"

    invoke-virtual {v11, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "Content-Type"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v0, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/io/File;

    iget-object v10, v1, Lcom/gcore/abase/cos/CosUploadTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v10, v1, Lcom/gcore/abase/cos/CosUploadTask;->mFilePath:Ljava/lang/String;

    iget-wide v14, v1, Lcom/gcore/abase/cos/CosUploadTask;->mPartSize:J

    invoke-static {v10, v2, v3, v14, v15}, Lcom/gcore/abase/utils/FileUtils;->filePartToSHA1(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v10

    .line 212
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    :try_start_2
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v17, v14

    .line 214
    :try_start_3
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v4

    .line 215
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v14, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v14, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 224
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v0, v1, Lcom/gcore/abase/cos/CosUploadTask;->mFilePath:Ljava/lang/String;

    const-string v5, "r"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v0, 0x400

    .line 225
    :try_start_5
    new-array v0, v0, [B

    .line 227
    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    :goto_1
    int-to-long v5, v2

    .line 229
    iget-wide v9, v1, Lcom/gcore/abase/cos/CosUploadTask;->mPartSize:J

    const-wide/16 v19, 0x400

    div-long v9, v9, v19
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v3, v5, v9

    if-gez v3, :cond_1

    :try_start_6
    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    const/4 v5, 0x0

    .line 230
    :try_start_7
    invoke-virtual {v15, v0, v5, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v5, 0x0

    :goto_2
    move-object v14, v4

    move-object/from16 v3, v18

    goto/16 :goto_8

    :cond_1
    const/4 v5, 0x0

    .line 233
    :try_start_8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 234
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 236
    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 237
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 239
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    .line 241
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 242
    :try_start_9
    invoke-static {v14}, Lcom/gcore/abase/utils/FileUtils;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uploadPart response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v3, v18

    :try_start_a
    invoke-static {v3, v2}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 245
    const-string v0, "ret"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 246
    const-string v6, "err"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v0, :cond_2

    .line 248
    const-string v0, "biz_data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 249
    const-string v2, "next_pos"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/gcore/abase/cos/CosUploadTask;->mNextPos:J

    .line 250
    const-string/jumbo v2, "upload_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/gcore/abase/cos/CosUploadTask;->mNextUrl:Ljava/lang/String;

    const/4 v15, 0x1

    goto :goto_5

    .line 253
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uploadpart error ret:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errMsg:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v3, v18

    :goto_3
    move-object/from16 v16, v14

    move-object v14, v4

    goto :goto_9

    :cond_3
    move-object/from16 v3, v18

    .line 257
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http error code : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v14, 0x0

    :goto_4
    const/4 v15, 0x0

    .line 265
    :goto_5
    invoke-static {v4}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object/from16 v16, v14

    move-object/from16 v14, v17

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v14, v4

    goto :goto_e

    :catch_7
    move-exception v0

    move-object/from16 v3, v18

    const/4 v5, 0x0

    :goto_6
    move-object v14, v4

    goto :goto_8

    :catch_8
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v3, v4

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v3, v4

    move-object/from16 v17, v14

    :goto_7
    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_8
    const/16 v16, 0x0

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v14, 0x0

    goto :goto_e

    :catch_b
    move-exception v0

    move-object v3, v4

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 261
    :goto_9
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uploadPart excepiton "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 265
    invoke-static {v14}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object/from16 v14, v17

    const/4 v15, 0x0

    :goto_a
    if-eqz v11, :cond_4

    .line 270
    :try_start_d
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_b

    :catch_c
    move-exception v0

    goto :goto_c

    :cond_4
    :goto_b
    if-eqz v14, :cond_5

    .line 273
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v16, :cond_6

    .line 276
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_d

    .line 279
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_d
    return v15

    :catchall_2
    move-exception v0

    .line 265
    :goto_e
    invoke-static {v14}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/gcore/abase/cos/CosUploadTask;->mUploadid:Ljava/lang/String;

    iget-object v1, p0, Lcom/gcore/abase/cos/CosUploadTask;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/gcore/abase/cos/CosUploadTask;->uploadInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCredentialInfo(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/gcore/abase/cos/CosUploadTask;->mComParams:Ljava/lang/String;

    return-void
.end method

.method public setResultListener(Lcom/gcore/abase/cos/CosResultListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/gcore/abase/cos/CosUploadTask;->mResultListener:Lcom/gcore/abase/cos/CosResultListener;

    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/gcore/abase/cos/CosUploadTask;->mUploadid:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/gcore/abase/cos/CosUploadTask;->mFilePath:Ljava/lang/String;

    .line 47
    iput-wide p3, p0, Lcom/gcore/abase/cos/CosUploadTask;->mPartSize:J

    .line 48
    iput-object p5, p0, Lcom/gcore/abase/cos/CosUploadTask;->mUploadUrl:Ljava/lang/String;

    .line 49
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
