.class public final Lcom/uqm/crashsight/proguard/j;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:Lcom/uqm/crashsight/crashreport/common/info/b;

.field private final f:Lcom/uqm/crashsight/crashreport/common/info/a;

.field private final g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

.field private final h:Lcom/uqm/crashsight/proguard/i;

.field private final i:Lcom/uqm/crashsight/proguard/l;

.field private final j:Lcom/uqm/crashsight/proguard/k;

.field private k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:I

.field private n:J

.field private o:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;ZZ)V
    .locals 9

    const/4 v7, 0x2

    const/16 v8, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    .line 73
    invoke-direct/range {v0 .. v8}, Lcom/uqm/crashsight/proguard/j;-><init>(Landroid/content/Context;ILcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/uqm/crashsight/crashreport/common/info/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/proguard/k;",
            "II)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p7, 0x2

    .line 37
    iput p7, p0, Lcom/uqm/crashsight/proguard/j;->a:I

    const/16 p8, 0x2710

    .line 39
    iput p8, p0, Lcom/uqm/crashsight/proguard/j;->b:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/uqm/crashsight/proguard/j;->m:I

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/j;->n:J

    .line 55
    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/j;->o:J

    .line 94
    iput-object p1, p0, Lcom/uqm/crashsight/proguard/j;->c:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/j;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    .line 96
    iput-object p3, p0, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    .line 97
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object p3

    iput-object p3, p0, Lcom/uqm/crashsight/proguard/j;->g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    .line 98
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/i;->a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/i;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/j;->h:Lcom/uqm/crashsight/proguard/i;

    .line 99
    invoke-static {}, Lcom/uqm/crashsight/proguard/l;->a()Lcom/uqm/crashsight/proguard/l;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/j;->i:Lcom/uqm/crashsight/proguard/l;

    .line 100
    iput-object p4, p0, Lcom/uqm/crashsight/proguard/j;->k:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lcom/uqm/crashsight/proguard/j;->l:Ljava/lang/String;

    .line 102
    iput-object p6, p0, Lcom/uqm/crashsight/proguard/j;->j:Lcom/uqm/crashsight/proguard/k;

    .line 103
    iput p2, p0, Lcom/uqm/crashsight/proguard/j;->d:I

    .line 105
    iput p7, p0, Lcom/uqm/crashsight/proguard/j;->a:I

    .line 108
    iput p8, p0, Lcom/uqm/crashsight/proguard/j;->b:I

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 348
    iget v3, p0, Lcom/uqm/crashsight/proguard/j;->a:I

    if-ge v1, v3, :cond_2

    const/4 v1, 0x1

    if-le v2, v1, :cond_0

    .line 351
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    .line 350
    const-string v3, "[Upload] Failed to upload last time, wait and try(%d) again."

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 352
    iget v3, p0, Lcom/uqm/crashsight/proguard/j;->b:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/v;->b(J)V

    .line 354
    :cond_0
    iget-object v3, p0, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v3, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    iget v4, p0, Lcom/uqm/crashsight/proguard/j;->d:I

    .line 355
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v0

    aput-object v4, v7, v1

    const/4 v1, 0x2

    aput-object v5, v7, v1

    const/4 v1, 0x3

    aput-object v6, v7, v1

    .line 354
    const-string v1, "[UploadId] Upload to %s with cmd %d (pid=%d | tid=%d)."

    invoke-static {v1, v7}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 356
    iget-object v1, p0, Lcom/uqm/crashsight/proguard/j;->h:Lcom/uqm/crashsight/proguard/i;

    iget-object v3, p0, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-virtual {v1, p0, v3}, Lcom/uqm/crashsight/proguard/i;->a(Lcom/uqm/crashsight/proguard/j;Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JJ)Ljava/lang/String;
    .locals 13

    move-object v10, p0

    const/4 v11, 0x0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v12, v0, 0x1

    .line 366
    iget v1, v10, Lcom/uqm/crashsight/proguard/j;->a:I

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    if-le v12, v0, :cond_0

    .line 369
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v1, v2, v11

    .line 368
    const-string v1, "[Upload] Failed to upload last time, wait and try(%d) again."

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 370
    iget v1, v10, Lcom/uqm/crashsight/proguard/j;->b:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/v;->b(J)V

    .line 372
    :cond_0
    iget-object v1, v10, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    iget v2, v10, Lcom/uqm/crashsight/proguard/j;->d:I

    .line 373
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v11

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    .line 372
    const-string v0, "[UploadPart] Upload to %s with cmd %d (pid=%d | tid=%d)."

    invoke-static {v0, v5}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 374
    iget-object v0, v10, Lcom/uqm/crashsight/proguard/j;->h:Lcom/uqm/crashsight/proguard/i;

    iget-object v2, v10, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/uqm/crashsight/proguard/i;->a(Lcom/uqm/crashsight/proguard/j;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JJ)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    move v0, v12

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Ljava/lang/Object;ZILjava/lang/String;I)V
    .locals 2

    const/4 p1, 0x1

    if-nez p5, :cond_0

    .line 129
    const-string p5, "cosUpload"

    goto :goto_0

    :cond_0
    if-ne p5, p1, :cond_1

    .line 131
    const-string p5, "s3Upload"

    goto :goto_0

    .line 130
    :cond_1
    const-string p5, ""

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 135
    new-array p1, p1, [Ljava/lang/Object;

    aput-object p5, p1, v0

    const-string p3, "[attach][Upload] Success: %s"

    invoke-static {p3, p1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 136
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string p3, "success"

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    aput-object p5, v1, p1

    const/4 p1, 0x2

    aput-object p4, v1, p1

    const-string p1, "[attach][Upload] Failed to upload(%d) %s: %s"

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 139
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string p3, "fail"

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 141
    :goto_1
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/j;->j:Lcom/uqm/crashsight/proguard/k;

    if-eqz p1, :cond_3

    .line 142
    invoke-interface {p1, p2}, Lcom/uqm/crashsight/proguard/k;->a(Z)V

    :cond_3
    return-void
.end method

.method private a(Ljava/io/File;JJ)Z
    .locals 12

    move-object v8, p0

    const/4 v9, 0x0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v10, v0, 0x1

    .line 330
    iget v1, v8, Lcom/uqm/crashsight/proguard/j;->a:I

    if-ge v0, v1, :cond_2

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 333
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v0, v1, v9

    .line 332
    const-string v0, "[attach][uploadOnce] Failed to upload last time, wait and try(%d) again."

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 334
    iget v0, v8, Lcom/uqm/crashsight/proguard/j;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/v;->b(J)V

    .line 336
    :cond_0
    iget-object v0, v8, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    iget v1, v8, Lcom/uqm/crashsight/proguard/j;->d:I

    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v9

    aput-object v1, v4, v11

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    .line 336
    const-string v0, "[UploadOnce] Upload to %s with cmd %d (pid=%d | tid=%d)."

    invoke-static {v0, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 338
    iget-object v0, v8, Lcom/uqm/crashsight/proguard/j;->h:Lcom/uqm/crashsight/proguard/i;

    const-wide/16 v2, 0x0

    iget-object v7, v8, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    move-object v1, p1

    move-wide/from16 v4, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/io/File;JJLcom/uqm/crashsight/proguard/j;Lcom/uqm/crashsight/crashreport/common/info/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v11

    :cond_1
    move v0, v10

    goto :goto_0

    :cond_2
    return v9
.end method

.method private a(Ljava/lang/String;[B)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 384
    iget v3, p0, Lcom/uqm/crashsight/proguard/j;->a:I

    if-ge v1, v3, :cond_2

    const/4 v1, 0x1

    if-le v2, v1, :cond_0

    .line 387
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    .line 386
    const-string v3, "[Upload][completeUploadPart] Failed to upload last time, wait and try(%d) again."

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 389
    iget v3, p0, Lcom/uqm/crashsight/proguard/j;->b:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/v;->b(J)V

    .line 391
    :cond_0
    iget-object v3, p0, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v3, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Ljava/lang/String;

    iget v4, p0, Lcom/uqm/crashsight/proguard/j;->d:I

    .line 392
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v0

    aput-object v4, v7, v1

    const/4 v3, 0x2

    aput-object v5, v7, v3

    const/4 v3, 0x3

    aput-object v6, v7, v3

    .line 391
    const-string v3, "[CompleteUpload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    invoke-static {v3, v7}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 393
    iget-object v3, p0, Lcom/uqm/crashsight/proguard/j;->h:Lcom/uqm/crashsight/proguard/i;

    iget-object v4, p0, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-virtual {v3, p0, v4, p1, p2}, Lcom/uqm/crashsight/proguard/i;->a(Lcom/uqm/crashsight/proguard/j;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 320
    iget v0, p0, Lcom/uqm/crashsight/proguard/j;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/proguard/j;->m:I

    .line 321
    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/j;->n:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/j;->n:J

    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 325
    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/j;->o:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/j;->o:J

    return-void
.end method

.method public final run()V
    .locals 26

    move-object/from16 v9, p0

    .line 149
    :try_start_0
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v1, "upload task start"

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 150
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    if-nez v0, :cond_0

    return-void

    .line 1405
    :cond_0
    sget-boolean v1, Lcom/uqm/crashsight/proguard/q;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 1408
    :try_start_1
    const-string v1, "[attach] CosTokenBean\nid:[%d]\ntype:[%d]\nbucket:[%s]\nregion:[%s]\ndomain:[%s]\ntmpSecretId:[%s]\ntmpSecretKey:[%s]\nsessionToken:[%s]\nappId:[%s]\nappVersion:[%s]\ncsCachedAttachmentPath:[%s]\nexpUid:[%s]\nuriPath:[%s]\ncustomerKey:[%s]\ncustomerKeyMd5:[%s]\nexpUid:[%s]\n"

    iget v11, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->a:I

    .line 1415
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    .line 1416
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    iget-object v10, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object v13, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    iget-object v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    iget-object v3, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    iget-object v14, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    iget-object v15, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    iget-object v9, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Ljava/lang/String;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v11, v0, v20

    const/4 v11, 0x1

    aput-object v12, v0, v11

    const/4 v11, 0x2

    aput-object v2, v0, v11

    const/4 v2, 0x3

    aput-object v7, v0, v2

    const/4 v2, 0x4

    aput-object v10, v0, v2

    const/4 v2, 0x5

    aput-object v5, v0, v2

    const/4 v2, 0x6

    aput-object v4, v0, v2

    const/4 v2, 0x7

    aput-object v13, v0, v2

    const/16 v2, 0x8

    aput-object v6, v0, v2

    const/16 v2, 0x9

    aput-object v3, v0, v2

    const/16 v2, 0xa

    aput-object v14, v0, v2

    const/16 v2, 0xb

    aput-object v15, v0, v2

    const/16 v2, 0xc

    aput-object v8, v0, v2

    const/16 v2, 0xd

    aput-object v9, v0, v2

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0xf

    aput-object v22, v0, v1

    move-object/from16 v1, v21

    .line 1408
    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v9, p0

    goto/16 :goto_7

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move-object/from16 v9, p0

    .line 155
    :try_start_2
    iput v0, v9, Lcom/uqm/crashsight/proguard/j;->m:I

    const-wide/16 v10, 0x0

    .line 156
    iput-wide v10, v9, Lcom/uqm/crashsight/proguard/j;->n:J

    .line 157
    iput-wide v10, v9, Lcom/uqm/crashsight/proguard/j;->o:J

    .line 160
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 163
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v1, "network is not available"

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 164
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    .line 2186
    const-string v1, "[attach] saveRetCode ..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/16 v1, 0x9

    .line 2187
    iput v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 2188
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    .line 165
    const-string v5, "[attach] network is not available"

    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/Object;ZILjava/lang/String;I)V

    return-void

    .line 170
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/c;->g()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    const-string v2, "WIFI"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 172
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 173
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v1, "[attach] cloudControlNetWorkType is 1, but not using WIFI"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a(ILjava/lang/String;)V

    .line 175
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v1, "[attach] cloudControlNetWorkType is 2, but using WIFI"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a(ILjava/lang/String;)V

    .line 182
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 187
    :goto_1
    const-string v5, "network mismatch"

    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/Object;ZILjava/lang/String;I)V

    return-void

    .line 3117
    :cond_4
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    .line 3167
    const-string v1, "[attach] saveUploadStart ..."

    const/4 v7, 0x0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    .line 3169
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d()V

    .line 193
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->z:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    .line 196
    iget v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 197
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v2, "zip failed last time"

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v1

    .line 199
    iget-object v2, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v3, "zip start"

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 200
    iget-object v2, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    .line 201
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/c;->e()I

    move-result v2

    .line 202
    iget-object v3, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-virtual {v1, v3, v2}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(Lcom/uqm/crashsight/crashreport/common/info/b;I)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_5

    .line 204
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v5, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/Object;ZILjava/lang/String;I)V

    return-void

    .line 207
    :cond_5
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v2, "zip end"

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 208
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b()V

    .line 209
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a(Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;)V

    .line 212
    :cond_6
    iget v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v12, "readFileData2 failed"

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 213
    :try_start_4
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v2, "readFileData2 start"

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 214
    new-instance v3, Ljava/io/File;

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->h:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->j:J

    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-wide/16 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/io/File;JJLcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;)J

    move-result-wide v5

    cmp-long v1, v5, v10

    if-gez v1, :cond_7

    .line 216
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v0, v12}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 217
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v5, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/Object;ZILjava/lang/String;I)V

    return-void

    .line 220
    :cond_7
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v2, "uploadOnce start"

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 221
    new-instance v2, Ljava/io/File;

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->h:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/io/File;JJ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 222
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v2, "uploadOnce success"

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 223
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a(Lcom/uqm/crashsight/crashreport/common/info/b;)V

    .line 224
    const-string v5, ""

    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/Object;ZILjava/lang/String;I)V

    goto/16 :goto_6

    .line 226
    :cond_8
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const/16 v1, 0xc

    iput v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 227
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v1, "uploadOnce failed"

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 228
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v5, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/Object;ZILjava/lang/String;I)V

    goto/16 :goto_8

    .line 232
    :cond_9
    iget v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 233
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v2, "getUploadId start"

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/uqm/crashsight/proguard/j;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    .line 235
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 236
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v1, "getUploadId failed"

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 237
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const/16 v1, 0xd

    iput v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 238
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v5, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/Object;ZILjava/lang/String;I)V

    return-void

    .line 241
    :cond_a
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUploadId success, UploadId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 242
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c()V

    const/4 v1, 0x4

    .line 243
    iput v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    .line 244
    iget-object v2, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput v1, v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->r:I

    .line 245
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a()V

    .line 247
    :cond_b
    iget v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_12

    .line 249
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->k:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-wide v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->e:J

    .line 252
    iget v3, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->d:I

    .line 253
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/c;->h()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v14, 0x500000

    cmp-long v6, v4, v14

    if-gez v6, :cond_c

    .line 254
    iget-object v6, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v6, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_c

    move v8, v3

    move-wide/from16 v16, v14

    move-wide v14, v1

    goto :goto_2

    :cond_c
    move-wide v14, v1

    move v8, v3

    move-wide/from16 v16, v4

    .line 257
    :goto_2
    iget-wide v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->j:J

    cmp-long v3, v14, v1

    if-gez v3, :cond_12

    .line 258
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "part "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 260
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    move-object/from16 v20, v1

    move-wide/from16 v21, v14

    move-wide/from16 v23, v16

    move-object/from16 v25, v2

    invoke-static/range {v20 .. v25}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/io/File;JJLcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;)J

    move-result-wide v18

    cmp-long v1, v18, v10

    if-gez v1, :cond_d

    .line 262
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v0, v12}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 263
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v5, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/Object;ZILjava/lang/String;I)V

    return-void

    .line 266
    :cond_d
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v2, "uploadPart"

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 267
    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->h:Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-wide v5, v14

    move v10, v8

    const/4 v11, 0x0

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JJ)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 269
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const/16 v2, 0xe

    iput v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 270
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v1, "uploadPart failed"

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 271
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v5, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/Object;ZILjava/lang/String;I)V

    return-void

    :cond_e
    const/16 v2, 0xe

    .line 274
    iget-object v3, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v3, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v4, "uploadPart success"

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 275
    iget-object v3, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v3, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v3}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c()V

    .line 277
    const-string v3, "<Part>\n"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v3, "<PartNumber>"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "</PartNumber>\n"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v3, "<ETag>"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</ETag>\n"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, "</Part>\n"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v14, v14, v18

    .line 283
    const-string v1, "[attach] readLen=[%d] zipAttachSize=[%d]"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v11

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-static {v1, v6}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 284
    iget-wide v3, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->j:J

    cmp-long v1, v14, v3

    if-nez v1, :cond_f

    .line 285
    const-string v1, "</CompleteMultipartUpload>"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->k:Ljava/lang/String;

    const/4 v1, 0x5

    .line 287
    iput v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    .line 288
    iget-object v2, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput v1, v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->r:I

    .line 289
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a()V

    goto :goto_5

    :cond_f
    add-int/lit8 v8, v10, 0x1

    .line 294
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4155
    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    .line 4156
    iput v8, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->d:I

    .line 4157
    iput-wide v14, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->e:J

    .line 4158
    iput-object v3, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->k:Ljava/lang/String;

    .line 4160
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v20

    if-eqz v20, :cond_11

    .line 4164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "attach_up_record_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4165
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->a(Landroid/os/Parcelable;)[B

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v21, 0x3ec

    move-object/from16 v22, v1

    invoke-virtual/range {v20 .. v25}, Lcom/uqm/crashsight/proguard/d;->a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/c;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4166
    const-string v3, "[attach] save attach up record success, key=[%s]"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v11

    invoke-static {v3, v6}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_3

    .line 4168
    :cond_10
    const-string v3, "[attach] save attach up record  failed, key=[%s]"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v11

    invoke-static {v3, v6}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4170
    :goto_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c()V

    goto :goto_4

    :cond_11
    const/4 v4, 0x1

    :goto_4
    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    goto/16 :goto_2

    .line 297
    :cond_12
    :goto_5
    iget v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_14

    .line 298
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v2, "completeUploadPart start"

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 300
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->k:Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v9, v1, v2}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 301
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v2, "completeUploadPart success"

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 302
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a(Lcom/uqm/crashsight/crashreport/common/info/b;)V

    .line 303
    const-string v5, ""

    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/Object;ZILjava/lang/String;I)V

    return-void

    .line 306
    :cond_13
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const/16 v1, 0xf

    iput v1, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 307
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v1, "completeUploadPart failed"

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b(Ljava/lang/String;)V

    .line 308
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v5, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/Object;ZILjava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_14
    :goto_6
    return-void

    :catchall_1
    move-exception v0

    .line 312
    :goto_7
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 313
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const/16 v2, 0xb

    iput v2, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    .line 314
    iget-object v1, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    .line 315
    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->y:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v5, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    iget-object v0, v9, Lcom/uqm/crashsight/proguard/j;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/j;->a(Ljava/lang/Object;ZILjava/lang/String;I)V

    :goto_8
    return-void
.end method
