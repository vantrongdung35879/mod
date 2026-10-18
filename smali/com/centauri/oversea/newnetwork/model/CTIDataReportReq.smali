.class public Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;
.super Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;
.source "CTIDataReportReq.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "APDataReportReq"


# instance fields
.field private needReport:Z

.field private reportData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->reportData:Ljava/lang/String;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->needReport:Z

    return-void
.end method


# virtual methods
.method protected constructParam()V
    .locals 3

    .line 75
    invoke-super {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->constructParam()V

    .line 77
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->reportData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->needReport:Z

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->reportData:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->encodeGzip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->reportData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 83
    const-string/jumbo v1, "t"

    const-string v2, "g"

    invoke-virtual {p0, v1, v2}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "c"

    invoke-virtual {p0, v1, v0}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataReport"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->reportData:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->addHttpParameters(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public encodeGzip(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 100
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 101
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 102
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x400

    .line 104
    :try_start_2
    new-array p1, p1, [B

    .line 106
    :goto_0
    invoke-virtual {v3, p1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    .line 107
    invoke-virtual {v2, p1, v4, v0}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 111
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 113
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x2

    .line 114
    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    .line 115
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "UTF-8"

    invoke-static {v0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v3, v0

    :goto_2
    move-object v0, v1

    goto :goto_8

    :catch_3
    move-exception p1

    move-object v3, v0

    :goto_3
    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v3, v0

    goto :goto_8

    :catch_4
    move-exception p1

    move-object v3, v0

    .line 118
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_1

    .line 121
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_5
    if-eqz v3, :cond_2

    .line 124
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    :cond_2
    :goto_6
    const-string p1, ""

    :goto_7
    return-object p1

    :catchall_3
    move-exception p1

    :goto_8
    if-eqz v0, :cond_3

    .line 121
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_9
    if-eqz v3, :cond_4

    .line 124
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    :cond_4
    :goto_a
    throw p1
.end method

.method protected initUrl()V
    .locals 4

    .line 47
    new-instance v0, Lcom/centauri/http/core/HttpURL;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->getReportDomain()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-direct {v0, v2, v1}, Lcom/centauri/http/core/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "/cgi-bin/log_data.fcg?offer_id=%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/centauri/http/core/HttpURL;->suffix:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v0}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->setURL(Lcom/centauri/http/core/HttpURL;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogData URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->getFullURLString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APDataReportReq"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public needReport()Z
    .locals 1

    .line 67
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/centauri/oversea/comm/GlobalData;->isSendReport:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->needReport:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onHttpStart()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/centauri/oversea/newnetwork/http/CTIHttpRequestBase;->onHttpStart()V

    return-void
.end method

.method public setData(Ljava/lang/String;)Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->reportData:Ljava/lang/String;

    return-object p0
.end method

.method public setUp()Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->initUrl()V

    .line 62
    invoke-virtual {p0}, Lcom/centauri/oversea/newnetwork/model/CTIDataReportReq;->constructParam()V

    return-object p0
.end method
