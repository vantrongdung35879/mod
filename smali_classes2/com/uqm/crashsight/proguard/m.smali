.class public final Lcom/uqm/crashsight/proguard/m;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:[B

.field private final f:Lcom/uqm/crashsight/crashreport/common/info/a;

.field private final g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

.field private final h:Lcom/uqm/crashsight/proguard/i;

.field private final i:Lcom/uqm/crashsight/proguard/l;

.field private final j:I

.field private final k:Lcom/uqm/crashsight/proguard/k;

.field private final l:Lcom/uqm/crashsight/proguard/k;

.field private m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:J

.field private r:J

.field private s:Z

.field private t:Z

.field private u:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;IIZLjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/proguard/k;",
            "IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 40
    iput v0, p0, Lcom/uqm/crashsight/proguard/m;->a:I

    const/16 v0, 0x7530

    .line 42
    iput v0, p0, Lcom/uqm/crashsight/proguard/m;->b:I

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/m;->m:Ljava/lang/String;

    const/4 v1, 0x0

    .line 59
    iput v1, p0, Lcom/uqm/crashsight/proguard/m;->p:I

    const-wide/16 v2, 0x0

    .line 60
    iput-wide v2, p0, Lcom/uqm/crashsight/proguard/m;->q:J

    .line 61
    iput-wide v2, p0, Lcom/uqm/crashsight/proguard/m;->r:J

    .line 63
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/m;->s:Z

    .line 64
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/m;->t:Z

    .line 65
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/m;->u:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    .line 128
    iput-object p1, p0, Lcom/uqm/crashsight/proguard/m;->c:Landroid/content/Context;

    .line 129
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    .line 130
    iput-object p4, p0, Lcom/uqm/crashsight/proguard/m;->e:[B

    .line 131
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object p4

    iput-object p4, p0, Lcom/uqm/crashsight/proguard/m;->g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    .line 132
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/i;->a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/i;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/m;->h:Lcom/uqm/crashsight/proguard/i;

    .line 133
    invoke-static {}, Lcom/uqm/crashsight/proguard/l;->a()Lcom/uqm/crashsight/proguard/l;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/m;->i:Lcom/uqm/crashsight/proguard/l;

    .line 134
    iput p2, p0, Lcom/uqm/crashsight/proguard/m;->j:I

    .line 135
    iput-object p5, p0, Lcom/uqm/crashsight/proguard/m;->m:Ljava/lang/String;

    .line 136
    iput-object p6, p0, Lcom/uqm/crashsight/proguard/m;->n:Ljava/lang/String;

    .line 137
    iput-object p7, p0, Lcom/uqm/crashsight/proguard/m;->k:Lcom/uqm/crashsight/proguard/k;

    .line 138
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/m;->l:Lcom/uqm/crashsight/proguard/k;

    .line 139
    iput p3, p0, Lcom/uqm/crashsight/proguard/m;->d:I

    if-lez p8, :cond_0

    .line 141
    iput p8, p0, Lcom/uqm/crashsight/proguard/m;->a:I

    :cond_0
    if-lez p9, :cond_1

    .line 144
    iput p9, p0, Lcom/uqm/crashsight/proguard/m;->b:I

    .line 147
    :cond_1
    iput-boolean p10, p0, Lcom/uqm/crashsight/proguard/m;->s:Z

    .line 148
    iput-object p11, p0, Lcom/uqm/crashsight/proguard/m;->o:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;ZIIZLjava/util/Map;ZLcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/proguard/k;",
            "ZIIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v11, p12

    .line 104
    invoke-direct/range {v0 .. v11}, Lcom/uqm/crashsight/proguard/m;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;IIZLjava/util/Map;)V

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, v12, Lcom/uqm/crashsight/proguard/m;->t:Z

    move-object/from16 v1, p14

    .line 107
    iput-object v1, v12, Lcom/uqm/crashsight/proguard/m;->u:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    .line 108
    iget v1, v12, Lcom/uqm/crashsight/proguard/m;->a:I

    add-int/2addr v1, v0

    iput v1, v12, Lcom/uqm/crashsight/proguard/m;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;ZZLjava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/proguard/k;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x2

    const/16 v9, 0x7530

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 83
    invoke-direct/range {v0 .. v11}, Lcom/uqm/crashsight/proguard/m;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/k;IIZLjava/util/Map;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 500
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 504
    :cond_0
    :try_start_0
    const-string v0, "%s?aid=%s"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 506
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static a(ILjava/lang/String;)V
    .locals 3

    const/4 p0, 0x1

    .line 171
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    aput-object p1, v1, p0

    const-string p0, "[Upload] Failed to upload(%d): %s"

    invoke-static {p0, v1}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V
    .locals 3

    .line 180
    iget p1, p0, Lcom/uqm/crashsight/proguard/m;->d:I

    const/16 v0, 0x276

    if-eq p1, v0, :cond_1

    const/16 v0, 0x280

    if-eq p1, v0, :cond_0

    const/16 v0, 0x33e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x348

    if-eq p1, v0, :cond_0

    .line 190
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 188
    :cond_0
    const-string p1, "userinfo"

    goto :goto_0

    .line 184
    :cond_1
    const-string p1, "crash"

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 193
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "[Upload] Success: %s"

    invoke-static {p1, p3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p4, v2, p1

    const-string p1, "[Upload] Failed to upload(%d) %s: %s"

    invoke-static {p1, v2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 198
    :goto_1
    iget-wide p3, p0, Lcom/uqm/crashsight/proguard/m;->q:J

    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/m;->r:J

    add-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_3

    .line 199
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/m;->i:Lcom/uqm/crashsight/proguard/l;

    iget-boolean p3, p0, Lcom/uqm/crashsight/proguard/m;->s:Z

    .line 200
    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/proguard/l;->a(Z)J

    move-result-wide p3

    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/m;->q:J

    add-long/2addr p3, v0

    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/m;->r:J

    add-long/2addr p3, v0

    .line 201
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/m;->i:Lcom/uqm/crashsight/proguard/l;

    iget-boolean v0, p0, Lcom/uqm/crashsight/proguard/m;->s:Z

    invoke-virtual {p1, p3, p4, v0}, Lcom/uqm/crashsight/proguard/l;->a(JZ)V

    .line 204
    :cond_3
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/m;->k:Lcom/uqm/crashsight/proguard/k;

    if-eqz p1, :cond_4

    .line 205
    invoke-interface {p1, p2}, Lcom/uqm/crashsight/proguard/k;->a(Z)V

    .line 207
    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/m;->l:Lcom/uqm/crashsight/proguard/k;

    if-eqz p1, :cond_5

    .line 208
    invoke-interface {p1, p2}, Lcom/uqm/crashsight/proguard/k;->a(Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 491
    iget v0, p0, Lcom/uqm/crashsight/proguard/m;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/proguard/m;->p:I

    .line 492
    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/m;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/m;->q:J

    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 496
    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/m;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/m;->r:J

    return-void
.end method

.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    .line 256
    const-string v2, "[Upload] Failed to upload for no status header."

    const-string v3, "status"

    const-string v4, "1"

    const/4 v5, 0x0

    :try_start_0
    iput v5, v1, Lcom/uqm/crashsight/proguard/m;->p:I

    const-wide/16 v6, 0x0

    .line 257
    iput-wide v6, v1, Lcom/uqm/crashsight/proguard/m;->q:J

    .line 258
    iput-wide v6, v1, Lcom/uqm/crashsight/proguard/m;->r:J

    .line 259
    iget-object v8, v1, Lcom/uqm/crashsight/proguard/m;->e:[B

    .line 262
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/m;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 263
    const-string v0, "network is not available"

    invoke-direct {v1, v9, v5, v5, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz v8, :cond_22

    .line 266
    array-length v0, v8

    if-nez v0, :cond_1

    goto/16 :goto_f

    .line 271
    :cond_1
    const-string v0, "[Upload] Run upload task with cmd: %d"

    iget v10, v1, Lcom/uqm/crashsight/proguard/m;->d:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v10, v12, v5

    invoke-static {v0, v12}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 273
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/m;->c:Landroid/content/Context;

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/m;->g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    if-eqz v0, :cond_21

    iget-object v10, v1, Lcom/uqm/crashsight/proguard/m;->h:Lcom/uqm/crashsight/proguard/i;

    if-nez v10, :cond_2

    goto/16 :goto_e

    .line 279
    :cond_2
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    if-nez v0, :cond_3

    .line 281
    const-string v0, "illegal local strategy"

    invoke-direct {v1, v9, v5, v5, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    .line 287
    :cond_3
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 288
    const-string v12, "tls"

    invoke-interface {v10, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v12, "prodId"

    iget-object v13, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v13}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v12, "bundleId"

    iget-object v13, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v13, v13, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v12, "appVer"

    iget-object v13, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v13, v13, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    invoke-static {v13}, Lcom/uqm/crashsight/proguard/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/uqm/crashsight/proguard/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v12, "sdkName"

    const-string v13, "CrashSight"

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v12, "Content-Type"

    const-string v13, "application/octet-stream"

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v12, v1, Lcom/uqm/crashsight/proguard/m;->o:Ljava/util/Map;

    if-eqz v12, :cond_4

    .line 297
    invoke-interface {v10, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 301
    :cond_4
    const-string v12, "cmd"

    iget v13, v1, Lcom/uqm/crashsight/proguard/m;->d:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v12, "platformId"

    .line 303
    invoke-static {v11}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v13

    .line 302
    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v12, "sdkVer"

    iget-object v13, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v13, v13, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v12, "strategylastUpdateTime"

    iget-wide v13, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->l:J

    .line 306
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 310
    :try_start_1
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    const-string v0, "model"

    iget-object v12, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v12}, Lcom/uqm/crashsight/crashreport/common/info/a;->p()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v0, "os"

    iget-object v12, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v12, v12, Lcom/uqm/crashsight/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-interface {v10, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_5
    const-string v0, "A22"

    iget-object v12, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v12}, Lcom/uqm/crashsight/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v0, "redisKeyUuid"

    iget-object v12, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v12}, Lcom/uqm/crashsight/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v0, "brand"

    iget-object v12, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v12, v12, Lcom/uqm/crashsight/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-interface {v10, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 318
    :try_start_2
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x2

    .line 322
    invoke-static {v8, v0}, Lcom/uqm/crashsight/proguard/v;->a([BI)[B

    move-result-object v8

    if-nez v8, :cond_6

    .line 324
    const-string v0, "failed to zip request body"

    invoke-direct {v1, v9, v5, v5, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    .line 328
    :cond_6
    iget v12, v1, Lcom/uqm/crashsight/proguard/m;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v13, 0x33e

    const-string v14, "des"

    if-ne v12, v13, :cond_7

    .line 329
    :try_start_3
    iget-object v12, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v12}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/uqm/crashsight/proguard/v;->a([BLjava/lang/String;)[B

    move-result-object v8

    .line 330
    invoke-interface {v10, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 332
    :cond_7
    const-string v12, "0"

    invoke-interface {v10, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-nez v8, :cond_8

    .line 336
    const-string v0, "failed to encrypt request body"

    invoke-direct {v1, v9, v5, v5, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    .line 1155
    :cond_8
    iget-object v12, v1, Lcom/uqm/crashsight/proguard/m;->i:Lcom/uqm/crashsight/proguard/l;

    iget v13, v1, Lcom/uqm/crashsight/proguard/m;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Lcom/uqm/crashsight/proguard/l;->a(IJ)V

    .line 343
    iget-object v12, v1, Lcom/uqm/crashsight/proguard/m;->m:Ljava/lang/String;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    add-int/lit8 v6, v14, 0x1

    .line 346
    iget v7, v1, Lcom/uqm/crashsight/proguard/m;->a:I

    if-ge v14, v7, :cond_20

    if-ne v6, v0, :cond_9

    .line 347
    iget-boolean v7, v1, Lcom/uqm/crashsight/proguard/m;->t:Z

    if-eqz v7, :cond_9

    .line 348
    const-string v7, "[Upload] Failed to TCP upload, try HTTPS immediately."

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v7, v14}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    if-le v6, v11, :cond_a

    .line 350
    const-string v7, "[Upload] Failed to upload last time, wait and try(%d) again."

    .line 351
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v14, v15, v5

    .line 350
    invoke-static {v7, v15}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 352
    iget v7, v1, Lcom/uqm/crashsight/proguard/m;->b:I

    int-to-long v14, v7

    invoke-static {v14, v15}, Lcom/uqm/crashsight/proguard/v;->b(J)V

    .line 353
    iget v7, v1, Lcom/uqm/crashsight/proguard/m;->a:I

    if-ne v6, v7, :cond_a

    .line 354
    const-string v7, "[Upload] Use the back-up url at the last time: %s"

    iget-object v12, v1, Lcom/uqm/crashsight/proguard/m;->n:Ljava/lang/String;

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v12, v14, v5

    invoke-static {v7, v14}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 357
    iget-object v12, v1, Lcom/uqm/crashsight/proguard/m;->n:Ljava/lang/String;

    .line 361
    :cond_a
    :goto_3
    const-string v7, "[Upload] Send %d bytes"

    array-length v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v14, v15, v5

    invoke-static {v7, v15}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 362
    invoke-static {v12}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 363
    const-string v7, "[Upload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    iget v14, v1, Lcom/uqm/crashsight/proguard/m;->d:I

    .line 364
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v12, v9, v5

    aput-object v14, v9, v11

    aput-object v15, v9, v0

    const/4 v14, 0x3

    aput-object v16, v9, v14

    .line 363
    invoke-static {v7, v9}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-ne v6, v11, :cond_b

    .line 366
    iget-boolean v7, v1, Lcom/uqm/crashsight/proguard/m;->t:Z

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    goto :goto_4

    :cond_b
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_c

    .line 368
    iget-object v9, v1, Lcom/uqm/crashsight/proguard/m;->h:Lcom/uqm/crashsight/proguard/i;

    iget-object v15, v1, Lcom/uqm/crashsight/proguard/m;->u:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;

    invoke-virtual {v9, v12, v15, v1, v10}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Lcom/uqm/crashsight/proguard/m;Ljava/util/Map;)[B

    move-result-object v9

    goto :goto_5

    .line 370
    :cond_c
    iget-boolean v9, v1, Lcom/uqm/crashsight/proguard/m;->t:Z

    if-eqz v9, :cond_d

    .line 371
    const-string v9, "tcpFailed"

    invoke-interface {v10, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_d
    iget-object v9, v1, Lcom/uqm/crashsight/proguard/m;->h:Lcom/uqm/crashsight/proguard/i;

    invoke-virtual {v9, v12, v8, v1, v10}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;[BLcom/uqm/crashsight/proguard/m;Ljava/util/Map;)[B

    move-result-object v9

    :goto_5
    if-nez v9, :cond_e

    .line 376
    const-string v7, "Failed to upload for no response!"

    invoke-static {v11, v7}, Lcom/uqm/crashsight/proguard/m;->a(ILjava/lang/String;)V

    move v14, v6

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    :goto_6
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 382
    :cond_e
    iget-object v15, v1, Lcom/uqm/crashsight/proguard/m;->h:Lcom/uqm/crashsight/proguard/i;

    iget-object v15, v15, Lcom/uqm/crashsight/proguard/i;->a:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 383
    const-string v0, "status of server is "

    if-nez v7, :cond_13

    if-eqz v15, :cond_11

    .line 1512
    :try_start_4
    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v17

    if-nez v17, :cond_f

    goto :goto_8

    .line 1516
    :cond_f
    invoke-interface {v15, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 1517
    const-string v0, "[Upload] Headers does not contain %s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v3, v7, v5

    invoke-static {v0, v7}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_9

    .line 403
    :cond_10
    :try_start_5
    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 402
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 404
    const-string v11, "[Upload] Status from server is %d (pid=%d | tid=%d)."

    .line 405
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 406
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v18, v14, v5

    const/16 v17, 0x1

    aput-object v19, v14, v17

    const/16 v16, 0x2

    aput-object v20, v14, v16

    .line 404
    invoke-static {v11, v14}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v13, :cond_13

    .line 417
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    .line 409
    :catchall_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "[Upload] Failed to upload for format of status header is invalid: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    .line 409
    invoke-static {v7, v0}, Lcom/uqm/crashsight/proguard/m;->a(ILjava/lang/String;)V

    :goto_7
    move v14, v6

    const/4 v0, 0x2

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_6

    .line 1513
    :cond_11
    :goto_8
    const-string v0, "[Upload] Headers is empty."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v0, v7}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 385
    :goto_9
    const-string v0, "[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d)."

    .line 387
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v7, v14, v5

    const/4 v7, 0x1

    aput-object v9, v14, v7

    .line 385
    invoke-static {v0, v14}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 388
    invoke-static {v7, v2}, Lcom/uqm/crashsight/proguard/m;->a(ILjava/lang/String;)V

    if-eqz v15, :cond_12

    .line 391
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 392
    const-string v9, "[key]: %s, [value]: %s"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .line 393
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v11, v15, v5

    const/4 v11, 0x1

    aput-object v7, v15, v11

    .line 392
    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v7, v9}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_a

    .line 396
    :cond_12
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 423
    :cond_13
    const-string v2, "[Upload] Received %d bytes"

    array-length v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v5

    invoke-static {v2, v6}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 425
    array-length v2, v9

    if-nez v2, :cond_15

    if-nez v7, :cond_14

    .line 428
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 429
    const-string v3, "[Upload] HTTP headers from server: key = %s, value = %s"

    .line 430
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v5

    const/4 v4, 0x1

    aput-object v2, v7, v4

    .line 429
    invoke-static {v3, v7}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_b

    .line 433
    :cond_14
    const-string v0, "response data from server is empty"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_15
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v9, :cond_16

    .line 439
    const-string v0, "failed to decrypt response from server"

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_16
    const/4 v2, 0x2

    .line 444
    invoke-static {v9, v2}, Lcom/uqm/crashsight/proguard/v;->b([BI)[B

    move-result-object v3

    if-eqz v3, :cond_17

    move-object v9, v3

    .line 449
    :cond_17
    invoke-static {v9}, Lcom/uqm/crashsight/proguard/h;->a([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v2

    if-nez v2, :cond_18

    .line 453
    const-string v0, "failed to decode response package"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_18
    if-eqz v7, :cond_19

    .line 460
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getStatus()Ljava/lang/String;

    move-result-object v3

    .line 461
    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    .line 468
    :cond_19
    const-string v0, "[Upload] Response cmd is: %d, length of sBuffer is: %d"

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 469
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    goto :goto_c

    :cond_1a
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v4

    :goto_c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v3, v7, v5

    const/4 v3, 0x1

    aput-object v4, v7, v3

    .line 468
    invoke-static {v0, v7}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 471
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/m;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v3, v1, Lcom/uqm/crashsight/proguard/m;->g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    if-nez v2, :cond_1b

    .line 2218
    const-string v0, "resp == null!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_d

    .line 2222
    :cond_1b
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getResult()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1c

    .line 2223
    const-string v0, "resp result error %d"

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getResult()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_d

    .line 2227
    :cond_1c
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getServerTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->l:J

    .line 2228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->m:J

    .line 2231
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result v0

    const/16 v4, 0x1fe

    if-ne v0, v4, :cond_1f

    .line 2232
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 2233
    const-string v0, "[Upload] Strategy data is null. Response cmd: %d"

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_d

    .line 2236
    :cond_1d
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 2239
    const-string v0, "[Upload] Failed to decode strategy from server. Response cmd: %d"

    .line 2240
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    .line 2239
    invoke-static {v0, v4}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 472
    :goto_d
    const-string v0, "failed to process response package"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    .line 2244
    :cond_1e
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v4

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getValueMapMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(Ljava/util/Map;)V

    .line 2246
    iget v4, v1, Lcom/uqm/crashsight/proguard/m;->d:I

    invoke-virtual {v3, v0, v4}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;I)V

    .line 2247
    invoke-virtual {v3, v0}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)V

    .line 477
    :cond_1f
    const-string v0, "successfully uploaded"

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    .line 484
    :cond_20
    const-string v0, "failed after many attempts"

    const/4 v2, 0x0

    invoke-direct {v1, v2, v5, v15, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    .line 275
    :cond_21
    :goto_e
    const-string v0, "illegal access error"

    const/4 v2, 0x0

    invoke-direct {v1, v2, v5, v5, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    .line 267
    :cond_22
    :goto_f
    const-string v0, "request package is empty!"

    const/4 v2, 0x0

    invoke-direct {v1, v2, v5, v5, v0}, Lcom/uqm/crashsight/proguard/m;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    .line 486
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    return-void
.end method
