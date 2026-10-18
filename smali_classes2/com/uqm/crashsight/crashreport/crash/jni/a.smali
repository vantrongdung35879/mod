.class public final Lcom/uqm/crashsight/crashreport/crash/jni/a;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/crash/jni/NativeExceptionHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/uqm/crashsight/crashreport/crash/b;

.field private final c:Lcom/uqm/crashsight/crashreport/common/info/a;

.field private final d:Lcom/uqm/crashsight/crashreport/common/strategy/a;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/strategy/a;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    .line 62
    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    .line 63
    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->d:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    const-wide/16 p1, -0x1

    .line 64
    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->e:J

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 19

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-object/from16 v2, p0

    .line 403
    iget-object v3, v2, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a:Landroid/content/Context;

    const-string v4, "crashSight"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 404
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 407
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 408
    array-length v4, v3

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 412
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 413
    array-length v7, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_5

    aget-object v9, v3, v8

    .line 414
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p1

    .line 415
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_2

    move-object/from16 v12, p2

    .line 417
    :try_start_1
    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_3

    .line 419
    invoke-virtual {v10, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v15, v0, v13

    const-wide/16 v17, 0x3e8

    .line 420
    div-long v15, v15, v17

    .line 421
    const-string v6, "current time %d trace time is %d s"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v18, v14, v5

    const/4 v5, 0x1

    aput-object v13, v14, v5

    invoke-static {v6, v14}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 422
    const-string v6, "current time minus trace time is %d s"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v13, v5, v14

    invoke-static {v6, v5}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v5, 0x1e

    cmp-long v10, v15, v5

    if-ltz v10, :cond_1

    goto :goto_1

    :cond_1
    return-object v9

    .line 431
    :catchall_0
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Trace file that has invalid format: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v5, v9}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_2
    move-object/from16 v12, p2

    :cond_3
    :goto_1
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    :goto_3
    const/4 v1, 0x0

    return-object v1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    .line 437
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    return-object v1
.end method


# virtual methods
.method public final getCrashThreadId()J
    .locals 2

    .line 444
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->e:J

    return-wide v0
.end method

.method public final handleAnr(I)V
    .locals 2

    .line 386
    invoke-static {}, Lcom/uqm/crashsight/proguard/y;->a()Lcom/uqm/crashsight/proguard/y;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/uqm/crashsight/proguard/y;->a(Landroid/content/Context;I)Z

    return-void
.end method

.method public final handleCustomAnr()V
    .locals 2

    .line 391
    invoke-static {}, Lcom/uqm/crashsight/proguard/y;->a()Lcom/uqm/crashsight/proguard/y;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/proguard/y;->a(Landroid/content/Context;)Z

    return-void
.end method

