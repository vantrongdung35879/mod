.class public Lcom/ihoc/mgpa/gradish/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;

.field private static volatile c:Lcom/ihoc/mgpa/gradish/G;


# instance fields
.field private a:Lcom/ihoc/mgpa/gradish/F;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_FPS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/G;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/ihoc/mgpa/gradish/G;->c:Lcom/ihoc/mgpa/gradish/G;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILjava/util/ArrayList;)F
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 9
    :goto_0
    iget-object v4, v0, Lcom/ihoc/mgpa/gradish/G;->a:Lcom/ihoc/mgpa/gradish/F;

    iget v4, v4, Lcom/ihoc/mgpa/gradish/F;->c:I

    if-ge v3, v4, :cond_0

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 12
    :goto_1
    iget-object v4, v0, Lcom/ihoc/mgpa/gradish/G;->a:Lcom/ihoc/mgpa/gradish/F;

    iget v4, v4, Lcom/ihoc/mgpa/gradish/F;->d:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 23
    iget-object v4, v0, Lcom/ihoc/mgpa/gradish/G;->a:Lcom/ihoc/mgpa/gradish/F;

    iget v4, v4, Lcom/ihoc/mgpa/gradish/F;->e:I

    div-int v4, v3, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 25
    :goto_2
    iget-object v11, v0, Lcom/ihoc/mgpa/gradish/G;->a:Lcom/ihoc/mgpa/gradish/F;

    iget v11, v11, Lcom/ihoc/mgpa/gradish/F;->e:I

    add-int/lit8 v12, v11, 0x1

    if-ge v7, v12, :cond_6

    if-ne v7, v11, :cond_2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    if-ge v9, v3, :cond_3

    .line 29
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float v15, v14, v14

    add-float/2addr v12, v15

    add-float/2addr v11, v14

    add-float/2addr v8, v14

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v4, :cond_3

    if-ge v9, v3, :cond_3

    .line 39
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    mul-float v16, v15, v15

    add-float v12, v12, v16

    add-float/2addr v11, v15

    add-float/2addr v8, v15

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_3
    if-nez v13, :cond_4

    const/4 v13, 0x1

    :cond_4
    int-to-float v13, v13

    div-float/2addr v11, v13

    div-float/2addr v12, v13

    mul-float v11, v11, v11

    sub-float/2addr v12, v11

    .line 51
    iget-object v11, v0, Lcom/ihoc/mgpa/gradish/G;->a:Lcom/ihoc/mgpa/gradish/F;

    iget v13, v11, Lcom/ihoc/mgpa/gradish/F;->f:I

    int-to-float v13, v13

    cmpl-float v14, v12, v13

    if-lez v14, :cond_5

    .line 53
    iget v14, v11, Lcom/ihoc/mgpa/gradish/F;->g:F

    sub-float/2addr v12, v13

    mul-float v14, v14, v12

    .line 54
    iget v11, v11, Lcom/ihoc/mgpa/gradish/F;->h:I

    int-to-float v11, v11

    invoke-static {v11, v14}, Ljava/lang/Math;->min(FF)F

    move-result v11

    add-float/2addr v10, v11

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 61
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v8, v1

    .line 64
    iget-object v1, v0, Lcom/ihoc/mgpa/gradish/G;->a:Lcom/ihoc/mgpa/gradish/F;

    iget v2, v1, Lcom/ihoc/mgpa/gradish/F;->i:I

    int-to-float v2, v2

    cmpg-float v3, v8, v2

    if-gez v3, :cond_7

    .line 66
    iget v2, v1, Lcom/ihoc/mgpa/gradish/F;->j:I

    int-to-float v2, v2

    goto :goto_6

    :cond_7
    cmpl-float v2, v8, v2

    if-ltz v2, :cond_8

    .line 68
    iget v2, v1, Lcom/ihoc/mgpa/gradish/F;->k:I

    int-to-float v2, v2

    cmpg-float v2, v8, v2

    if-gez v2, :cond_8

    .line 70
    iget v2, v1, Lcom/ihoc/mgpa/gradish/F;->l:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    iget v3, v1, Lcom/ihoc/mgpa/gradish/F;->m:I

    goto :goto_5

    .line 74
    :cond_8
    iget v2, v1, Lcom/ihoc/mgpa/gradish/F;->n:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    iget v3, v1, Lcom/ihoc/mgpa/gradish/F;->o:I

    :goto_5
    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 76
    :goto_6
    iget v1, v1, Lcom/ihoc/mgpa/gradish/F;->p:I

    int-to-float v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 77
    iget-object v2, v0, Lcom/ihoc/mgpa/gradish/G;->a:Lcom/ihoc/mgpa/gradish/F;

    iget v2, v2, Lcom/ihoc/mgpa/gradish/F;->q:F

    mul-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    sub-float/2addr v2, v10

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 79
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public static a()Lcom/ihoc/mgpa/gradish/G;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/G;->c:Lcom/ihoc/mgpa/gradish/G;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/gradish/G;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/G;->c:Lcom/ihoc/mgpa/gradish/G;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/gradish/G;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/G;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/G;->c:Lcom/ihoc/mgpa/gradish/G;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/G;->c:Lcom/ihoc/mgpa/gradish/G;

    return-object v0
