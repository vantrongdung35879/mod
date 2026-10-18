.class public Lcom/uqm/crashsight/proguard/ad;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Lcom/uqm/crashsight/proguard/ad;


# instance fields
.field private b:I

.field private c:I

.field private d:J

.field private e:J

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIJJIZLjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p2, p0, Lcom/uqm/crashsight/proguard/ad;->b:I

    .line 29
    iput p3, p0, Lcom/uqm/crashsight/proguard/ad;->c:I

    .line 30
    iput-wide p4, p0, Lcom/uqm/crashsight/proguard/ad;->d:J

    .line 31
    iput-wide p6, p0, Lcom/uqm/crashsight/proguard/ad;->e:J

    .line 32
    iput p8, p0, Lcom/uqm/crashsight/proguard/ad;->f:I

    .line 33
    iput-boolean p9, p0, Lcom/uqm/crashsight/proguard/ad;->g:Z

    .line 34
    iput-object p10, p0, Lcom/uqm/crashsight/proguard/ad;->h:Ljava/lang/String;

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcom/uqm/crashsight/proguard/ad;->i:Z

    .line 36
    const-string p3, "crashSight"

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/ad;->j:Ljava/lang/String;

    return-void
.end method

.method private a(J)V
    .locals 5

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    const-wide/16 v2, 0x3e8

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    .line 112
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    sub-long/2addr p1, v2

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    move-wide p1, v0

    .line 118
    :goto_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/proguard/ad;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 123
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;IIJJIZLjava/lang/String;)V
    .locals 14

    const-class v1, Lcom/uqm/crashsight/proguard/ad;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/uqm/crashsight/proguard/ad;->a:Lcom/uqm/crashsight/proguard/ad;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 45
    const-string v0, "Start a new dump routine"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/uqm/crashsight/proguard/ad;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move/from16 v6, p2

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v3 .. v13}, Lcom/uqm/crashsight/proguard/ad;-><init>(Landroid/content/Context;IIJJIZLjava/lang/String;)V

    sput-object v0, Lcom/uqm/crashsight/proguard/ad;->a:Lcom/uqm/crashsight/proguard/ad;

    .line 47
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/uqm/crashsight/proguard/ad;->a:Lcom/uqm/crashsight/proguard/ad;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    const-string v2, "CrashSight_DumpRoutine"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    monitor-exit v1

    return-void

    .line 51
    :cond_0
    :try_start_1
    const-class v3, Lcom/uqm/crashsight/proguard/ad;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    :try_start_2
    const-string v0, "There is already a dump routine! Modify it."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/uqm/crashsight/proguard/ad;->a:Lcom/uqm/crashsight/proguard/ad;

    move v4, p1

    iput v4, v0, Lcom/uqm/crashsight/proguard/ad;->b:I

    move/from16 v4, p2

    .line 54
    iput v4, v0, Lcom/uqm/crashsight/proguard/ad;->c:I

    move-wide/from16 v4, p3

    .line 55
    iput-wide v4, v0, Lcom/uqm/crashsight/proguard/ad;->d:J

    move-wide/from16 v4, p5

    .line 56
    iput-wide v4, v0, Lcom/uqm/crashsight/proguard/ad;->e:J

    move/from16 v4, p7

    .line 57
    iput v4, v0, Lcom/uqm/crashsight/proguard/ad;->f:I

    move/from16 v4, p8

    .line 58
    iput-boolean v4, v0, Lcom/uqm/crashsight/proguard/ad;->g:Z

    move-object/from16 v4, p9

    .line 59
    iput-object v4, v0, Lcom/uqm/crashsight/proguard/ad;->h:Ljava/lang/String;

    const/4 v4, 0x1

    .line 60
    iput-boolean v4, v0, Lcom/uqm/crashsight/proguard/ad;->i:Z

    .line 61
    const-string v4, "crashSight"

    move-object v5, p0

    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uqm/crashsight/proguard/ad;->j:Ljava/lang/String;

    .line 62
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 70
    :cond_0
    const-class v0, Lcom/uqm/crashsight/proguard/ad;

    monitor-enter v0

    const/4 v1, 0x0

    .line 71
    :try_start_0
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/ad;->i:Z

    .line 72
    iget v2, p0, Lcom/uqm/crashsight/proguard/ad;->c:I

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 73
    iget-wide v5, p0, Lcom/uqm/crashsight/proguard/ad;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 75
    iget-wide v5, p0, Lcom/uqm/crashsight/proguard/ad;->d:J

    goto :goto_0

    :cond_2
    move-wide v5, v3

    .line 77
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v0, v5, v3

    if-gtz v0, :cond_3

    .line 79
    const-string v0, "Start immediately\uff01"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_3
    invoke-direct {p0, v5, v6}, Lcom/uqm/crashsight/proguard/ad;->a(J)V

    :goto_1
    const/4 v0, 0x0

    .line 84
    :goto_2
    iget v2, p0, Lcom/uqm/crashsight/proguard/ad;->f:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_6

    iget-boolean v2, p0, Lcom/uqm/crashsight/proguard/ad;->i:Z

    if-nez v2, :cond_6

    .line 86
    :try_start_1
    const-class v2, Lcom/uqm/crashsight/proguard/ad;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    :try_start_2
    iget-boolean v4, p0, Lcom/uqm/crashsight/proguard/ad;->g:Z

    if-eqz v4, :cond_4

    .line 89
    iget-object v3, p0, Lcom/uqm/crashsight/proguard/ad;->h:Ljava/lang/String;

    :cond_4
    move-object v10, v3

    .line 93
    const-string v5, "Routined Dump"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dump count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v9, p0, Lcom/uqm/crashsight/proguard/ad;->b:I

    const/16 v4, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/uqm/crashsight/crashreport/CrashReport;->postException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V

    .line 95
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v0, 0x1

    .line 96
    :try_start_3
    iget v3, p0, Lcom/uqm/crashsight/proguard/ad;->f:I

    if-eq v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/uqm/crashsight/proguard/ad;->i:Z

    if-nez v2, :cond_5

    .line 97
    iget-wide v2, p0, Lcom/uqm/crashsight/proguard/ad;->e:J

    invoke-direct {p0, v2, v3}, Lcom/uqm/crashsight/proguard/ad;->a(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v3

    .line 95
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v2

    .line 100
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    :cond_6
    iget-boolean v0, p0, Lcom/uqm/crashsight/proguard/ad;->i:Z

    if-nez v0, :cond_0

    .line 104
    sput-object v3, Lcom/uqm/crashsight/proguard/ad;->a:Lcom/uqm/crashsight/proguard/ad;

    .line 105
    const-string v0, "dumpRoutine finished!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_1
    move-exception v1

    .line 77
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method
