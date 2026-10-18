.class public Lcom/ihoc/mgpa/gradish/n;
.super Lcom/ihoc/mgpa/gradish/s;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private b:Lcom/ihoc/mgpa/gradish/O0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/n;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/s;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/n;->b:Lcom/ihoc/mgpa/gradish/O0;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getByKey(I)Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/ihoc/mgpa/gradish/n$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 16
    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->saveDataInMap(ILjava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->COMMOND_ID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/S;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->saveDataInMap(ILjava/lang/String;)V

    .line 18
    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->saveDataInMap(ILjava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ihoc/mgpa/gradish/s;->a(Ljava/lang/String;)V

    .line 20
    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setCurrentSceneId(Ljava/lang/String;)V

    .line 21
    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->saveDataInMap(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(I[F)V
    .locals 5

    .line 22
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->FPS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 23
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/n;->b:Lcom/ihoc/mgpa/gradish/O0;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lcom/ihoc/mgpa/gradish/O0;

    invoke-direct {p1, v0}, Lcom/ihoc/mgpa/gradish/O0;-><init>(I)V

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/n;->b:Lcom/ihoc/mgpa/gradish/O0;

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/n;->b:Lcom/ihoc/mgpa/gradish/O0;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/O0;->a()I

    move-result p1

    const/16 v1, 0xc

    if-ge p1, v1, :cond_1

    .line 27
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%.2f"

    invoke-virtual {p0, p2}, Lcom/ihoc/mgpa/gradish/s;->a([F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-static {p1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 28
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/n;->b:Lcom/ihoc/mgpa/gradish/O0;

    const-string v3, "_"

    invoke-static {p2, v3}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->floatArrayToString([FLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2, p1}, Lcom/ihoc/mgpa/gradish/O0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/n;->b:Lcom/ihoc/mgpa/gradish/O0;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/O0;->a()I

    move-result p1

    if-lt p1, v1, :cond_2

    .line 32
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/n;->b:Lcom/ihoc/mgpa/gradish/O0;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/O0;->b:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/t1;->m(Ljava/util/HashMap;)V

    .line 33
    new-instance p1, Lcom/ihoc/mgpa/gradish/O0;

    invoke-direct {p1, v0}, Lcom/ihoc/mgpa/gradish/O0;-><init>(I)V

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/n;->b:Lcom/ihoc/mgpa/gradish/O0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    sget-object p1, Lcom/ihoc/mgpa/gradish/n;->c:Ljava/lang/String;

    const-string p2, "DataDealer:dealData: exception2."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