.end method

.method private b(ILjava/util/ArrayList;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isFpsStrategyFuncOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/ihoc/mgpa/gradish/G;->b:Ljava/lang/String;

    const-string p2, "check fps score, func is not open."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->l:Lcom/ihoc/mgpa/gradish/F;

    if-nez v0, :cond_1

    .line 7
    sget-object p1, Lcom/ihoc/mgpa/gradish/G;->b:Ljava/lang/String;

    const-string p2, "check fps score, no fps config, ple check."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->l:Lcom/ihoc/mgpa/gradish/F;

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/G;->a:Lcom/ihoc/mgpa/gradish/F;

    .line 12
    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/F;->a:Z

    if-nez v0, :cond_2

    .line 13
    sget-object p1, Lcom/ihoc/mgpa/gradish/G;->b:Ljava/lang/String;

    const-string p2, "check fps score, available is false, ple check."

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_2
    sget-object v0, Lcom/ihoc/mgpa/gradish/G;->b:Ljava/lang/String;

    const-string v1, "check fps score, start to check fps score. "

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/G;->a:Lcom/ihoc/mgpa/gradish/F;

    iget v2, v2, Lcom/ihoc/mgpa/gradish/F;->b:I

    if-ge p1, v2, :cond_3

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "check fps score, fps count is too less. size is "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x447a0000    # 1000.0f

    goto :goto_0

    .line 24
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/G;->a(ILjava/util/ArrayList;)F

    move-result p1

    .line 26
    :goto_0
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/G;->a:Lcom/ihoc/mgpa/gradish/F;

    iget p2, p2, Lcom/ihoc/mgpa/gradish/F;->r:I

    int-to-float p2, p2

    const/4 v2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_4

    .line 28
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object p2

    new-instance v3, Lcom/ihoc/mgpa/gradish/I;

    sget-object v4, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->FPSSTRATEGY:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string/jumbo v5, "{\"1\":\"4\"}"

    invoke-direct {v3, v4, v5}, Lcom/ihoc/mgpa/gradish/I;-><init>(Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/ihoc/mgpa/gradish/s1;->a(Lcom/ihoc/mgpa/gradish/I;)V

    const/4 p2, 0x2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 30
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fps score: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " , fps level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "%.2f"

    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "fps_score"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fps_level"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/t1;->n(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public c(ILjava/util/ArrayList;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/G;->b:Ljava/lang/String;

    const-string v1, "post all game match fps. "

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isReportFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/t1;->a(Ljava/util/ArrayList;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isFpsStrategyFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/G;->b(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    sget-object p1, Lcom/ihoc/mgpa/gradish/G;->b:Ljava/lang/String;

    const-string p2, "check/report game match fps exception. "

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
