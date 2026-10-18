.class public Lcom/ihoc/mgpa/gradish/X;
.super Lcom/ihoc/mgpa/gradish/s;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/ihoc/mgpa/gradish/O0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/X;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/s;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/ihoc/mgpa/gradish/X;->b:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/X;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/X;->d:Lcom/ihoc/mgpa/gradish/O0;

    return-void
.end method

.method private a()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/X;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ihoc/mgpa/gradish/O0;

    .line 92
    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/O0;->b:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/t1;->m(Ljava/util/HashMap;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/X;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/ihoc/mgpa/gradish/X;->b:I

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getByKey(I)Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/ihoc/mgpa/gradish/X$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 35
    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->saveDataInMap(ILjava/lang/String;)V

    goto :goto_3

    .line 36
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->COMMOND_ID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/S;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->saveDataInMap(ILjava/lang/String;)V

    .line 37
    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->saveDataInMap(ILjava/lang/String;)V

    goto :goto_3

    .line 38
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v2, 0x34

    if-eq v0, v2, :cond_3

    const/16 v2, 0x35

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "5"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    goto :goto_2

    .line 47
    :cond_5
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/X;->a()V

    goto :goto_2

    .line 48
    :cond_6
    sget-object v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->PLAYING:Lcom/ihoc/mgpa/toolkit/constant/SceneID;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/toolkit/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 49
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/X;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    sget-object v0, Lcom/ihoc/mgpa/gradish/X;->e:Ljava/lang/String;

    const-string v1, "DataDealer:dealData: exception."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_7
    :goto_2
    invoke-virtual {p0, p2}, Lcom/ihoc/mgpa/gradish/s;->a(Ljava/lang/String;)V

    .line 64
    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setCurrentSceneId(Ljava/lang/String;)V

    .line 65
    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->saveDataInMap(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public a(I[F)V
    .locals 5

    .line 66
    :try_start_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->FPS:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 67
    iget p1, p0, Lcom/ihoc/mgpa/gradish/X;->b:I

    const/16 v0, 0x168

    if-lt p1, v0, :cond_2

    .line 68
    sget-object p1, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x37

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 72
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/X;->a()V

    .line 75
    :cond_2
    iget p1, p0, Lcom/ihoc/mgpa/gradish/X;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ihoc/mgpa/gradish/X;->b:I

    .line 76
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/X;->d:Lcom/ihoc/mgpa/gradish/O0;

    if-nez p1, :cond_3

    .line 77
    new-instance p1, Lcom/ihoc/mgpa/gradish/O0;

    iget v1, p0, Lcom/ihoc/mgpa/gradish/X;->b:I

    invoke-direct {p1, v1}, Lcom/ihoc/mgpa/gradish/O0;-><init>(I)V

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/X;->d:Lcom/ihoc/mgpa/gradish/O0;

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/X;->d:Lcom/ihoc/mgpa/gradish/O0;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/O0;->a()I

    move-result p1

    const/16 v1, 0xc

    if-ge p1, v1, :cond_4

    .line 80
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%.2f"

    invoke-virtual {p0, p2}, Lcom/ihoc/mgpa/gradish/s;->a([F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/X;->d:Lcom/ihoc/mgpa/gradish/O0;

    const-string v2, "_"

    invoke-static {p2, v2}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->floatArrayToString([FLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/ihoc/mgpa/gradish/O0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/X;->d:Lcom/ihoc/mgpa/gradish/O0;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/O0;->a()I

    move-result p1

    if-lt p1, v1, :cond_5

    .line 84
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/X;->c:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/X;->d:Lcom/ihoc/mgpa/gradish/O0;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance p1, Lcom/ihoc/mgpa/gradish/O0;

    iget p2, p0, Lcom/ihoc/mgpa/gradish/X;->b:I

    invoke-direct {p1, p2}, Lcom/ihoc/mgpa/gradish/O0;-><init>(I)V

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/X;->d:Lcom/ihoc/mgpa/gradish/O0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    sget-object p1, Lcom/ihoc/mgpa/gradish/X;->e:Ljava/lang/String;

    const-string p2, "DataDealer:dealData: exception2."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
