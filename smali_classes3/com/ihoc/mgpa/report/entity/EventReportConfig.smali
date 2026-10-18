.class public Lcom/ihoc/mgpa/report/entity/EventReportConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String; = "eventReportConfig"


# instance fields
.field private final mAllowedReportKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKey2Engine:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private samplingEventReport:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->mAllowedReportKeys:Ljava/util/HashSet;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->mKey2Engine:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->samplingEventReport:Z

    return-void
.end method

.method public static getDefault()Lcom/ihoc/mgpa/report/entity/EventReportConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/report/entity/EventReportConfig;

    invoke-direct {v0}, Lcom/ihoc/mgpa/report/entity/EventReportConfig;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAllowedReportKeys()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->mAllowedReportKeys:Ljava/util/HashSet;

    return-object v0
.end method

.method public getKey2Engine()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->mKey2Engine:Ljava/util/HashMap;

    return-object v0
.end method

.method public isSamplingEventReport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->samplingEventReport:Z

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "allowed_report_keys"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2
    const-string v1, "key_map_engine"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    iget-object v3, p0, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->mAllowedReportKeys:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->mKey2Engine:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 14
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->mKey2Engine:Ljava/util/HashMap;

    const-string v4, "1"

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public setSamplingEventReport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ihoc/mgpa/report/entity/EventReportConfig;->samplingEventReport:Z

    return-void
.end method