.method public final handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIIZ)V
    .locals 29

    move-object/from16 v15, p0

    move/from16 v0, p2

    move-object/from16 v14, p8

    move/from16 v13, p12

    move/from16 v1, p14

    move-object/from16 v12, p17

    move-object/from16 v2, p19

    .line 239
    const-string v11, ""

    const/4 v10, 0x0

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "Native Crash Happen v2"

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    int-to-long v3, v0

    .line 240
    iput-wide v3, v15, Lcom/uqm/crashsight/crashreport/crash/jni/a;->e:J

    .line 246
    :try_start_0
    invoke-static/range {p9 .. p9}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 248
    const-string v3, "UNKNOWN"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 250
    const-string v4, ")"

    const-string v5, "("

    if-lez v13, :cond_0

    .line 252
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p13

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    const-string v6, "KERNEL"

    move-object v8, v1

    move-object/from16 v20, v3

    move-object/from16 v19, v6

    goto :goto_1

    :cond_0
    move-object/from16 v6, p7

    move-object/from16 v7, p13

    if-lez v1, :cond_1

    .line 258
    invoke-static/range {p14 .. p14}, Lcom/uqm/crashsight/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    :cond_1
    invoke-static/range {p14 .. p14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_0

    :cond_2
    move-object/from16 v20, v3

    :goto_0
    move-object v8, v6

    move-object/from16 v19, v7

    .line 265
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    .line 267
    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_6

    .line 268
    aget-object v6, v2, v3

    if-eqz v6, :cond_4

    .line 270
    const-string v7, "Extra message[%d]: %s"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v10, 0x2

    new-array v2, v10, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v16, v2, v17

    const/16 v16, 0x1

    aput-object v6, v2, v16

    invoke-static {v7, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 271
    const-string v2, "="

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 272
    array-length v7, v2

    if-ne v7, v10, :cond_3

    const/4 v7, 0x0

    .line 273
    aget-object v6, v2, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 275
    :cond_3
    const-string v2, "bad extraMsg %s"

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v10, v7

    invoke-static {v2, v10}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p19

    const/4 v10, 0x0

    goto :goto_2

    .line 280
    :cond_5
    const-string v2, "not found extraMsg"

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 284
    :cond_6
    const-string v2, "HasPendingException"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 285
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 286
    const-string v2, "Native crash happened with a Java pending exception."

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/16 v21, 0x1

    goto :goto_4

    :cond_7
    const/16 v21, 0x0

    .line 290
    :goto_4
    const-string v2, "ExceptionProcessName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 291
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_5

    .line 294
    :cond_8
    const-string v3, "Name of crash process: %s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    invoke-static {v3, v7}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    .line 292
    :cond_9
    :goto_5
    iget-object v2, v15, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    :goto_6
    move-object/from16 v24, v2

    .line 297
    const-string v2, "ExceptionThreadName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 298
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_8

    .line 302
    :cond_a
    const-string v3, "Name of crash thread: %s"

    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v6, v10

    invoke-static {v3, v6}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p23, :cond_c

    .line 305
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 306
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 307
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 308
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    .line 309
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, v8

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v2, 0x1

    goto :goto_7

    :cond_c
    move-object v10, v8

    move-object v3, v2

    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_d

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_d
    move-object v0, v3

    goto :goto_9

    :cond_e
    :goto_8
    move-object v10, v8

    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-wide/16 v2, 0x3e8

    mul-long v4, p3, v2

    .line 321
    div-long v2, p5, v2

    add-long/2addr v4, v2

    .line 323
    const-string v2, "SysLogPath"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Ljava/lang/String;

    .line 324
    const-string v2, "JniLogPath"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Ljava/lang/String;

    .line 326
    iget-object v1, v15, Lcom/uqm/crashsight/crashreport/crash/jni/a;->d:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c()Z

    move-result v1

    if-nez v1, :cond_f

    .line 327
    const-string v1, "no remote but still store!"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 330
    :cond_f
    iget-object v1, v15, Lcom/uqm/crashsight/crashreport/crash/jni/a;->d:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    .line 331
    iget-boolean v1, v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v8, "\n"

    if-nez v1, :cond_10

    :try_start_2
    iget-object v1, v15, Lcom/uqm/crashsight/crashreport/crash/jni/a;->d:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 332
    const-string v1, "crash report was closed by remote , will not upload to CrashSight , print local for helpful!"

    const/4 v7, 0x0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 334
    const-string v1, "NATIVE_CRASH"

    .line 1115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/v;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v24

    move-object/from16 p5, v0

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p2 .. p7}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 336
    invoke-static/range {p11 .. p11}, Lcom/uqm/crashsight/proguard/v;->c(Ljava/lang/String;)V

    return-void

    :cond_10
    const/4 v7, 0x0

    .line 342
    invoke-static/range {p10 .. p10}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object v3, v0

    move-object v6, v10

    const/16 v26, 0x0

    move-object/from16 v7, p8

    move-object/from16 p1, v0

    move-object v0, v8

    move-object v8, v9

    move-object/from16 v27, v9

    move-object/from16 v9, v25

    move-object/from16 v25, v0

    move-object/from16 v26, v10

    const/4 v0, 0x0

    move-object/from16 v10, v19

    move-object/from16 v28, v11

    move-object/from16 v11, v20

    move-object/from16 v12, p11

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v15, p18

    move/from16 v19, v21

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    .line 340
    :try_start_3
    invoke-virtual/range {v1 .. v23}, Lcom/uqm/crashsight/crashreport/crash/jni/a;->packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;ZZIIIZ)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    move-result-object v1

    if-nez v1, :cond_11

    .line 347
    const-string v1, "pkg crash data fail!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 352
    :cond_11
    sget-object v2, Lcom/uqm/crashsight/proguard/z;->h:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    move-object/from16 v3, v28

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v2, p17

    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 354
    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 357
    :cond_12
    const-string v2, "NATIVE_CRASH"

    .line 2115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/v;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v26

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v24

    move-object/from16 p5, p1

    move-object/from16 p6, v4

    move-object/from16 p7, v1

    invoke-static/range {p2 .. p7}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v2, p0

    .line 359
    :try_start_4
    iget-object v3, v2, Lcom/uqm/crashsight/crashreport/crash/jni/a;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    move/from16 v4, p12

    invoke-virtual {v3, v1, v4}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)Z

    move-result v3

    .line 361
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 363
    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    :goto_a
    const/4 v5, 0x1

    .line 365
    invoke-static {v5, v4}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->a(ZLjava/lang/String;)V

    if-nez v3, :cond_14

    .line 367
    iget-object v3, v2, Lcom/uqm/crashsight/crashreport/crash/jni/a;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v1, v6, v7, v5}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;JZ)V

    .line 369
    :cond_14
    invoke-static {v1}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 371
    sget-object v1, Lcom/uqm/crashsight/proguard/z;->b:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 372
    iget-object v1, v2, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/aa;->a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/aa;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 374
    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/aa;->c()V

    .line 375
    const-string v1, "deleteMemoryRecords"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_15
    return-void

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v15

    .line 380
    :goto_b
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;ZZIIIZ)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZIIIZ)",
            "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p11

    move-object/from16 v3, p15

    .line 81
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/crash/c;->l()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 83
    const-string v6, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 86
    :cond_0
    new-instance v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-direct {v6}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;-><init>()V

    .line 87
    iget-object v7, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v7, v6}, Lcom/uqm/crashsight/crashreport/crash/b;->e(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    const/4 v7, 0x1

    .line 89
    iput v7, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    .line 90
    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v8}, Lcom/uqm/crashsight/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 91
    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v8, v8, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 92
    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v8}, Lcom/uqm/crashsight/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    move-object/from16 v8, p5

    .line 94
    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 95
    const-string v8, ""

    if-eqz v4, :cond_1

    const-string v4, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![CrashSight]"

    goto :goto_0

    :cond_1
    move-object v4, v8

    :goto_0
    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    move-object/from16 v4, p6

    .line 98
    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-nez p7, :cond_2

    move-object v4, v8

    goto :goto_1

    :cond_2
    move-object/from16 v4, p7

    .line 99
    :goto_1
    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    if-nez p8, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v8, p8

    .line 100
    :goto_2
    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    move-wide v8, p3

    .line 102
    iput-wide v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    .line 103
    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/uqm/crashsight/proguard/v;->b([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 104
    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:Ljava/lang/String;

    move-object v4, p2

    .line 105
    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:Ljava/lang/String;

    .line 106
    iget-object v4, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->A()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->N:Ljava/lang/String;

    .line 107
    iget-object v4, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->x()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 108
    iget-object v4, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->L()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 109
    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    .line 111
    sget-object v4, Lcom/uqm/crashsight/proguard/z;->r:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "crashSight_crash_minidump_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, ".dmp"

    invoke-direct {p0, v4, v8}, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 114
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    .line 115
    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v4, v8, v5

    const-string v4, "Minidump File Path is %s"

    invoke-static {v4, v8}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 119
    :cond_4
    sget-object v4, Lcom/uqm/crashsight/proguard/z;->aA:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "CrashSight_StackTrace_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, ".txt"

    invoke-direct {p0, v4, v8}, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 122
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 123
    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v4, v8, v5

    const-string v4, "Stacktrace File Path is %s"

    invoke-static {v4, v8}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 128
    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v4

    const/4 v8, 0x0

    if-eqz v4, :cond_6

    .line 130
    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object v4, v8

    .line 132
    :goto_3
    invoke-static {v4, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 134
    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->aa:Ljava/lang/String;

    .line 136
    :cond_7
    invoke-static {v4}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ab:Ljava/lang/String;

    .line 137
    sget v2, Lcom/uqm/crashsight/crashreport/crash/c;->b:I

    sget-object v4, Lcom/uqm/crashsight/crashreport/crash/c;->e:Ljava/lang/String;

    sget-boolean v9, Lcom/uqm/crashsight/crashreport/crash/c;->j:Z

    move-object/from16 v10, p12

    invoke-static {v10, v2, v4, v9}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 139
    sget v2, Lcom/uqm/crashsight/crashreport/crash/c;->b:I

    move-object/from16 v4, p13

    invoke-static {v4, v2, v8, v7}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->C:Ljava/lang/String;

    move-object/from16 v2, p10

    .line 141
    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->O:Ljava/lang/String;

    move-object/from16 v2, p9

    .line 142
    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->P:Ljava/lang/String;

    move-object/from16 v2, p14

    .line 143
    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Q:Ljava/lang/String;

    move/from16 v2, p19

    .line 144
    iput v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ac:I

    move/from16 v2, p20

    .line 145
    iput v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ad:I

    move/from16 v2, p21

    .line 146
    iput v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ae:I

    .line 148
    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->r()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:J

    .line 149
    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->q()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->L:J

    .line 150
    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->s()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->M:J

    if-eqz p17, :cond_d

    .line 153
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->h()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    .line 154
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->f()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    .line 155
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->j()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:J

    .line 156
    iget-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    if-nez v2, :cond_8

    sget-object v2, Lcom/uqm/crashsight/proguard/z;->T:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    .line 157
    sget v2, Lcom/uqm/crashsight/crashreport/crash/c;->b:I

    sget-object v3, Lcom/uqm/crashsight/crashreport/crash/c;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/v;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 160
    :cond_8
    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-wide v2, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    iput-wide v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:J

    .line 161
    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Z

    move-result v2

    iput-boolean v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:Z

    if-eqz p22, :cond_9

    .line 163
    sget v2, Lcom/uqm/crashsight/crashreport/crash/c;->c:I

    .line 164
    invoke-static {v2, v5}, Lcom/uqm/crashsight/proguard/v;->a(IZ)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:Ljava/util/Map;

    .line 166
    :cond_9
    const-string v2, "java:\n"

    .line 167
    iget-object v3, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_a

    add-int/lit8 v2, v2, 0x6

    .line 170
    iget-object v3, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 171
    iget-object v3, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    .line 172
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    .line 171
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:Ljava/util/Map;

    iget-object v7, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:Ljava/lang/String;

    .line 175
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 176
    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:Ljava/util/Map;

    iget-object v7, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:Ljava/lang/String;

    .line 177
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 179
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a

    .line 181
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 183
    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:Ljava/util/Map;

    iget-object v7, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:Ljava/lang/String;

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    .line 185
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    :cond_a
    if-nez v1, :cond_b

    .line 192
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:Ljava/lang/String;

    .line 194
    :cond_b
    sget-object v1, Lcom/uqm/crashsight/proguard/z;->at:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 195
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getPthreadKeyCount()I

    move-result v1

    iput v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ah:I

    .line 198
    :cond_c
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v1, v6}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 199
    invoke-static {}, Lcom/uqm/crashsight/proguard/s;->b()[B

    move-result-object v1

    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:[B

    .line 201
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->J()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ag:Ljava/lang/String;

    .line 202
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->K()I

    move-result v1

    iput v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->W:I

    .line 203
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->D()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    .line 204
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->I()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/util/Map;

    .line 205
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    goto :goto_4

    :cond_d
    const-wide/16 v4, -0x1

    .line 208
    iput-wide v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    .line 209
    iput-wide v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    .line 210
    iput-wide v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:J

    .line 211
    iget-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 212
    const-string v2, "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc."

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 215
    :cond_e
    iput-wide v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:J

    const/4 v2, -0x1

    .line 216
    iput v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->V:I

    .line 217
    iput v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->W:I

    move-object/from16 v2, p16

    .line 218
    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    .line 220
    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->I()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/util/Map;

    .line 221
    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:Ljava/util/Map;

    if-nez v1, :cond_f

    .line 223
    const-string v1, "unknown(record)"

    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:Ljava/lang/String;

    :cond_f
    if-eqz v3, :cond_10

    .line 226
    iput-object v3, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:[B

    :cond_10
    :goto_4
    return-object v6
.end method

.method public final testThreadNameFromJni()V
    .locals 3

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "testThreadNameFromJni: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
