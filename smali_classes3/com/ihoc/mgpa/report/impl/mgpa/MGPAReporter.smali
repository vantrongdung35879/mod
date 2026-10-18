.class public Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;
    }
.end annotation


# static fields
.field private static REPORT_URL:Ljava/lang/String; = ""

.field private static REPORT_URL_V2:Ljava/lang/String; = ""

.field public static final URL_DEFAULT_REPORT:Ljava/lang/String; = "/stat/log_report"

.field public static final URL_DEFAULT_REPORT_V2:Ljava/lang/String; = "/stat_v2/log_report"

.field private static sAESKey:Ljava/lang/String; = ""

.field private static sEncodeAESKey:Ljava/lang/String; = ""

.field private static final sRSAPublicKey:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDyN9OexXciliWw+i91RbTh/OWL1Jp4p842R+h8eTJfp/3f78sKbggAJv3pcuQRmsOj5f+8MqvlCuCrykySN/S4ugKiSEHveZS7oGAsRSLW9aPpYNe9xcfCB7CegJJop9VOq6mbLSDBlF0maHCS0eszDFTY5joKnVycZ7gW0KDryQIDAQAB"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->sEncodeAESKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->REPORT_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->sAESKey:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/stat/log_report"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->REPORT_URL:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/stat_v2/log_report"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->REPORT_URL_V2:Ljava/lang/String;

    const/16 p0, 0x20

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/AESUtil;->getRandom(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->sAESKey:Ljava/lang/String;

    .line 5
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDyN9OexXciliWw+i91RbTh/OWL1Jp4p842R+h8eTJfp/3f78sKbggAJv3pcuQRmsOj5f+8MqvlCuCrykySN/S4ugKiSEHveZS7oGAsRSLW9aPpYNe9xcfCB7CegJJop9VOq6mbLSDBlF0maHCS0eszDFTY5joKnVycZ7gW0KDryQIDAQAB"

    invoke-static {p0, v0}, Lcom/ihoc/mgpa/toolkit/util/RSAUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->sEncodeAESKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static prepareReportJson(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, " event_name: [%s], event_data: %s"

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    const-string v1, "event_name"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    sget-object p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->sEncodeAESKey:Ljava/lang/String;

    const-string v1, "encrypted_key"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    sget-object p0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->sAESKey:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/ihoc/mgpa/toolkit/util/AESUtil;->encryptToBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "encrypted_data"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static report(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;

    invoke-direct {v0, p0, p1}, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter$ReportTask;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->getDefault()Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ihoc/mgpa/report/impl/mgpa/ReporterHandlerThread;->runInScheduler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static reportSync(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ret"

    const-string v1, "application/json"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->prepareReportJson(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string/jumbo v5, "url: %s , EventName: [%s], report data: %s."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->REPORT_URL_V2:Ljava/lang/String;

    aput-object v7, v6, v4

    aput-object p0, v6, v3

    aput-object p1, v6, v2

    invoke-static {v5, v6}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v6, "Content-Type"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v6, "accept"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/ihoc/mgpa/report/impl/mgpa/MGPAReporter;->REPORT_URL_V2:Ljava/lang/String;

    invoke-static {v1, p1, v5}, Lcom/ihoc/mgpa/toolkit/util/HttpsUtil;->post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 10
    const-string p1, " EventName: [%s], report success."

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v4

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 14
    :cond_0
    const-string v0, " EventName: [%s], report fail, msg: %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object v0, v1, v3

    const-string p0, " EventName: [%s], report exception, msg: %s"

    invoke-static {p0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v4
.end method
