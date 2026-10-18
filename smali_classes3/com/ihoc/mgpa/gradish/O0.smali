.class Lcom/ihoc/mgpa/gradish/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:Ljava/util/HashMap;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/O0;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ihoc/mgpa/gradish/O0;->c:I

    .line 5
    iput p1, p0, Lcom/ihoc/mgpa/gradish/O0;->a:I

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/O0;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/gradish/O0;->c:I

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2
    iget v0, p0, Lcom/ihoc/mgpa/gradish/O0;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ihoc/mgpa/gradish/O0;->c:I

    .line 5
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->TIME_RELATIVE:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ihoc/mgpa/gradish/t1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->FPS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->FPS_AVG:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p2, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->MATCH_MARK:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMatchMark()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p2, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->SDK_SCENEID_SUPPORT:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getCurrentTransformSceneID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->checkSceneSupport(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getMatchState()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getVendorTempLevel()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getDynamicSetting()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 15
    sget-object v1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->MATCH_STATE:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 18
    sget-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->TEMP_LEVEL:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    .line 21
    sget-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p2, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->DYNAMIC_SETTING:Lcom/ihoc/mgpa/toolkit/constant/ReportKey;

    invoke-virtual {p2}, Lcom/ihoc/mgpa/toolkit/constant/ReportKey;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_2
    sget-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->mRecordDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/O0;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "|"

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 29
    :goto_1
    iget v4, p0, Lcom/ihoc/mgpa/gradish/O0;->c:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_3

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 32
    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/O0;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 35
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/O0;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :goto_2
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->resetDataInMap(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method
