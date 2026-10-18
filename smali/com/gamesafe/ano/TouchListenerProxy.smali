.class public Lcom/gamesafe/ano/TouchListenerProxy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static volatile f:Lcom/gamesafe/ano/TouchListenerProxy;


# instance fields
.field private a:Landroid/view/View$OnTouchListener;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamesafe/ano/TouchListenerProxy;->e:Z

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result p1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "VyyVijOjpxcZqzio:dy=%y|zo=%y|yo=%y|hd=%.1a|hv=%.1a"

    invoke-static {v7}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object p1, v4, v0

    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gamesafe/ano/AnoSdk;->ioctl(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "*#06#:"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0}, Lcom/gamesafe/ano/AnoSdk;->onruntimeinfo([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, v0, Lcom/gamesafe/ano/TouchListenerProxy;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/gamesafe/ano/TouchListenerProxy;->c:I

    if-nez v2, :cond_3

    :cond_1
    invoke-static {}, Lcom/gamesafe/ano/c;->b()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v0, Lcom/gamesafe/ano/TouchListenerProxy;->b:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v0, Lcom/gamesafe/ano/TouchListenerProxy;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iput v3, v0, Lcom/gamesafe/ano/TouchListenerProxy;->b:I

    iput v3, v0, Lcom/gamesafe/ano/TouchListenerProxy;->c:I

    :cond_3
    :goto_0
    iget v2, v0, Lcom/gamesafe/ano/TouchListenerProxy;->b:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_9

    iget v5, v0, Lcom/gamesafe/ano/TouchListenerProxy;->c:I

    if-ge v5, v4, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "unavailable"

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    const/16 v16, 0xb

    const/16 v17, 0xa

    const/16 v18, 0x9

    const/16 v19, 0x8

    const/16 v20, 0x7

    const/16 v21, 0x6

    const/16 v22, 0x5

    const/16 v23, 0x3

    const-string v3, "AddTouchEvent:col=%d|row=%d|col_max=%d|row_max=%d|id=%d|name=%s|source=%d|external=%d|flags=%d|action=%d|index=%d|et=%d|dt=%d"

    const/16 v24, 0x0

    if-ne v14, v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    const-string v25, ""

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v15, :cond_7

    move/from16 v26, v15

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-wide/from16 v36, v10

    const/16 v10, 0xd

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v15, v11, v24

    const/4 v10, 0x1

    aput-object v0, v11, v10

    const/4 v0, 0x2

    aput-object v25, v11, v0

    aput-object v27, v11, v23

    const/4 v0, 0x4

    aput-object v28, v11, v0

    aput-object v7, v11, v22

    aput-object v29, v11, v21

    aput-object v30, v11, v20

    aput-object v31, v11, v19

    aput-object v32, v11, v18

    aput-object v33, v11, v17

    aput-object v34, v11, v16

    const/16 v0, 0xc

    aput-object v35, v11, v0

    invoke-static {v1, v3, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/gamesafe/ano/AnoSdk;->ioctl(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v15, v26

    move-wide/from16 v10, v36

    goto :goto_2

    :cond_6
    move-wide/from16 v36, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/16 v15, 0xd

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v4, v15, v24

    const/4 v4, 0x1

    aput-object v1, v15, v4

    const/4 v1, 0x2

    aput-object v2, v15, v1

    aput-object v5, v15, v23

    const/4 v1, 0x4

    aput-object v6, v15, v1

    aput-object v7, v15, v22

    aput-object v8, v15, v21

    aput-object v11, v15, v20

    aput-object v9, v15, v19

    aput-object v14, v15, v18

    aput-object v0, v15, v17

    aput-object v12, v15, v16

    const/16 v0, 0xc

    aput-object v13, v15, v0

    invoke-static {v10, v3, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/gamesafe/ano/AnoSdk;->ioctl(Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    move-object/from16 v1, p0

    move-object/from16 v0, v25

    iget v2, v1, Lcom/gamesafe/ano/TouchListenerProxy;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/gamesafe/ano/TouchListenerProxy;->d:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_8

    invoke-direct {v1, v0}, Lcom/gamesafe/ano/TouchListenerProxy;->a(Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    :goto_3
    move-object v1, v0

    return-void
.end method

.method public static getInstance()Lcom/gamesafe/ano/TouchListenerProxy;
    .locals 2

    sget-object v0, Lcom/gamesafe/ano/TouchListenerProxy;->f:Lcom/gamesafe/ano/TouchListenerProxy;

    if-nez v0, :cond_1

    const-class v0, Lcom/gamesafe/ano/TouchListenerProxy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/gamesafe/ano/TouchListenerProxy;->f:Lcom/gamesafe/ano/TouchListenerProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/gamesafe/ano/TouchListenerProxy;

    invoke-direct {v1}, Lcom/gamesafe/ano/TouchListenerProxy;-><init>()V

    sput-object v1, Lcom/gamesafe/ano/TouchListenerProxy;->f:Lcom/gamesafe/ano/TouchListenerProxy;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/gamesafe/ano/TouchListenerProxy;->f:Lcom/gamesafe/ano/TouchListenerProxy;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/gamesafe/ano/TouchListenerProxy;->b(Landroid/view/MotionEvent;)V

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-direct {p0, p2}, Lcom/gamesafe/ano/TouchListenerProxy;->a(Landroid/view/MotionEvent;)V

    :cond_2
    iget-object v0, p0, Lcom/gamesafe/ano/TouchListenerProxy;->a:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    iget-boolean p1, p0, Lcom/gamesafe/ano/TouchListenerProxy;->e:Z

    return p1
.end method

.method public setOntouchRetVal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/gamesafe/ano/TouchListenerProxy;->e:Z

    return-void
.end method

.method public setRawListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gamesafe/ano/TouchListenerProxy;->a:Landroid/view/View$OnTouchListener;

    return-void
.end method
