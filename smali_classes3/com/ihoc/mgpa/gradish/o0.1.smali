.class public Lcom/ihoc/mgpa/gradish/o0;
.super Lcom/ihoc/mgpa/gradish/p0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/o0$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Vibrator;

.field private b:Lcom/ihoc/mgpa/gradish/o0$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/p0;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 2

    const/16 v0, 0x64

    const/16 v1, 0x32

    if-le p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    const/16 p1, 0x32

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x32

    :cond_1
    :goto_0
    return p1
.end method

.method private a(II)I
    .locals 4

    const/16 v0, 0x29

    const/16 v1, 0xf

    const/16 v2, 0x64

    const/16 v3, 0x32

    if-lt p2, v0, :cond_2

    const/16 v0, 0x44

    if-gt p2, v0, :cond_2

    if-lez p1, :cond_0

    if-ge p1, v3, :cond_0

    return v1

    :cond_0
    const/16 p2, 0x4b

    if-lt p1, v3, :cond_1

    if-ge p1, p2, :cond_1

    const/16 p1, 0x14

    return p1

    :cond_1
    if-lt p1, p2, :cond_4

    if-gt p1, v2, :cond_4

    const/16 p1, 0x1e

    return p1

    :cond_2
    if-lez p1, :cond_3

    if-ge p1, v3, :cond_3

    const/16 p1, 0xa

    return p1

    :cond_3
    if-lt p1, v3, :cond_4

    if-gt p1, v2, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/o0;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/o0;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v1, p0

    .line 13
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v3, "Pattern"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    .line 17
    new-array v5, v4, [J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const-string v9, "PatternPlayer"

    if-ge v6, v3, :cond_4

    .line 21
    :try_start_1
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 22
    const-string v11, "Event"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 23
    const-string v11, "Type"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 24
    const-string v12, "continuous"

    invoke-static {v12, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v13, 0x32

    const-wide/16 v15, 0x0

    const-string v2, "RelativeTime"

    if-eqz v12, :cond_1

    mul-int/lit8 v9, v6, 0x2

    .line 27
    :try_start_2
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    sub-int/2addr v11, v7

    sub-int/2addr v11, v8

    int-to-long v7, v11

    aput-wide v7, v5, v9

    cmp-long v11, v7, v15

    if-gez v11, :cond_0

    .line 29
    aput-wide v13, v5, v9

    .line 32
    :cond_0
    const-string v7, "Duration"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v1, v7}, Lcom/ihoc/mgpa/gradish/o0;->a(I)I

    move-result v7

    add-int/lit8 v9, v9, 0x1

    int-to-long v11, v7

    .line 33
    aput-wide v11, v5, v9

    .line 34
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    move v8, v7

    move v7, v2

    goto :goto_2

    .line 36
    :cond_1
    const-string/jumbo v12, "transient"

    invoke-static {v12, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    mul-int/lit8 v9, v6, 0x2

    .line 39
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    sub-int/2addr v11, v7

    sub-int/2addr v11, v8

    int-to-long v7, v11

    aput-wide v7, v5, v9

    cmp-long v11, v7, v15

    if-gez v11, :cond_2

    .line 41
    aput-wide v13, v5, v9

    .line 44
    :cond_2
    const-string v7, "Parameters"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 45
    const-string v8, "Intensity"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 46
    const-string v11, "Frequency"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 47
    invoke-direct {v1, v8, v7}, Lcom/ihoc/mgpa/gradish/o0;->a(II)I

    move-result v7

    add-int/lit8 v9, v9, 0x1

    int-to-long v11, v7

    .line 48
    aput-wide v11, v5, v9

    .line 49
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 52
    :cond_3
    const-string v0, "can\'t get Event Type value, please check he format."

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v0, v4, :cond_5

    .line 56
    :try_start_3
    aget-wide v6, v5, v0

    int-to-long v2, v2

    add-long/2addr v2, v6

    long-to-int v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_5
    const/16 v0, 0x7530

    if-le v2, v0, :cond_6

    .line 60
    const-string v0, "Pattern\'s duration should be less than 30000"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x0

    :cond_6
    return v2

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    .line 65
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method

.method private a(Lorg/json/JSONObject;I)I
    .locals 9

    .line 68
    const-string v0, "Parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 69
    const-string v0, "Curve"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x2

    .line 71
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    const-string v3, "Intensity"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 73
    const-string v5, "Frequency"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 75
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v7, 0x406fe00000000000L    # 255.0

    mul-double v5, v5, v7

    double-to-int v2, v5

    .line 77
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    mul-double v5, v5, v7

    double-to-int v0, v5

    const/16 v3, 0xff

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 79
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 80
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    int-to-double v4, p2

    div-double/2addr v4, v7

    int-to-double v6, v0

    mul-double v6, v6, v2

    mul-double v6, v6, v4

    double-to-int p2, v6

    .line 83
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    return p2
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/o0;Ljava/lang/String;IIII)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/ihoc/mgpa/gradish/o0;->b(Ljava/lang/String;IIII)V

    return-void
.end method

.method private a([J[I)V
    .locals 7

    .line 84
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v3, p1, v1

    int-to-long v5, v2

    add-long/2addr v5, v3

    long-to-int v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x7530

    if-le v2, v0, :cond_1

    .line 88
    const-string p1, "PatternPlayer"

    const-string p2, "Pattern\'s duration should be less than 30000"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, -0x1

    if-lt v0, v1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/o0;->a:Landroid/os/Vibrator;

    invoke-static {p1, p2, v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m([J[II)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/o0;->a:Landroid/os/Vibrator;

    invoke-virtual {p2, p1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :goto_1
    return-void
.end method

.method private b(II)I
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    int-to-double p1, p2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr p1, v2

    mul-double v0, v0, p1

    mul-double v0, v0, v2

    double-to-int p1, v0

    const/16 p2, 0xff

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x1

    .line 7
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;IIII)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p4

    .line 8
    iget-object v2, v1, Lcom/ihoc/mgpa/gradish/o0;->a:Landroid/os/Vibrator;

    const-string v3, "PatternPlayer"

    if-nez v2, :cond_0

    .line 9
    const-string v0, "Please prepare before invoke play method."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v4, p1

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v4, "Pattern"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    .line 17
    new-array v6, v5, [J

    .line 18
    new-array v5, v5, [I

    const/4 v7, 0x0

    .line 21
    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([II)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v8, v4, :cond_5

    .line 23
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 24
    const-string v12, "Event"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 25
    const-string v12, "Type"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 26
    const-string v13, "continuous"

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v14, 0x32

    const-wide/16 v16, 0x0

    const-string v7, "RelativeTime"

    if-eqz v13, :cond_2

    mul-int/lit8 v12, v8, 0x2

    .line 29
    :try_start_1
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    sub-int/2addr v13, v9

    sub-int/2addr v13, v10

    int-to-long v9, v13

    aput-wide v9, v6, v12

    cmp-long v13, v9, v16

    if-gez v13, :cond_1

    .line 31
    aput-wide v14, v6, v12

    :cond_1
    const/4 v9, 0x0

    .line 33
    aput v9, v5, v12

    .line 35
    const-string v9, "Duration"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v9}, Lcom/ihoc/mgpa/gradish/o0;->a(I)I

    move-result v9

    add-int/lit8 v12, v12, 0x1

    int-to-long v13, v9

    .line 36
    aput-wide v13, v6, v12

    .line 37
    invoke-direct {v1, v11, v0}, Lcom/ihoc/mgpa/gradish/o0;->a(Lorg/json/JSONObject;I)I

    move-result v10

    aput v10, v5, v12

    .line 38
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    move v10, v9

    const/4 v9, 0x0

    goto :goto_1

    .line 40
    :cond_2
    const-string/jumbo v13, "transient"

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    mul-int/lit8 v12, v8, 0x2

    .line 43
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    sub-int/2addr v13, v9

    sub-int/2addr v13, v10

    int-to-long v9, v13

    aput-wide v9, v6, v12

    cmp-long v13, v9, v16

    if-gez v13, :cond_3

    .line 45
    aput-wide v14, v6, v12

    :cond_3
    const/4 v9, 0x0

    .line 47
    aput v9, v5, v12

    .line 49
    const-string v10, "Parameters"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 50
    const-string v13, "Intensity"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 51
    const-string v14, "Frequency"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 52
    invoke-direct {v1, v13, v10}, Lcom/ihoc/mgpa/gradish/o0;->a(II)I

    move-result v10

    .line 53
    invoke-direct {v1, v13, v0}, Lcom/ihoc/mgpa/gradish/o0;->b(II)I

    move-result v13

    add-int/lit8 v12, v12, 0x1

    int-to-long v14, v10

    .line 54
    aput-wide v14, v6, v12

    .line 55
    aput v13, v5, v12

    .line 56
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v9, v7

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 59
    :cond_4
    const-string v0, "can\'t get Event Type value, please check he format."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_5
    invoke-direct {v1, v6, v5}, Lcom/ihoc/mgpa/gradish/o0;->a([J[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 65
    const-string v2, "parse he json exception, please check he format!"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 3
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/o0;->a:Landroid/os/Vibrator;

    .line 4
    new-instance p1, Lcom/ihoc/mgpa/gradish/o0$a;

    invoke-direct {p1, p0}, Lcom/ihoc/mgpa/gradish/o0$a;-><init>(Lcom/ihoc/mgpa/gradish/o0;)V

    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/o0;->b:Lcom/ihoc/mgpa/gradish/o0$a;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;IIII)V
    .locals 7

    .line 10
    invoke-virtual {p0}, Lcom/ihoc/mgpa/gradish/o0;->b()V

    .line 11
    new-instance v6, Lcom/ihoc/mgpa/gradish/n0;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ihoc/mgpa/gradish/n0;-><init>(Ljava/lang/String;IIII)V

    .line 12
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/o0;->b:Lcom/ihoc/mgpa/gradish/o0$a;

    invoke-virtual {p1, v6}, Lcom/ihoc/mgpa/gradish/o0$a;->a(Lcom/ihoc/mgpa/gradish/n0;)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/ihoc/mgpa/gradish/o0;->c()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/o0;->b:Lcom/ihoc/mgpa/gradish/o0$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/o0$a;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/o0;->a:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/o0;->a:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
